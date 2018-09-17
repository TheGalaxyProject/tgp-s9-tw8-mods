.class public final Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;
.super Landroid/support/v17/leanback/widget/PresenterSwitcher;
.source "HorizontalHoverCardSwitcher.java"


# instance fields
.field mCardLeft:I

.field mCardRight:I

.field private mTmpOffsets:[I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpOffsets:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected insertView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onViewSelected(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    const/4 v0, 0x1

    :goto_2c
    if-nez v0, :cond_45

    iget v4, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v3, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_3f
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_43
    const/4 v0, 0x0

    goto :goto_2c

    :cond_45
    if-eqz v0, :cond_4e

    iget v4, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardLeft:I

    if-ge v4, v1, :cond_4e

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3f

    :cond_4e
    if-eqz v0, :cond_5a

    iget v4, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardRight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3f

    :cond_5a
    iget v4, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardLeft:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3f
.end method

.method public select(Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/view/View;Ljava/lang/Object;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpOffsets:[I

    invoke-virtual {p1, p2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getViewSelectedOffsets(Landroid/view/View;[I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpOffsets:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardLeft:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mTmpOffsets:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->mCardRight:I

    invoke-virtual {p0, p3}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->select(Ljava/lang/Object;)V

    return-void
.end method
