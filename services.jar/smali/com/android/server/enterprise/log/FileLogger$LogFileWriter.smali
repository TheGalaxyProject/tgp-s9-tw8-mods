.class Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
.super Landroid/os/AsyncTask;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogFileWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/concurrent/CountDownLatch;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/log/FileLogger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_10} :catch_8e

    :goto_10
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-wrap1(Lcom/android/server/enterprise/log/FileLogger;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/system/enterprise/logs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-wide v6, v5, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/FileLogger;->-wrap0(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_45

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_45
    new-instance v4, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;Ljava/io/File;)V

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v4, v4, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_5b
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get1(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_66} :catch_94

    :goto_66
    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4}, Lcom/android/server/enterprise/log/FileLogger;->-get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/FileLogger;->-set0(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/FileLogger;->-wrap2(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    :cond_7c
    if-eqz p1, :cond_8d

    aget-object v4, p1, v9

    if-eqz v4, :cond_8d

    aget-object v4, p1, v9

    instance-of v4, v4, Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_8d

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_8d
    return-object v8

    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_10

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_66
.end method
