.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
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

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-lt v3, v0, :cond_b

    return v1

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    goto :goto_18
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-lt v3, v0, :cond_b

    return v1

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    goto :goto_18
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
