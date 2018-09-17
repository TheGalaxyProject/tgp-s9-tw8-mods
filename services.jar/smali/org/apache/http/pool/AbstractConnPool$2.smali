.class Lorg/apache/http/pool/AbstractConnPool$2;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private volatile done:Z

.field private volatile entry:Lorg/apache/http/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field final synthetic val$callback:Lorg/apache/http/concurrent/FutureCallback;

.field final synthetic val$route:Ljava/lang/Object;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Lorg/apache/http/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    iput-object p3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->cancelled:Z

    iget-object v4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_d
    iget-object v4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v4}, Lorg/apache/http/pool/AbstractConnPool;->access$100(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2e

    iget-object v4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, p0

    monitor-enter p0

    :try_start_21
    iget-boolean v4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Z

    if-eqz v4, :cond_39

    :goto_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Z

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v3, :cond_3b

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_41

    return v2

    :catchall_2e
    move-exception v0

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_39
    move v2, v3

    goto :goto_25

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v3}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    goto :goto_2c

    :catchall_41
    move-exception v1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/pool/AbstractConnPool$2;->get()Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/http/pool/PoolEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/http/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;

    if-nez v1, :cond_2f

    move-object v0, p0

    monitor-enter p0

    :goto_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    # invokes: Lorg/apache/http/pool/AbstractConnPool;->getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lorg/apache/http/pool/PoolEntry;
    invoke-static/range {v1 .. v7}, Lorg/apache/http/pool/AbstractConnPool;->access$200(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v10

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->validateAfterInactivity:I
    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$300(Lorg/apache/http/pool/AbstractConnPool;)I

    move-result v1

    if-gtz v1, :cond_32

    :cond_1b
    iput-object v10, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Z

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;

    invoke-virtual {v1, v2}, Lorg/apache/http/pool/AbstractConnPool;->onLease(Lorg/apache/http/pool/PoolEntry;)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v1, :cond_6e

    :goto_2b
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_5b
    .catchall {:try_start_6 .. :try_end_2d} :catchall_69

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_69

    return-object v1

    :cond_2f
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;

    return-object v1

    :cond_32
    :try_start_32
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    # getter for: Lorg/apache/http/pool/AbstractConnPool;->validateAfterInactivity:I
    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$300(Lorg/apache/http/pool/AbstractConnPool;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_6c

    const/4 v1, 0x1

    :goto_47
    if-nez v1, :cond_1b

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-virtual {v1, v10}, Lorg/apache/http/pool/AbstractConnPool;->validate(Lorg/apache/http/pool/PoolEntry;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->close()V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Lorg/apache/http/pool/AbstractConnPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_5a} :catch_5b
    .catchall {:try_start_32 .. :try_end_5a} :catchall_69

    goto :goto_6

    :catch_5b
    move-exception v9

    const/4 v1, 0x1

    :try_start_5d
    iput-boolean v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Z

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v1, :cond_76

    :goto_63
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v9}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_69
    move-exception v8

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_69

    throw v8

    :cond_6c
    const/4 v1, 0x0

    goto :goto_47

    :cond_6e
    :try_start_6e
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entry:Lorg/apache/http/pool/PoolEntry;

    invoke-interface {v1, v2}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_75} :catch_5b
    .catchall {:try_start_6e .. :try_end_75} :catchall_69

    goto :goto_2b

    :cond_76
    :try_start_76
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, v9}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_69

    goto :goto_63
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Z

    return v0
.end method
