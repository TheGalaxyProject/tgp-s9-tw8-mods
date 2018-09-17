.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;


# instance fields
.field private final implicitLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string/jumbo v11, "HTTP message"

    invoke-static {p1, v11}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-nez v10, :cond_1c

    const-string/jumbo v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_65

    iget v11, p0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    int-to-long v12, v11

    return-wide v12

    :cond_1c
    :try_start_1c
    invoke-interface {v10}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_1f
    .catch Lorg/apache/http/ParseException; {:try_start_1c .. :try_end_1f} :catch_33

    move-result-object v1

    array-length v8, v1

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "identity"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4e

    if-gtz v8, :cond_51

    :cond_30
    const-wide/16 v12, -0x1

    return-wide v12

    :catch_33
    move-exception v9

    new-instance v11, Lorg/apache/http/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid Transfer-Encoding header value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_4e
    const-wide/16 v12, -0x1

    return-wide v12

    :cond_51
    add-int/lit8 v11, v8, -0x1

    aget-object v11, v1, v11

    invoke-interface {v11}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "chunked"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_30

    const-wide/16 v12, -0x2

    return-wide v12

    :cond_65
    const-wide/16 v2, -0x1

    const-string/jumbo v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    array-length v11, v5

    add-int/lit8 v6, v11, -0x1

    :goto_71
    if-gez v6, :cond_7d

    :goto_73
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gez v11, :cond_8c

    const/4 v11, 0x1

    :goto_7a
    if-nez v11, :cond_8e

    return-wide v2

    :cond_7d
    aget-object v4, v5, v6

    :try_start_7f
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_86} :catch_88

    move-result-wide v2

    goto :goto_73

    :catch_88
    move-exception v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_71

    :cond_8c
    const/4 v11, 0x0

    goto :goto_7a

    :cond_8e
    const-wide/16 v12, -0x1

    return-wide v12
.end method
