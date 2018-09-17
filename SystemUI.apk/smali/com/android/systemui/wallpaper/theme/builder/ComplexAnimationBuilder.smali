.class public Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
.super Ljava/lang/Object;
.source "ComplexAnimationBuilder.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

.field private mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    return-void
.end method

.method public addSprite(Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    return-void
.end method

.method public playAnimation()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->screenTurnedOn()V

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOn()V

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_12 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "ComplexAnimationBuilder"

    const-string/jumbo v2, "UnsupportedOperationException occured!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public stopAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->screenTurnedOff()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOff()V

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
