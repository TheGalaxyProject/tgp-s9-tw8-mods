.class public Lcom/samsung/android/scloud/oem/lib/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field private static bFileLogEnabled:Z

.field private static bLogEnabled:Z

.field static final formatter:Ljava/text/SimpleDateFormat;

.field static final logPath:Ljava/lang/String;

.field static mFile:Ljava/io/File;

.field static mWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PDMLogs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sCloudLib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string/jumbo v2, "MM.dd_HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    return-void

    :cond_57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    if-eqz p1, :cond_2b

    :goto_2
    if-nez p2, :cond_46

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SCLOUD_ERR-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SCLOUD_ERR-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Exception : "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_41

    const-string/jumbo v1, ""

    :goto_38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_41
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_46
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static declared-synchronized getLogWriter()Ljava/io/PrintWriter;
    .registers 12

    const-wide/32 v10, 0x500000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-class v6, Lcom/samsung/android/scloud/oem/lib/LOG;

    monitor-enter v6

    :try_start_8
    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-eqz v5, :cond_7e

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-gtz v5, :cond_132

    move v5, v3

    :goto_17
    if-nez v5, :cond_7a

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_10c

    move-result-wide v8

    cmp-long v5, v8, v10

    if-gtz v5, :cond_135

    :goto_23
    if-nez v3, :cond_7a

    :try_start_25
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create writer : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7a} :catch_138
    .catchall {:try_start_25 .. :try_end_7a} :catchall_10c

    :cond_7a
    :goto_7a
    :try_start_7a
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_10c

    monitor-exit v6

    return-object v3

    :cond_7e
    :try_start_7e
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_10c

    if-nez v3, :cond_7a

    :try_start_82
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10f

    :goto_8f
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create writer : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_e4} :catch_e5
    .catchall {:try_start_82 .. :try_end_e4} :catchall_10c

    goto :goto_7a

    :catch_e5
    move-exception v0

    :try_start_e6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_12c

    :goto_107
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_10a
    .catchall {:try_start_e6 .. :try_end_10a} :catchall_10c

    goto/16 :goto_7a

    :catchall_10c
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_10f
    :try_start_10f
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create dir : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12a} :catch_e5
    .catchall {:try_start_10f .. :try_end_12a} :catchall_10c

    goto/16 :goto_8f

    :cond_12c
    :try_start_12c
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_107

    :cond_132
    move v5, v4

    goto/16 :goto_17

    :cond_135
    move v3, v4

    goto/16 :goto_23

    :catch_138
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_15f

    :goto_15a
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    goto/16 :goto_7a

    :cond_15f
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_164
    .catchall {:try_start_12c .. :try_end_164} :catchall_10c

    goto :goto_15a
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static writeLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 11

    sget-boolean v3, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/LOG;->getLogWriter()Ljava/io/PrintWriter;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_57
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v2

    if-nez v2, :cond_13

    :goto_e
    :try_start_e
    monitor-exit v0

    goto :goto_4

    :catchall_10
    move-exception v3

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v3

    :cond_13
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    if-nez p2, :cond_7d

    :goto_53
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_56} :catch_57
    .catchall {:try_start_13 .. :try_end_56} :catchall_10

    goto :goto_e

    :catch_57
    move-exception v1

    :try_start_58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "write error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PDMLogs"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_81

    :goto_79
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_7c
    .catchall {:try_start_58 .. :try_end_7c} :catchall_10

    goto :goto_e

    :cond_7d
    :try_start_7d
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_57
    .catchall {:try_start_7d .. :try_end_80} :catchall_10

    goto :goto_53

    :cond_81
    :try_start_81
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_10

    goto :goto_79
.end method
