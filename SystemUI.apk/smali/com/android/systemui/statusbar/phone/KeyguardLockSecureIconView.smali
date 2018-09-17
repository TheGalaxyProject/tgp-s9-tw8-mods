.class public Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardLockSecureIconView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# static fields
.field private static final mSineInOut33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field private mAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

.field private mIconShadow:Lcom/android/systemui/widget/SystemUIImageView;

.field private mIsFaceIcon:Z

.field private mIsPlayingHideIconAnimaion:Z

.field private mPlayingShortcutAffordance:Z

.field private mTwinkleAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const v3, 0x3e2e147b    # 0.17f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v4, 0x2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-string/jumbo v0, "alpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_66

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v0, "alpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_6e

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_66
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_6e
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private cancelIconAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_22
    return-void
.end method

.method private startFaceIconAnimation(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_14
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconShadow:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method public resetHideIconAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mTwinkleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setAlpha(F)V

    :cond_25
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_e

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_e
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .registers 3

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method public showIcon(ZZZ)V
    .registers 8

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->cancelIconAnimation()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsFaceIcon:Z

    if-eq v2, p3, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->updateIcon()V

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsFaceIcon:Z

    :cond_f
    if-nez p1, :cond_16

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setVisibility(I)V

    :goto_15
    return-void

    :cond_16
    if-eqz p2, :cond_2f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    const-wide/16 v0, 0x15e

    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setVisibility(I)V

    goto :goto_15

    :cond_2f
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setVisibility(I)V

    goto :goto_15
.end method

.method public startDelayedShowAnimation()V
    .registers 8

    const-wide/16 v2, 0x96

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startFaceIconAnimation(J)V

    :cond_1e
    return-void
.end method

.method public startHideAnimation()V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIsPlayingHideIconAnimaion:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->cancelIconAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShortcutHintAnimation()V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public updateIcon()V
    .registers 5

    const v3, 0x7f0701ac

    const v2, 0x7f0701ab

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUIImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconShadow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUIImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconShadow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconShadow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    return-void
.end method
