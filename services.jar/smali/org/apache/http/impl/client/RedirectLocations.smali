.class public Lorg/apache/http/impl/client/RedirectLocations;
.super Ljava/util/AbstractList;
.source "RedirectLocations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final unique:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/net/URI;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/net/URI;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/net/URI;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/RedirectLocations;->get(I)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/net/URI;
    .registers 3

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/RedirectLocations;->remove(I)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/net/URI;
    .registers 5

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b
.end method

.method public remove(Ljava/net/URI;)Z
    .registers 6

    iget-object v3, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    return v2

    :cond_9
    iget-object v3, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v2, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Ljava/net/URI;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_26

    :goto_25
    return-object v0

    :cond_26
    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method