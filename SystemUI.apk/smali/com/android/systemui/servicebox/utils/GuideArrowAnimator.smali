.class public Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;
.super Ljava/lang/Object;
.source "GuideArrowAnimator.java"


# static fields
.field private static sIsLoadCompleted:Z

.field private static sIsShowEnabled:Z


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mIsLeftArrow:Z

.field private mRes:Landroid/content/res/Resources;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    invoke-virtual {p0, p4}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->init(I)V

    return-void
.end method

.method public static finishGuideArrow(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    sput-boolean v2, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_showing_guide_arrow"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private getFadeInAnimator(FF)Landroid/animation/Animator;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v6, [F

    aput p1, v4, v7

    aput p2, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_3a

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutAnimator(FF)Landroid/animation/Animator;
    .registers 13

    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    new-array v4, v5, [F

    aput p1, v4, v6

    aput p2, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_38

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_38
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static needToPlayGuideArrow(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    if-eqz v2, :cond_9

    sget-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    return v0

    :cond_9
    sput-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsLoadCompleted:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "servicebox_showing_guide_arrow"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    :goto_18
    sput-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    sget-boolean v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    return v0

    :cond_1d
    move v0, v1

    goto :goto_18
.end method


# virtual methods
.method public init(I)V
    .registers 12

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f07059e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f07059f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0705a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v6, :cond_7f

    :goto_34
    int-to-float v4, v0

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mIsLeftArrow:Z

    if-eqz v6, :cond_84

    int-to-float v6, v1

    sub-float v2, v4, v6

    :goto_3c
    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_45

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_45
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/Animator;

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->getFadeInAnimator(FF)Landroid/animation/Animator;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->getFadeOutAnimator(FF)Landroid/animation/Animator;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    :cond_7f
    sub-int v6, p1, v0

    sub-int v0, v6, v5

    goto :goto_34

    :cond_84
    int-to-float v6, v1

    add-float v2, v4, v6

    goto :goto_3c
.end method

.method public start()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_12
    sget-boolean v1, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :try_start_1d
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_2a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1d .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public updateBottomMargin(Landroid/content/Context;Z)V
    .registers 7

    sget-boolean v2, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->sIsShowEnabled:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    if-nez v2, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_26

    const v2, 0x7f0705a0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_26
    const v2, 0x7f0705a3

    goto :goto_12
.end method
