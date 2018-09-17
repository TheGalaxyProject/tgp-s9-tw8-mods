.class final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v1, :cond_b

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    monitor-exit p0

    iget v1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return v1

    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
