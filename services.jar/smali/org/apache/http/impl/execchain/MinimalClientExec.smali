.class public Lorg/apache/http/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v2, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "Apache-HttpClient"

    const-string/jumbo v5, "org.apache.http.client"

    invoke-static {v4, v5, v3}, Lorg/apache/http/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iput-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object p3, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iput-object p4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    return-void
.end method

.method static rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    :goto_11
    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_6

    :catch_15
    move-exception v0

    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_3a
    invoke-static {v1, v2, v3}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_3d
    .catch Ljava/net/URISyntaxException; {:try_start_3a .. :try_end_3d} :catch_15

    move-result-object v1

    goto :goto_11
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string/jumbo v26, "HTTP route"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v26, "HTTP request"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v26, "HTTP context"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/apache/http/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v8

    if-nez p4, :cond_112

    :goto_39
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v7

    :try_start_3d
    invoke-virtual {v7}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v24

    if-gtz v24, :cond_12b

    const-wide/16 v26, 0x0

    :goto_45
    sget-object v28, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v28

    invoke-interface {v8, v0, v1, v2}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_4e} :catch_132
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3d .. :try_end_4e} :catch_149

    move-result-object v19

    new-instance v21, Lorg/apache/http/impl/execchain/ConnectionHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    if-nez p4, :cond_15f

    :goto_6a
    :try_start_6a
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v26

    if-eqz v26, :cond_194

    :goto_70
    invoke-virtual {v7}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v24

    if-gez v24, :cond_1c7

    :goto_76
    const/16 v23, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v26, v0

    if-nez v26, :cond_1d5

    :cond_84
    :goto_84
    if-eqz v23, :cond_1fc

    :goto_86
    const-string/jumbo v26, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v26, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v26, "http.connection"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v26, "http.route"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v26

    if-nez v26, :cond_202

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V

    :goto_fb
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-nez v9, :cond_220

    :cond_101
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    new-instance v26, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_111
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6a .. :try_end_111} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_6a .. :try_end_111} :catch_18f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_111} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_111} :catch_1d0

    return-object v26

    :cond_112
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v26

    if-nez v26, :cond_11f

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto/16 :goto_39

    :cond_11f
    invoke-interface {v8}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    new-instance v26, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v27, "Request aborted"

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_12b
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_45

    :catch_132
    move-exception v17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->interrupt()V

    new-instance v26, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v27, "Request aborted"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :catch_149
    move-exception v14

    invoke-virtual {v14}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_15d

    :goto_150
    new-instance v26, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v27, "Request execution failed"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :cond_15d
    move-object v6, v14

    goto :goto_150

    :cond_15f
    :try_start_15f
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v26

    if-nez v26, :cond_183

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V
    :try_end_16c
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_15f .. :try_end_16c} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_15f .. :try_end_16c} :catch_18f
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_16c} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_16c} :catch_1d0

    goto/16 :goto_6a

    :catch_16e
    move-exception v16

    new-instance v18, Ljava/io/InterruptedIOException;

    const-string/jumbo v26, "Connection has been shut down"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v18

    :cond_183
    :try_start_183
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->close()V

    new-instance v26, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v27, "Request aborted"

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_18f
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_183 .. :try_end_18f} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_183 .. :try_end_18f} :catch_18f
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_18f} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_183 .. :try_end_18f} :catch_1d0

    :catch_18f
    move-exception v15

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v15

    :cond_194
    :try_start_194
    invoke-virtual {v7}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v26, v0

    if-gtz v24, :cond_1a2

    const/16 v24, 0x0

    :cond_1a2
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v24

    move-object/from16 v4, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1c0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_194 .. :try_end_1c0} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_194 .. :try_end_1c0} :catch_18f
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1c0} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_194 .. :try_end_1c0} :catch_1d0

    goto/16 :goto_70

    :catch_1c2
    move-exception v12

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v12

    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V
    :try_end_1ce
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1c7 .. :try_end_1ce} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_1c7 .. :try_end_1ce} :catch_18f
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ce} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_1ce} :catch_1d0

    goto/16 :goto_76

    :catch_1d0
    move-exception v13

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v13

    :cond_1d5
    :try_start_1d5
    check-cast v20, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->isAbsolute()Z

    move-result v26

    if-eqz v26, :cond_84

    new-instance v23, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getPort()I

    move-result v27

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_84

    :cond_1fc
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v23

    goto/16 :goto_86

    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v10

    sget-object v26, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v11, v1}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    goto/16 :goto_fb

    :cond_220
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v26

    if-eqz v26, :cond_101

    new-instance v26, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_231
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1d5 .. :try_end_231} :catch_16e
    .catch Lorg/apache/http/HttpException; {:try_start_1d5 .. :try_end_231} :catch_18f
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_231} :catch_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_1d5 .. :try_end_231} :catch_1d0

    return-object v26
.end method
