.class public Lorg/apache/http/concurrent/BasicFuture;
.super Ljava/lang/Object;
.source "BasicFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lorg/apache/http/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Lorg/apache/http/concurrent/Cancellable;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private volatile completed:Z

.field private volatile ex:Ljava/lang/Exception;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/concurrent/FutureCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/concurrent/BasicFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    monitor-enter p0

    :try_start_4
    iget-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v2, :cond_17

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_19

    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v2, :cond_1c

    :goto_16
    return v3

    :cond_17
    :try_start_17
    monitor-exit p0

    return v4

    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v2}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    goto :goto_16
.end method

.method public completed(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    monitor-enter p0

    :try_start_4
    iget-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v2, :cond_1b

    :goto_15
    return v4

    :cond_16
    :try_start_16
    monitor-exit p0

    return v3

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v2, p1}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public failed(Ljava/lang/Exception;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    monitor-enter p0

    :try_start_4
    iget-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v2, :cond_1b

    :goto_15
    return v4

    :cond_16
    :try_start_16
    monitor-exit p0

    return v3

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    iget-object v2, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v2, p1}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_1

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v6, "Time unit"

    invoke-static {p3, v6}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2d

    const/4 v6, 0x1

    :goto_12
    if-nez v6, :cond_2f

    const-wide/16 v2, 0x0

    :goto_16
    move-wide v4, v0

    iget-boolean v6, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v6, :cond_34

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_3a

    const/4 v6, 0x1

    :goto_22
    if-nez v6, :cond_3c

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2d
    const/4 v6, 0x0

    goto :goto_12

    :cond_2f
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_16

    :cond_34
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2a

    move-result-object v6

    monitor-exit p0

    return-object v6

    :cond_3a
    const/4 v6, 0x0

    goto :goto_22

    :cond_3c
    :try_start_3c
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-boolean v6, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v6, :cond_59

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long v4, v0, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5f

    const/4 v6, 0x1

    :goto_51
    if-nez v6, :cond_3c

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6

    :cond_59
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_2a

    move-result-object v6

    monitor-exit p0

    return-object v6

    :cond_5f
    const/4 v6, 0x0

    goto :goto_51
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    return v0
.end method
