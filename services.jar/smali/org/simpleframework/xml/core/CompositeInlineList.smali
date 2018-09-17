.class Lorg/simpleframework/xml/core/CompositeInlineList;
.super Ljava/lang/Object;
.source "CompositeInlineList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final name:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v3, p1, p2}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v1

    :cond_18
    new-instance v3, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string/jumbo v5, "Entry %s does not match %s for %s"

    invoke-direct {v3, v5, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_8
    if-nez p1, :cond_b

    return-object p2

    :cond_b
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_17
    invoke-interface {v0, v2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    :cond_1c
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_d

    return-object v3

    :cond_d
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_f
    if-nez p1, :cond_13

    const/4 v4, 0x1

    return v4

    :cond_13
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v4, p1, v2}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_f

    :cond_20
    return v5
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_d
    invoke-virtual {p0, v1, v0}, Lorg/simpleframework/xml/core/CompositeInlineList;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    return-void

    :cond_11
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    goto :goto_d
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    return-void

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    invoke-virtual {v4, p1, v3, v1, v5}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_5

    :cond_2a
    new-instance v4, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "Entry %s does not match %s for %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method
