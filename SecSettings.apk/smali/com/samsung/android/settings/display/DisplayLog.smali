.class public Lcom/samsung/android/settings/display/DisplayLog;
.super Ljava/lang/Object;
.source "DisplayLog.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;


# instance fields
.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "DisplayLog"

    sput-object v0, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayLog;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/DisplayLog;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/DisplayLog;->sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayLog;->sdfNow:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "----------------------StartLogs-------------------------"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private flush()V
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v6, "/data/log/DisplaySettingLogs.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_6c
    .catchall {:try_start_2 .. :try_end_a} :catchall_57

    :try_start_a
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_6e
    .catchall {:try_start_a .. :try_end_18} :catchall_65

    :try_start_18
    iget-object v7, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_3b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_68

    :try_start_1b
    iget-object v6, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_38

    :try_start_2a
    monitor-exit v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_3b
    .catchall {:try_start_2a .. :try_end_30} :catchall_68

    if-eqz v5, :cond_35

    :try_start_32
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_50

    :cond_35
    :goto_35
    move-object v4, v5

    move-object v2, v3

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v6

    :try_start_39
    monitor-exit v7

    throw v6
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_68

    :catch_3b
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_3e
    :try_start_3e
    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_57

    if-eqz v4, :cond_37

    :try_start_45
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_37

    :catch_49
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :catch_50
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catchall_57
    move-exception v6

    :goto_58
    if-eqz v4, :cond_5d

    :try_start_5a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    :cond_5d
    :goto_5d
    throw v6

    :catch_5e
    move-exception v0

    sget-object v7, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    :catchall_65
    move-exception v6

    move-object v2, v3

    goto :goto_58

    :catchall_68
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_58

    :catch_6c
    move-exception v1

    goto :goto_3e

    :catch_6e
    move-exception v1

    move-object v2, v3

    goto :goto_3e
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/display/DisplayLog;->sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/DisplayLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayLog;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4

    :try_start_15
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_50

    monitor-exit v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/DisplayLog;->flush()V

    return-void

    :catchall_50
    move-exception v3

    monitor-exit v4

    throw v3
.end method
