.class public Lorg/apache/http/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "BackoffStrategyExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final backoffManager:Lorg/apache/http/client/BackoffManager;

.field private final connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ConnectionBackoffStrategy;Lorg/apache/http/client/BackoffManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Connection backoff strategy"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Backoff manager"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    iput-object p2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    iput-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string/jumbo v2, "HTTP route"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "HTTP request"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "HTTP context"

    invoke-static {p3, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_13
    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_27

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {v2, v1}, Lorg/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {v2, p1}, Lorg/apache/http/client/BackoffManager;->probe(Lorg/apache/http/conn/routing/HttpRoute;)V

    :goto_26
    return-object v1

    :catch_27
    move-exception v0

    const/4 v2, 0x0

    if-nez v2, :cond_45

    :goto_2b
    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {v2, v0}, Lorg/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_49

    :goto_33
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_4f

    instance-of v2, v0, Lorg/apache/http/HttpException;

    if-nez v2, :cond_52

    instance-of v2, v0, Ljava/io/IOException;

    if-nez v2, :cond_55

    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_45
    invoke-interface {v1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    goto :goto_2b

    :cond_49
    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {v2, p1}, Lorg/apache/http/client/BackoffManager;->backOff(Lorg/apache/http/conn/routing/HttpRoute;)V

    goto :goto_33

    :cond_4f
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_52
    check-cast v0, Lorg/apache/http/HttpException;

    throw v0

    :cond_55
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_58
    iget-object v2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {v2, p1}, Lorg/apache/http/client/BackoffManager;->backOff(Lorg/apache/http/conn/routing/HttpRoute;)V

    goto :goto_26
.end method
