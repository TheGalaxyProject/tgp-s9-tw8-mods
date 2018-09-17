.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;
.super Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
.source "SeslDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;-><init>()V

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    return-void
.end method

.method private closeOtherDrawer()V
    .registers 4

    const/4 v0, 0x3

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-eq v2, v0, :cond_e

    :goto_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x5

    goto :goto_5

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_d
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_9
.end method

.method public onEdgeDragStarted(II)V
    .registers 6

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_17

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_e
.end method

.method public onEdgeLock(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    sub-int v4, v2, p2

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v1, v4, v5

    :goto_1a
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_25

    const/4 v3, 0x4

    :cond_25
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_2e
    add-int v4, v0, p2

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v1, v4, v5

    goto :goto_1a
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 13

    const/4 v4, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v6, 0x3

    invoke-virtual {v5, p1, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v3

    cmpg-float v5, p2, v7

    if-gez v5, :cond_23

    move v1, v4

    :cond_23
    if-nez v1, :cond_2d

    cmpl-float v4, p2, v7

    if-nez v4, :cond_51

    cmpl-float v4, v2, v8

    if-lez v4, :cond_51

    :cond_2d
    sub-int v1, v3, v0

    :goto_2f
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_3e
    cmpl-float v5, p2, v7

    if-lez v5, :cond_4d

    :goto_42
    if-nez v4, :cond_4c

    cmpl-float v4, p2, v7

    if-nez v4, :cond_4f

    cmpl-float v4, v2, v8

    if-lez v4, :cond_4f

    :cond_4c
    :goto_4c
    goto :goto_2f

    :cond_4d
    move v4, v1

    goto :goto_42

    :cond_4f
    neg-int v1, v0

    goto :goto_4c

    :cond_51
    move v1, v3

    goto :goto_2f
.end method

.method peekDrawer()V
    .registers 10

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v3

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-eq v7, v8, :cond_22

    move v1, v5

    :goto_e
    if-nez v1, :cond_24

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v5

    sub-int v0, v5, v3

    :goto_1f
    if-nez v4, :cond_35

    :cond_21
    :goto_21
    return-void

    :cond_22
    move v1, v6

    goto :goto_e

    :cond_24
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2f

    :goto_2c
    add-int v0, v5, v3

    goto :goto_1f

    :cond_2f
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_2c

    :cond_35
    if-nez v1, :cond_66

    :cond_37
    if-nez v1, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_21

    :goto_3f
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v4, v0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    iput-boolean v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->cancelChildViewTouch()V

    goto :goto_21

    :cond_66
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v0, :cond_37

    goto :goto_3f
.end method

.method public removeCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method
