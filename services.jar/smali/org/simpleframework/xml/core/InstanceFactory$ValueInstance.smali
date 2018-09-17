.class Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/InstanceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueInstance"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/core/InstanceFactory;

.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/InstanceFactory;Lorg/simpleframework/xml/strategy/Value;)V
    .registers 4

    iput-object p1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->this$0:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->type:Ljava/lang/Class;

    iput-object p2, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->this$0:Lorg/simpleframework/xml/core/InstanceFactory;

    iget-object v2, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/core/InstanceFactory;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-nez v1, :cond_1c

    :goto_14
    return-object v0

    :cond_15
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1c
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ValueInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_4
.end method
