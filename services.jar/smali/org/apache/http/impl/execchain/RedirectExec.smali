.class public Lorg/apache/http/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "HTTP route planner"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "HTTP redirect strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    iput-object p2, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    iput-object p3, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string/jumbo v23, "HTTP route"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v23, "HTTP request"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v23, "HTTP context"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_4d

    :goto_24
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v23

    if-gtz v23, :cond_51

    const/16 v13, 0x32

    :goto_30
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    const/16 v18, 0x0

    :goto_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v8, v7, v1, v2}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v20

    :try_start_46
    invoke-virtual {v6}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_da
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_102
    .catch Lorg/apache/http/HttpException; {:try_start_46 .. :try_end_49} :catch_118

    move-result v23

    if-nez v23, :cond_56

    :cond_4c
    return-object v20

    :cond_4d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_51
    invoke-virtual {v6}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v13

    goto :goto_30

    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v23

    if-eqz v23, :cond_4c

    move/from16 v0, v18

    if-ge v0, v13, :cond_df

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_107

    :goto_94
    invoke-static/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v7

    instance-of v0, v7, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v23, v0

    if-nez v23, :cond_124

    :goto_9e
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v14

    if-eqz v14, :cond_12e

    invoke-virtual {v8}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14c

    :cond_b4
    :goto_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-interface {v0, v14, v7, v1}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v23

    if-nez v23, :cond_185

    :goto_ce
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V
    :try_end_d8
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_d8} :catch_da
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_d8} :catch_102
    .catch Lorg/apache/http/HttpException; {:try_start_56 .. :try_end_d8} :catch_118

    goto/16 :goto_36

    :catch_da
    move-exception v10

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v10

    :cond_df
    :try_start_df
    new-instance v23, Lorg/apache/http/client/RedirectException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Maximum redirects ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ") exceeded"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_102
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_102} :catch_da
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_102} :catch_102
    .catch Lorg/apache/http/HttpException; {:try_start_df .. :try_end_102} :catch_118

    :catch_102
    move-exception v9

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v9

    :cond_107
    :try_start_107
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setHeaders([Lorg/apache/http/Header;)V
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_116} :catch_da
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_116} :catch_102
    .catch Lorg/apache/http/HttpException; {:try_start_107 .. :try_end_116} :catch_118

    goto/16 :goto_94

    :catch_118
    move-exception v11

    :try_start_119
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_120} :catch_1b5
    .catchall {:try_start_119 .. :try_end_120} :catchall_1cb

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    :goto_123
    throw v11

    :cond_124
    :try_start_124
    move-object v0, v7

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto/16 :goto_9e

    :cond_12e
    new-instance v23, Lorg/apache/http/ProtocolException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Redirect URI does not specify a valid host name: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_14c
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v21

    if-nez v21, :cond_175

    :goto_152
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v16

    if-eqz v16, :cond_b4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-eqz v5, :cond_b4

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v23

    if-eqz v23, :cond_b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Resetting proxy auth state"

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/auth/AuthState;->reset()V

    goto/16 :goto_b4

    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Resetting target auth state"

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/auth/AuthState;->reset()V

    goto :goto_152

    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Redirecting to \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\' via "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1b3
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_1b3} :catch_da
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_1b3} :catch_102
    .catch Lorg/apache/http/HttpException; {:try_start_124 .. :try_end_1b3} :catch_118

    goto/16 :goto_ce

    :catch_1b5
    move-exception v12

    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    const-string/jumbo v24, "I/O error while releasing connection"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1c6
    .catchall {:try_start_1b6 .. :try_end_1c6} :catchall_1cb

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    goto/16 :goto_123

    :catchall_1cb
    move-exception v4

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v4
.end method
