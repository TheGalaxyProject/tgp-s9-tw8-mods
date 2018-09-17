.class public Lcom/android/systemui/infinity/fractal/FlickDetector;
.super Ljava/lang/Object;
.source "FlickDetector.java"


# instance fields
.field private mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

.field private mVelocityTracingStartTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracingStartTime:J

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_1d

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2b

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1d

    :cond_2b
    if-ne v0, v6, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-wide v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracingStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x50

    cmp-long v4, v4, v6

    if-lez v4, :cond_58

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3fb33333    # 1.4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_58

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->onFlick(F)V

    :cond_58
    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1d
.end method

.method public setAnimator(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/FlickDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    return-void
.end method
