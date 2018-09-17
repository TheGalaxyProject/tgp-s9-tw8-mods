.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;
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
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
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
            "<+TK;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_a
    if-gez v0, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1d
    move v3, v4

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

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
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    const/4 v1, 0x1

    return v1
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

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v1, 0x0

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

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
