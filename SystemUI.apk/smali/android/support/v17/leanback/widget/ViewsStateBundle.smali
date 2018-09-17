.class Landroid/support/v17/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private mChildStates:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLimitNumber:I

.field private mSavePolicy:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyPolicyChanges()V
    .registers 5

    const v3, 0x7fffffff

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    if-gtz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    if-eq v0, v1, :cond_2a

    :cond_21
    new-instance v0, Landroid/support/v4/util/LruCache;

    iget v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    :cond_35
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v0

    if-eq v0, v3, :cond_2a

    :cond_41
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v3}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    goto :goto_2a

    :cond_49
    iput-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    goto :goto_2a
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_9
    return-void
.end method

.method public final loadFromBundle(Landroid/os/Bundle;)V
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_29

    if-eqz p1, :cond_29

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2}, Landroid/support/v4/util/LruCache;->evictAll()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_29
    return-void
.end method

.method public final loadView(Landroid/view/View;I)V
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_15

    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_15
    return-void
.end method

.method public remove(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public final saveAsBundle()Landroid/os/Bundle;
    .registers 7

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->size()I

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    return-object v5

    :cond_e
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_21

    :cond_3d
    return-object v0
.end method

.method public final saveOffscreenView(Landroid/view/View;I)V
    .registers 4

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    goto :goto_5

    :pswitch_a
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .registers 7

    iget v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    if-eqz v2, :cond_1a

    invoke-static {p3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez p1, :cond_17

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1a
    return-object p1
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v2, :cond_15

    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public final setSavePolicy(I)V
    .registers 2

    iput p1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->applyPolicyChanges()V

    return-void
.end method
