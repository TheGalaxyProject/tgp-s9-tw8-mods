.class Lorg/apache/http/impl/client/HttpRequestTaskCallable;
.super Ljava/lang/Object;
.source "HttpRequestTaskCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private ended:J

.field private final httpclient:Lorg/apache/http/client/HttpClient;

.field private final metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final scheduled:J

.field private started:J


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/concurrent/FutureCallback;Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lorg/apache/http/client/ResponseHandler",
            "<TV;>;",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TV;>;",
            "Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->scheduled:J

    iput-wide v2, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    iput-wide v2, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->ended:J

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->httpclient:Lorg/apache/http/client/HttpClient;

    iput-object p4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->context:Lorg/apache/http/protocol/HttpContext;

    iput-object p5, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    iput-object p6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_28

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "call has been cancelled for request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_28
    :try_start_28
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_9f

    :try_start_37
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    iget-object v7, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->ended:J

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getSuccessfulConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5f} :catch_88
    .catchall {:try_start_37 .. :try_end_5f} :catchall_9f

    if-nez v4, :cond_82

    :goto_61
    move-object v0, v3

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getRequests()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getTasks()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-object v3

    :cond_82
    :try_start_82
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v4, v3}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88
    .catchall {:try_start_82 .. :try_end_87} :catchall_9f

    goto :goto_61

    :catch_88
    move-exception v2

    :try_start_89
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getFailedConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->ended:J

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v4, :cond_c0

    :goto_9e
    throw v2
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v1

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getRequests()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getTasks()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->metrics:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v1

    :cond_c0
    :try_start_c0
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v4, v2}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_9f

    goto :goto_9e
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v0}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    goto :goto_a
.end method

.method public getEnded()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->ended:J

    return-wide v0
.end method

.method public getScheduled()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->scheduled:J

    return-wide v0
.end method

.method public getStarted()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/HttpRequestTaskCallable;->started:J

    return-wide v0
.end method
