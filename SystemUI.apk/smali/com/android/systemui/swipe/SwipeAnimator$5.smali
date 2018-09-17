.class Lcom/android/systemui/swipe/SwipeAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$focus:Z

.field final synthetic val$leftShortcut:Landroid/widget/ImageView;

.field final synthetic val$rightShortcut:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 6

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    iput-object p3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->isAnimationCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 7

    const/16 v3, 0xbf

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->isAnimationCanceled:Z

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v1, :cond_47

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v1, :cond_4a

    move v1, v2

    :goto_1a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v4, :cond_2c

    move v3, v2

    :cond_2c
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2f
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v3, :cond_43

    const/4 v2, 0x4

    :cond_43
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_47
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_4a
    move v1, v3

    goto :goto_1a
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    const/16 v3, 0xbf

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->isAnimationCanceled:Z

    if-eqz v1, :cond_8

    return-void

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v1, :cond_49

    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v1, :cond_4c

    move v1, v2

    :goto_1c
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v4, :cond_2e

    move v3, v2

    :cond_2e
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_31
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v3, :cond_45

    const/4 v2, 0x4

    :cond_45
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_49
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_4c
    move v1, v3

    goto :goto_1c
.end method
