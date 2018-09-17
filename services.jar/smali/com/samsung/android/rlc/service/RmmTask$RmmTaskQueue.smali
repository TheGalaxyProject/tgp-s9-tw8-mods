.class public Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RmmTaskQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;
    }
.end annotation


# instance fields
.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/rlc/service/RmmTask;

.field private thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->this$0:Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    :try_start_a
    iput-object p3, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, p2}, Lcom/samsung/android/rlc/service/RmmTask;->-set0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_21

    :cond_d
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[RmmTask] Thread is null"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-direct {v1, p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;-><init>(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)V

    iput-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->start()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_4c

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_47
    .catchall {:try_start_21 .. :try_end_26} :catchall_4c

    :goto_26
    :try_start_26
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[RmmTask] queue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_4c

    monitor-exit p0

    return-void

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_26

    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
