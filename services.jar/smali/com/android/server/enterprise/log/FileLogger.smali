.class public Lcom/android/server/enterprise/log/FileLogger;
.super Lcom/android/server/enterprise/log/Logger;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;,
        Lcom/android/server/enterprise/log/FileLogger$LogBuffer;,
        Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    }
.end annotation


# static fields
.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final LIMIT_FOR_LOGS_IN_DAYS:I = 0x5

.field private static LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String; = null

.field private static final LOG_FILES_DIR:Ljava/lang/String; = "/data/system/enterprise/logs"

.field private static final MSG_QUEUE_LOG:I = 0x1

.field private static final MSG_WRITE_LOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FileLogger"

.field private static final mCalendar:Ljava/util/Calendar;


# instance fields
.field private final consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

.field private mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

.field private final producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    return-object p1
.end method

.method static synthetic -wrap0(J)J
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->getDayBoundaryTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/log/FileLogger;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/log/FileLogger;->cleanupLogs()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, " | "

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/Logger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogBuffer;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LogFileWriterThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;-><init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    return-void
.end method

.method private cleanupLogs()V
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/system/enterprise/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    new-instance v3, Lcom/android/server/enterprise/log/FileLogger$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/log/FileLogger$1;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1b

    return-void

    :cond_1b
    const/4 v3, 0x0

    array-length v4, v2

    :goto_1d
    if-ge v3, v4, :cond_27

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_27
    return-void
.end method

.method private static final getDayBoundaryTimestamp(J)J
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/32 v0, 0x15180

    rem-long v0, p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1d

    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_32
    return-void
.end method


# virtual methods
.method public copyLogs(Ljava/io/FileOutputStream;)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/system/enterprise/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger;->flush()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    new-instance v3, Lcom/android/server/enterprise/log/FileLogger$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/log/FileLogger$2;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v5, v2

    move v3, v4

    :goto_24
    if-ge v3, v5, :cond_33

    aget-object v1, v2, v3

    new-instance v6, Lcom/android/server/enterprise/log/FileLogger$3;

    invoke-direct {v6, p0, v1, p1}, Lcom/android/server/enterprise/log/FileLogger$3;-><init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V

    invoke-static {v6, v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_33
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :try_start_13
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_21
    .catchall {:try_start_13 .. :try_end_16} :catchall_26

    :goto_16
    :try_start_16
    const-string/jumbo v3, "FileLogger"

    const-string/jumbo v4, "flush complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_26

    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_16

    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/enterprise/log/Log;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
