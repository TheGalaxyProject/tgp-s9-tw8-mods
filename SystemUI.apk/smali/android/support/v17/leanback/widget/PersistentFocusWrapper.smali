.class Landroid/support/v17/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    return-void
.end method

.method private shouldPersistFocusFromDirection(I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x21

    if-eq p1, v2, :cond_e

    const/16 v2, 0x82

    if-ne p1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez v2, :cond_1d

    const/16 v2, 0x11

    if-eq p1, v2, :cond_e

    const/16 v2, 0x42

    if-eq p1, v2, :cond_e

    move v0, v1

    goto :goto_e

    :cond_1d
    move v0, v1

    goto :goto_e
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->shouldPersistFocusFromDirection(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method getGrandChildCount()I
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_9
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v1, :cond_8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    check-cast p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    iget v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput v1, v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_4

    :cond_13
    if-nez v0, :cond_19

    const/4 v1, -0x1

    :goto_16
    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    return-void

    :cond_19
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_16
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_23

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    return v1

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method
