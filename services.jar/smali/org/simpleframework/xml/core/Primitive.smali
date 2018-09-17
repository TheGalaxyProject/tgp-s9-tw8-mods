.class Lorg/simpleframework/xml/core/Primitive;
.super Ljava/lang/Object;
.source "Primitive.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final empty:Ljava/lang/String;

.field private final expect:Ljava/lang/Class;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->readElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private readTemplate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/core/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_c
    const/4 v1, 0x1

    return v1

    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    if-nez v1, :cond_11

    :cond_b
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/Primitive;->readTemplate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    return-object v1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "Can not read existing %s for %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    :goto_9
    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->validateElement(Lorg/simpleframework/xml/stream/InputNode;)Z

    goto :goto_9
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    goto :goto_8
.end method
