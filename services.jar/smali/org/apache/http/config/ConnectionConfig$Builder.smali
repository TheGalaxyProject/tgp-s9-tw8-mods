.class public Lorg/apache/http/config/ConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/ConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bufferSize:I

.field private charset:Ljava/nio/charset/Charset;

.field private fragmentSizeHint:I

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private messageConstraints:Lorg/apache/http/config/MessageConstraints;

.field private unmappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/ConnectionConfig;
    .registers 8

    iget-object v3, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_1b

    :goto_4
    iget v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->bufferSize:I

    if-gtz v0, :cond_27

    const/16 v1, 0x2000

    :goto_a
    iget v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    if-gez v0, :cond_2a

    move v2, v1

    :goto_f
    new-instance v0, Lorg/apache/http/config/ConnectionConfig;

    iget-object v4, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v5, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v6, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/config/ConnectionConfig;-><init>(IILjava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;Lorg/apache/http/config/MessageConstraints;)V

    return-object v0

    :cond_1b
    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz v0, :cond_22

    :cond_1f
    sget-object v3, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_4

    :cond_22
    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    if-nez v0, :cond_1f

    goto :goto_4

    :cond_27
    iget v1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->bufferSize:I

    goto :goto_a

    :cond_2a
    iget v2, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    goto :goto_f
.end method

.method public setBufferSize(I)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 2

    iput p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->bufferSize:I

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 2

    iput-object p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setFragmentSizeHint(I)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 2

    iput p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    return-object p0
.end method

.method public setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 3

    iput-object p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    goto :goto_4
.end method

.method public setMessageConstraints(Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 2

    iput-object p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    return-object p0
.end method

.method public setUnmappableInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/http/config/ConnectionConfig$Builder;
    .registers 3

    iput-object p1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    goto :goto_4
.end method
