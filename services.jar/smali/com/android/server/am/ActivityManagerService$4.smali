.class Lcom/android/server/am/ActivityManagerService$4;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v9

    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->init()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_5a

    monitor-exit v9

    :goto_14
    :try_start_14
    monitor-enter p0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_60
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_4e

    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/32 v10, 0xfffffff

    add-long/2addr v8, v10

    sub-long v2, v8, v6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    sub-long v4, v8, v6

    cmp-long v8, v4, v2

    if-gez v8, :cond_36

    move-wide v2, v4

    :cond_36
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_47

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService$4;->wait(J)V
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_5d

    :cond_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_48} :catch_60
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_48} :catch_4e

    :goto_48
    :try_start_48
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_14

    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Unexpected exception collecting process stats"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catchall_5a
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_5d
    move-exception v8

    :try_start_5e
    monitor-exit p0

    throw v8
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_60} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_60} :catch_4e

    :catch_60
    move-exception v1

    goto :goto_48
.end method
