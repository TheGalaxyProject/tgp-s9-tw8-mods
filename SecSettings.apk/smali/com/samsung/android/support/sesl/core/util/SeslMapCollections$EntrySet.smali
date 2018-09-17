.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v4

    if-ne v2, v4, :cond_2e

    :goto_19
    return v3

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_2e
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x0

    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_24

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_25

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_24
    return v5

    :cond_25
    return v5
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_a
    if-gez v0, :cond_d

    return v2

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move v6, v4

    :goto_21
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_27
    xor-int/2addr v4, v6

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2c
    move v6, v5

    goto :goto_21

    :cond_2e
    move v4, v5

    goto :goto_27
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
