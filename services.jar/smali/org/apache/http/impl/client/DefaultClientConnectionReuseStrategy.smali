.class public Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;
.super Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.source "DefaultClientConnectionReuseStrategy.java"


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v4, "http.request"

    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    if-nez v1, :cond_12

    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    return v4

    :cond_12
    const-string/jumbo v4, "Connection"

    invoke-interface {v1, v4}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v4, v0

    if-eqz v4, :cond_d

    new-instance v2, Lorg/apache/http/message/BasicTokenIterator;

    new-instance v4, Lorg/apache/http/message/BasicHeaderIterator;

    invoke-direct {v4, v0, v6}, Lorg/apache/http/message/BasicHeaderIterator;-><init>([Lorg/apache/http/Header;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    :cond_26
    invoke-interface {v2}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    return v5
.end method
