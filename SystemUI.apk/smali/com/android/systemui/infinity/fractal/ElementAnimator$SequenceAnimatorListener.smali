.class Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;
.super Ljava/lang/Object;
.source "ElementAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/fractal/ElementAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SequenceAnimatorListener"
.end annotation


# instance fields
.field mSequence:J

.field final synthetic this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;J)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 6

    iget-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get0(Lcom/android/systemui/infinity/fractal/ElementAnimator;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set1(Lcom/android/systemui/infinity/fractal/ElementAnimator;I)I

    :cond_12
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get0(Lcom/android/systemui/infinity/fractal/ElementAnimator;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set1(Lcom/android/systemui/infinity/fractal/ElementAnimator;I)I

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Lcom/android/systemui/infinity/fractal/ElementData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set0(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
