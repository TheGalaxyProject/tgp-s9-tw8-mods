.class Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;
.super Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 11

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int v0, v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2a
    return v2

    :cond_2b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    iget v6, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    sub-int v0, v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2a
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_b

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_b
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->onPanelDragged(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 14

    const/4 v4, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v6

    if-nez v6, :cond_45

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v1, v6, v7

    cmpl-float v6, p2, v8

    if-lez v6, :cond_7a

    :goto_21
    if-nez v4, :cond_2f

    cmpl-float v4, p2, v8

    if-nez v4, :cond_34

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_34

    :cond_2f
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int/2addr v1, v4

    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidate()V

    return-void

    :cond_45
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v6

    iget v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    cmpg-float v6, p2, v8

    if-gez v6, :cond_78

    :goto_53
    if-nez v4, :cond_61

    cmpl-float v4, p2, v8

    if-nez v4, :cond_66

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_66

    :cond_61
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int/2addr v3, v4

    :cond_66
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int v1, v4, v0

    goto :goto_34

    :cond_78
    move v4, v5

    goto :goto_53

    :cond_7a
    move v4, v5

    goto :goto_21
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    return v0

    :cond_10
    return v1
.end method
