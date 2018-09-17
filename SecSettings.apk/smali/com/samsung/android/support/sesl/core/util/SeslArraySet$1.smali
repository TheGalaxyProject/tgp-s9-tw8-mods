.class Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;
.super Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.source "SeslArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
