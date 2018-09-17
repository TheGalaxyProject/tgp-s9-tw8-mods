.class public Lorg/apache/http/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "URIBuilder.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private query:Ljava/lang/String;

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/http/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method private buildString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-nez v1, :cond_36

    :goto_9
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v1, :cond_42

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    if-nez v1, :cond_48

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    if-nez v1, :cond_55

    :cond_15
    :goto_15
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    if-nez v1, :cond_b3

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-nez v1, :cond_be

    :goto_1d
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    if-nez v1, :cond_cd

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v1, :cond_db

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    if-nez v1, :cond_ed

    :goto_29
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    if-nez v1, :cond_ff

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    if-nez v1, :cond_10d

    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_42
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_48
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_55
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    if-nez v1, :cond_81

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    if-nez v1, :cond_8e

    :goto_63
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9f

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_70
    iget v1, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    if-ltz v1, :cond_15

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_81
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_8e
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_9f
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_b3
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    :cond_be
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    :cond_cd
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_db
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/http/client/utils/URIBuilder;->encodeUrlForm(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_ed
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/http/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_ff
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_31

    :cond_10d
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/http/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_31
.end method

.method private digestURI(Ljava/net/URI;)V
    .registers 4

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_59

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_46
    invoke-direct {p0, v1, v0}, Lorg/apache/http/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-void

    :cond_59
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_46
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_6
    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method private encodeUric(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_6
    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method private encodeUrlForm(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_6
    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method private encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_b

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_6
    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    move-object v1, p0

    if-eqz p0, :cond_17

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1b

    :cond_a
    const/4 v2, 0x1

    if-gt v0, v2, :cond_26

    :goto_d
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :goto_16
    return-object v1

    :cond_17
    const-string/jumbo v2, "/"

    return-object v2

    :cond_1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_26
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method private parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_16

    :goto_5
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_5
.end method

.method public addParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_11

    :goto_5
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_5
.end method

.method public build()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lorg/apache/http/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clearParameters()Lorg/apache/http/client/utils/URIBuilder;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsolute()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isOpaque()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public removeQuery()Lorg/apache/http/client/utils/URIBuilder;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 2

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setCustomQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 8

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v2, :cond_1e

    :goto_5
    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_d
    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0

    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_5

    :cond_26
    iget-object v2, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2c
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_a
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_a
.end method

.method public varargs setParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :goto_a
    move-object v0, p1

    array-length v2, p1

    const/4 v1, 0x0

    :goto_d
    if-lt v1, v2, :cond_1e

    iput-object v5, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0

    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_a

    :cond_1e
    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    :goto_3
    iput p1, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0

    :cond_a
    const/4 p1, -0x1

    goto :goto_3
.end method

.method public setQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_14

    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0

    :cond_14
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    goto :goto_7
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 2

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
