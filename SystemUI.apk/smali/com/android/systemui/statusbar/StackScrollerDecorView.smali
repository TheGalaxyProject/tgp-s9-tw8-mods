.class public abstract Lcom/android/systemui/statusbar/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field private mAnimating:Z

.field protected mContent:Landroid/view/View;

.field private mIsVisible:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/StackScrollerDecorView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private animateText(ZLjava/lang/Runnable;)V
    .registers 9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-eq p1, v2, :cond_33

    if-eqz p1, :cond_2e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    if-eqz p1, :cond_30

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x104

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;-><init>(Lcom/android/systemui/statusbar/StackScrollerDecorView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const/4 v0, 0x0

    goto :goto_8

    :cond_30
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_c

    :cond_33
    if-eqz p2, :cond_2d

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2d
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method protected abstract findContentView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setInvisible()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performVisibilityAnimation(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public performVisibilityAnimation(ZLjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setInvisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    return-void
.end method
