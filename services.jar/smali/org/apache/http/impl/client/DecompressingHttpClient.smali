.class public Lorg/apache/http/impl/client/DecompressingHttpClient;
.super Ljava/lang/Object;
.source "DecompressingHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final acceptEncodingInterceptor:Lorg/apache/http/HttpRequestInterceptor;

.field private final backend:Lorg/apache/http/client/HttpClient;

.field private final contentEncodingInterceptor:Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/DecompressingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 4

    new-instance v0, Lorg/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAcceptEncoding;-><init>()V

    new-instance v1, Lorg/apache/http/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/impl/client/DecompressingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpRequestInterceptor;Lorg/apache/http/HttpResponseInterceptor;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpRequestInterceptor;Lorg/apache/http/HttpResponseInterceptor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    iput-object p3, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lorg/apache/http/HttpResponseInterceptor;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    :try_start_4
    invoke-interface {p3, v3}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    move-result-object v0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_f

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_e

    :catchall_13
    move-exception v1

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_1b

    :goto_1a
    throw v1

    :cond_1b
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_1a
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DecompressingHttpClient;->getHttpHost(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DecompressingHttpClient;->getHttpHost(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    if-nez p3, :cond_30

    :try_start_2
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    :goto_7
    instance-of v7, p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v7, :cond_32

    new-instance v6, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v6, p2}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    :goto_10
    iget-object v7, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    invoke-interface {v7, v6, v4}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    iget-object v7, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, p1, v6, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1a
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_1a} :catch_56

    move-result-object v5

    :try_start_1b
    iget-object v7, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lorg/apache/http/HttpResponseInterceptor;

    invoke-interface {v7, v5, v4}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v8, "http.client.response.uncompressed"

    invoke-interface {v4, v8}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lorg/apache/http/HttpException; {:try_start_1b .. :try_end_2c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_2c} :catch_66
    .catch Lorg/apache/http/HttpException; {:try_start_1b .. :try_end_2c} :catch_56

    move-result v7

    if-nez v7, :cond_3a

    :goto_2f
    return-object v5

    :cond_30
    move-object v4, p3

    goto :goto_7

    :cond_32
    :try_start_32
    new-instance v6, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v6, p2}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_39
    .catch Lorg/apache/http/HttpException; {:try_start_32 .. :try_end_39} :catch_56

    goto :goto_10

    :cond_3a
    :try_start_3a
    const-string/jumbo v7, "Content-Length"

    invoke-interface {v5, v7}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string/jumbo v7, "Content-Encoding"

    invoke-interface {v5, v7}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string/jumbo v7, "Content-MD5"

    invoke-interface {v5, v7}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/apache/http/HttpException; {:try_start_3a .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_4c} :catch_66
    .catch Lorg/apache/http/HttpException; {:try_start_3a .. :try_end_4c} :catch_56

    goto :goto_2f

    :catch_4d
    move-exception v3

    :try_start_4e
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    throw v3
    :try_end_56
    .catch Lorg/apache/http/HttpException; {:try_start_4e .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    new-instance v7, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v7, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_5d
    move-exception v1

    :try_start_5e
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    throw v1

    :catch_66
    move-exception v2

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    throw v2
    :try_end_6f
    .catch Lorg/apache/http/HttpException; {:try_start_5e .. :try_end_6f} :catch_56
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DecompressingHttpClient;->getHttpHost(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DecompressingHttpClient;->getHttpHost(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method getHttpHost(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .registers 4

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v1

    return-object v1
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/DecompressingHttpClient;->backend:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
