.class Landroid/support/v7/widget/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ChildHelper$Bucket;,
        Landroid/support/v7/widget/ChildHelper$Callback;
    }
.end annotation


# instance fields
.field final mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

.field final mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ChildHelper$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    new-instance v0, Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    return-void
.end method

.method private getOffset(I)I
    .registers 8

    const/4 v5, -0x1

    if-gez p1, :cond_4

    return v5

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v4}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_b
    if-ge v2, v1, :cond_27

    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    sub-int v4, v2, v3

    sub-int v0, p1, v4

    if-nez v0, :cond_25

    :goto_19
    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    return v2

    :cond_25
    add-int/2addr v2, v0

    goto :goto_b

    :cond_27
    return v5
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .registers 6

    if-gez p2, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    :goto_8
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_12

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->addView(Landroid/view/View;I)V

    return-void

    :cond_18
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ChildHelper;->getOffset(I)I

    move-result v0

    goto :goto_8
.end method

.method addView(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 7

    if-gez p2, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    :goto_8
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p4, :cond_12

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/ChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_18
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ChildHelper;->getOffset(I)I

    move-result v0

    goto :goto_8
.end method

.method detachViewFromParent(I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->getOffset(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->detachViewFromParent(I)V

    return-void
.end method

.method findHiddenNonRemovedView(I)Landroid/view/View;
    .registers 7

    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_31

    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2e

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_31
    const/4 v4, 0x0

    return-object v4
.end method

.method getChildAt(I)Landroid/view/View;
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->getOffset(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method getChildCount()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getUnfilteredChildCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v0}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    return v0
.end method

.method hide(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_22

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    return-void
.end method

.method indexOfChild(Landroid/view/View;)I
    .registers 5

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method isHidden(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeAllViewsUnfiltered()V
    .registers 4

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->reset()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_24

    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1}, Landroid/support/v7/widget/ChildHelper$Callback;->removeAllViews()V

    return-void
.end method

.method removeView(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_14
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->removeViewAt(I)V

    return-void
.end method

.method removeViewAt(I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->getOffset(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v1}, Landroid/support/v7/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_18
    iget-object v2, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->removeViewAt(I)V

    return-void
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v1

    return v2

    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    move-result v1

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ChildHelper$Callback;->removeViewAt(I)V

    return v2

    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unhide(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mCallback:Landroid/support/v7/widget/ChildHelper$Callback;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_22

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper;->mBucket:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    return-void
.end method
