.class public final Lorg/apache/http/HttpVersion;
.super Lorg/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/http/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/apache/http/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const-string/jumbo v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, Lorg/apache/http/HttpVersion;->major:I

    if-eq p1, v0, :cond_f

    :cond_5
    if-eq p1, v1, :cond_14

    :cond_7
    if-eqz p1, :cond_1e

    :cond_9
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    return-object v0

    :cond_f
    iget v0, p0, Lorg/apache/http/HttpVersion;->minor:I

    if-ne p2, v0, :cond_5

    return-object p0

    :cond_14
    if-eqz p2, :cond_1b

    if-ne p2, v1, :cond_7

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-object v0

    :cond_1b
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    return-object v0

    :cond_1e
    const/16 v0, 0x9

    if-ne p2, v0, :cond_9

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    return-object v0
.end method
