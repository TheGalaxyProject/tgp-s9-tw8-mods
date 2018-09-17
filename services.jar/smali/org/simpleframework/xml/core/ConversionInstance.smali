.class Lorg/simpleframework/xml/core/ConversionInstance;
.super Ljava/lang/Object;
.source "ConversionInstance.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final convert:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/ConversionInstance;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_18
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ConversionInstance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConversionInstance;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_4
.end method
