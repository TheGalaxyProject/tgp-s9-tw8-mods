.class public final Lorg/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/http/conn/scheme/SchemeSocketFactory;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Scheme name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p2, :cond_31

    :cond_d
    move v0, v2

    :goto_e
    const-string/jumbo v3, "Port is invalid"

    invoke-static {v0, v3}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    const-string/jumbo v0, "Socket factory"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    iput p2, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    instance-of v0, p3, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;

    if-nez v0, :cond_38

    instance-of v0, p3, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    if-nez v0, :cond_3d

    iput-boolean v2, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    iput-object p3, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    :goto_30
    return-void

    :cond_31
    const v0, 0xffff

    if-gt p2, v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_38
    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    iput-object p3, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    goto :goto_30

    :cond_3d
    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;

    check-cast p3, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v0, p3}, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;-><init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    goto :goto_30
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Scheme name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Socket factory"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p3, :cond_32

    :cond_13
    move v0, v2

    :goto_14
    const-string/jumbo v3, "Port is invalid"

    invoke-static {v0, v3}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    instance-of v0, p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-nez v0, :cond_39

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {v0, p2}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    iput-boolean v2, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    :goto_2f
    iput p3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    return-void

    :cond_32
    const v0, 0xffff

    if-gt p3, v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_39
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor;

    check-cast p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {v0, p2}, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    goto :goto_2f
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_9

    instance-of v3, p1, Lorg/apache/http/conn/scheme/Scheme;

    if-nez v3, :cond_a

    return v2

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;

    iget-object v3, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    :goto_17
    move v1, v2

    :cond_18
    return v1

    :cond_19
    iget v3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    iget v4, v0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    if-ne v3, v4, :cond_17

    iget-boolean v3, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    iget-boolean v4, v0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    if-eq v3, v4, :cond_18

    goto :goto_17
.end method

.method public final getDefaultPort()I
    .registers 2

    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    instance-of v0, v0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    if-nez v0, :cond_1b

    new-instance v0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-direct {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V

    return-object v0

    :cond_12
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    check-cast v0, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->getFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v1, Lorg/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    const/16 v1, 0x11

    iget v2, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .registers 2

    if-lez p1, :cond_3

    :goto_2
    return p1

    :cond_3
    iget p1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    goto :goto_4
.end method
