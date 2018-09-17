.class public Lorg/apache/http/client/methods/HttpRequestWrapper;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "HttpRequestWrapper.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/client/methods/HttpRequestWrapper$1;,
        Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private final original:Lorg/apache/http/HttpRequest;

.field private requestLine:Lorg/apache/http/RequestLine;

.field private final target:Lorg/apache/http/HttpHost;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    iput-object p2, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->target:Lorg/apache/http/HttpHost;

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    :goto_2f
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setHeaders([Lorg/apache/http/Header;)V

    return-void

    :cond_37
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    goto :goto_2f
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpRequestWrapper$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;-><init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    return-void
.end method

.method public static wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lorg/apache/http/client/methods/HttpRequestWrapper;
    .registers 3

    const-string/jumbo v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v0, :cond_10

    new-instance v0, Lorg/apache/http/client/methods/HttpRequestWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/HttpRequestWrapper;-><init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    return-object v0

    :cond_10
    new-instance v0, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;Lorg/apache/http/HttpHost;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpRequest;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    goto :goto_4
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    goto :goto_a
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .registers 5

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->requestLine:Lorg/apache/http/RequestLine;

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->requestLine:Lorg/apache/http/RequestLine;

    return-object v1

    :cond_7
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    if-nez v1, :cond_28

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_2f

    :cond_17
    const-string/jumbo v0, "/"

    :goto_1a
    new-instance v1, Lorg/apache/http/message/BasicRequestLine;

    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    iput-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->requestLine:Lorg/apache/http/RequestLine;

    goto :goto_4

    :cond_28
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1a
.end method

.method public getTarget()Lorg/apache/http/HttpHost;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->target:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->requestLine:Lorg/apache/http/RequestLine;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->requestLine:Lorg/apache/http/RequestLine;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
