.class Lorg/simpleframework/xml/core/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "entry"


# instance fields
.field private attribute:Z

.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private entry:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private keyType:Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementMap;

.field private value:Ljava/lang/String;

.field private valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->attribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    return-void
.end method

.method private getDependent(I)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->getDependents()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    if-lt v1, p1, :cond_f

    array-length v1, v0

    if-eqz v1, :cond_12

    aget-object v1, v0, p1

    return-object v1

    :cond_f
    const-class v1, Ljava/lang/Object;

    return-object v1

    :cond_12
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    return-object v0

    :cond_12
    const-string/jumbo v0, "entry"

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    goto :goto_c
.end method

.method public getKey()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    return-object v0

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    return-object v0

    :cond_13
    iput-object v1, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    goto :goto_d
.end method

.method public getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getKeyType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/simpleframework/xml/core/CompositeKey;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/CompositeKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    :cond_10
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveKey;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/PrimitiveKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method protected getKeyType()Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    if-eqz v0, :cond_c

    :cond_4
    :goto_4
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    goto :goto_4
.end method

.method public getValue()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    return-object v0

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    return-object v0

    :cond_13
    iput-object v1, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    goto :goto_d
.end method

.method public getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getValueType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/simpleframework/xml/core/CompositeValue;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/CompositeValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    :cond_10
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveValue;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method protected getValueType()Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    if-eqz v0, :cond_c

    :cond_4
    :goto_4
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->valueType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    goto :goto_4
.end method

.method public isAttribute()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    return v0
.end method

.method public isInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%s on %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
