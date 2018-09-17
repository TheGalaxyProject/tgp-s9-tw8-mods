.class public final Lorg/apache/http/impl/io/EmptyInputStream;
.super Ljava/io/InputStream;
.source "EmptyInputStream.java"


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/io/EmptyInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/impl/io/EmptyInputStream;

    invoke-direct {v0}, Lorg/apache/http/impl/io/EmptyInputStream;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/EmptyInputStream;->INSTANCE:Lorg/apache/http/impl/io/EmptyInputStream;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public skip(J)J
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method
