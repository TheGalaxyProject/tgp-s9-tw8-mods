.class public Lcom/android/systemui/classifier/FalsingLog;
.super Ljava/lang/Object;
.source "FalsingLog.java"


# static fields
.field public static final ENABLED:Z

.field private static final LOGCAT:Z

.field private static final MAX_SIZE:I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingLog;


# instance fields
.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private final mLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "debug.falsing_log"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    const-string/jumbo v0, "debug.falsing_logcat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    const-string/jumbo v0, "debug.falsing_log_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    sget v1, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-class v3, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v3

    :try_start_3
    const-string/jumbo v2, "FALSING LOG:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-nez v2, :cond_18

    const-string/jumbo v2, "Disabled, to enable: setprop debug.falsing_log 1"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_49

    monitor-exit v3

    return-void

    :cond_18
    :try_start_18
    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-eqz v2, :cond_26

    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_26
    const-string/jumbo v2, "<empty>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_49

    monitor-exit v3

    return-void

    :cond_31
    :try_start_31
    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_49

    goto :goto_39

    :catchall_49
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    monitor-exit v3

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string/jumbo v0, "E"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string/jumbo v0, "I"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-class v2, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_6b

    if-nez v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-nez v1, :cond_14

    new-instance v1, Lcom/android/systemui/classifier/FalsingLog;

    invoke-direct {v1}, Lcom/android/systemui/classifier/FalsingLog;-><init>()V

    sput-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    :cond_14
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    sget v3, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    if-lt v1, v3, :cond_27

    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v3, v3, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_6b

    monitor-exit v2

    return-void

    :catchall_6b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static wLogcat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "W"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 14

    const-class v7, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v7

    :try_start_3
    sget-boolean v6, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b2

    if-nez v6, :cond_9

    monitor-exit v7

    return-void

    :cond_9
    :try_start_9
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, ""

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_bc

    if-eqz v0, :cond_bc

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "falsing-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_b2

    const/4 v4, 0x0

    :try_start_4f
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_a2
    .catchall {:try_start_4f .. :try_end_54} :catchall_b5

    :try_start_54
    invoke-static {v5}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Log written to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_71} :catch_c9
    .catchall {:try_start_54 .. :try_end_71} :catchall_c6

    move-result-object v3

    if-eqz v5, :cond_77

    :try_start_74
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_77
    :goto_77
    const-string/jumbo v6, "FalsingLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_74 .. :try_end_a0} :catchall_b2

    monitor-exit v7

    return-void

    :catch_a2
    move-exception v1

    :goto_a3
    :try_start_a3
    const-string/jumbo v6, "FalsingLog"

    const-string/jumbo v8, "Unable to write falsing log"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b5

    if-eqz v4, :cond_77

    :try_start_ae
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_77

    :catchall_b2
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_b5
    move-exception v6

    :goto_b6
    if-eqz v4, :cond_bb

    :try_start_b8
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_bb
    throw v6

    :cond_bc
    const-string/jumbo v6, "FalsingLog"

    const-string/jumbo v8, "Unable to write log, build must be debuggable."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_b2

    goto :goto_77

    :catchall_c6
    move-exception v6

    move-object v4, v5

    goto :goto_b6

    :catch_c9
    move-exception v1

    move-object v4, v5

    goto :goto_a3
.end method
