.class public Lcom/android/systemui/servicebox/utils/SecTransition;
.super Ljava/lang/Object;
.source "SecTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/utils/SecTransition$1;,
        Lcom/android/systemui/servicebox/utils/SecTransition$2;
    }
.end annotation


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private mAdditionalTag:Ljava/lang/String;

.field private mAnimationState:I

.field private mAnimations:Landroid/animation/AnimatorSet;

.field private mContainer:Landroid/view/ViewGroup;

.field private mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

.field private final mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mSourceRootViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceRootViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSubOptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionOption;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRootView:Landroid/view/View;

.field private mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mTransitionNameWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWithFade:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/utils/SecTransition;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/utils/SecTransition;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/utils/SecTransition;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/utils/SecTransition;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->buildAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/utils/SecTransition;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->removePreDrawListener()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V
    .registers 10

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    new-instance v3, Lcom/android/systemui/servicebox/utils/SecTransition$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/servicebox/utils/SecTransition$1;-><init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/servicebox/utils/SecTransition$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/servicebox/utils/SecTransition$2;-><init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean p4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_58

    return-void

    :cond_58
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_WIDTH:I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_HEIGHT:I

    iput-object p3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    if-nez v3, :cond_91

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_d0

    const/4 v1, 0x1

    :goto_8b
    invoke-static {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_91
    iget-boolean v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getTransitionType()I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_d2

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v4, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_d0
    const/4 v1, 0x0

    goto :goto_8b

    :cond_d2
    return-void
.end method

.method private addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionOption;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getStartDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasCustomInterpolator()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getCustomInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_32
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9

    :cond_3e
    return-void
.end method

.method private addFadeAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 12

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-nez p4, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_29

    invoke-virtual {p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    if-eqz p2, :cond_44

    invoke-virtual {p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_48

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_44
    invoke-direct {p0, v0, p4}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :array_48
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addGlobalAlphaAnimation(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    fill-array-data v5, :array_58

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9

    :cond_34
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    fill-array-data v5, :array_60

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_58
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_60
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 21

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p4, :cond_4

    const/4 v12, 0x2

    new-array v6, v12, [I

    const/4 v12, 0x2

    new-array v5, v12, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez p3, :cond_1d

    new-instance p3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    :cond_1d
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    float-to-int v12, v12

    const/4 v13, 0x0

    aput v12, v6, v13

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    float-to-int v12, v12

    const/4 v13, 0x1

    aput v12, v6, v13

    const/4 v12, 0x2

    new-array v11, v12, [I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x2

    new-array v3, v12, [I

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_13c

    const/4 v12, 0x0

    aget v12, v11, v12

    const/4 v13, 0x0

    aget v13, v6, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    aput v12, v3, v13

    :goto_4a
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_194

    const/4 v12, 0x1

    aget v12, v11, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aput v12, v3, v13

    :goto_5c
    const/4 v12, 0x2

    new-array v4, v12, [I

    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x0

    aget v13, v5, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    aput v12, v4, v13

    const/4 v12, 0x1

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aput v12, v4, v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->x:F

    const/4 v13, 0x0

    aget v13, v4, v13

    int-to-float v13, v13

    add-float v7, v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v12

    const/4 v13, 0x0

    aget v13, v3, v13

    int-to-float v13, v13

    sub-float v9, v12, v13

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->y:F

    const/4 v13, 0x1

    aget v13, v4, v13

    int-to-float v13, v13

    add-float v8, v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v12

    const/4 v13, 0x1

    aget v13, v3, v13

    int-to-float v13, v13

    sub-float v10, v12, v13

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v12

    if-nez v12, :cond_f4

    sget-object v12, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v7, v13, v14

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->x:F

    const/4 v15, 0x0

    aget v15, v4, v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/4 v15, 0x0

    aget v15, v3, v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    sget-object v12, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v8, v13, v14

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->y:F

    const/4 v15, 0x1

    aget v15, v4, v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v3, v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setY(F)V

    :cond_f4
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v12

    if-nez v12, :cond_134

    sget-object v12, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v9, v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v14

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setX(F)V

    sget-object v12, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v10, v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v14

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setY(F)V

    :cond_134
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_13c
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_168

    const/4 v12, 0x0

    aget v12, v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    const/4 v13, 0x0

    aget v13, v6, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    aput v12, v3, v13

    goto/16 :goto_4a

    :cond_168
    const/4 v12, 0x0

    aget v12, v11, v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    const/4 v13, 0x0

    aget v13, v6, v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    aput v12, v3, v13

    goto/16 :goto_4a

    :cond_194
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_1c0

    const/4 v12, 0x1

    aget v12, v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v6, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aput v12, v3, v13

    goto/16 :goto_5c

    :cond_1c0
    const/4 v12, 0x1

    aget v12, v11, v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v15

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aput v12, v3, v13

    goto/16 :goto_5c
.end method

.method private addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 22

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    if-eqz p4, :cond_4

    if-nez p3, :cond_12

    new-instance p3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    sub-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    sub-float v12, v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float v9, v13, v14

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->w:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_11b

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_57
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->h:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_123

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_62
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-nez v13, :cond_12b

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_69
    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-nez v13, :cond_131

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_70
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_137

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    :goto_84
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v13

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_171

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    :goto_98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v13

    if-nez v13, :cond_d1

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v7, v14, v15

    mul-float v15, v7, v5

    const/16 v16, 0x1

    aput v15, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    mul-float v15, v8, v6

    const/16 v16, 0x1

    aput v15, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v13

    if-nez v13, :cond_113

    mul-float v13, v10, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleX(F)V

    mul-float v13, v11, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleY(F)V

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    mul-float v15, v10, v3

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v10, v14, v15

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    mul-float v15, v11, v4

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v11, v14, v15

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_11b
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->w:F

    div-float v5, v12, v13

    goto/16 :goto_57

    :cond_123
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->h:F

    div-float v6, v9, v13

    goto/16 :goto_62

    :cond_12b
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v3, v13, v5

    goto/16 :goto_69

    :cond_131
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v4, v13, v6

    goto/16 :goto_70

    :cond_137
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_155

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_84

    :cond_155
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_84

    :cond_171
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v13

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_18f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_98

    :cond_18f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_98
.end method

.method private buildAnimations()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->addGlobalAlphaAnimation(Landroid/view/View;)V

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->consumeRemainedTransitionName(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, "SecTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty animations. Ignore transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_45
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_57
    const/4 v1, 0x1

    return v1
.end method

.method private consumeRemainedTransitionName(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8

    :cond_26
    return-void
.end method

.method private getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;
    .registers 12

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    :cond_7
    return-object v6

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-nez v4, :cond_11

    return-object v6

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_22

    :cond_21
    return-object v6

    :cond_22
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    aget v4, v3, v7

    neg-int v4, v4

    aget v5, v3, v8

    neg-int v5, v5

    iget v6, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_WIDTH:I

    aget v7, v3, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_HEIGHT:I

    aget v8, v3, v8

    sub-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4d

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    :cond_4d
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_55

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    :cond_55
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5d

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    :cond_5d
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_65

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_65
    return-object v0
.end method

.method private handleTransitionFinished(Z)V
    .registers 7

    const-string/jumbo v2, "SecTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handle transition finished. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_22

    :cond_34
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const v3, 0x7f0a0257

    if-eq v2, v3, :cond_45

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    :cond_45
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return-void
.end method

.method private hasFadeInSubOptions()Z
    .registers 4

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    return v2

    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    return v2

    :cond_22
    return v3
.end method

.method private isReadyToPreDraw()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    if-nez v0, :cond_22

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target view is null. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_22
    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    if-eqz v0, :cond_43

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animation already started. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_43
    const/4 v0, 0x1

    return v0
.end method

.method private matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_23

    invoke-interface {p1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_23
    instance-of v5, p2, Landroid/view/ViewGroup;

    if-nez v5, :cond_28

    return-void

    :cond_28
    move-object v5, p2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_3f

    move-object v5, p2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3f
    return-void
.end method

.method private removePreDrawListener()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Root view observer removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target view observer removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void

    :cond_6f
    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Root view observer cannot removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_8c
    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target view observer cannot removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method private searchTransitionName(Landroid/view/View;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v5, p1}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_26

    return-void

    :cond_26
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_3d

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3d
    return-void
.end method

.method private setAnimations(Landroid/view/View;Landroid/view/View;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_3b

    :cond_15
    const-string/jumbo v4, "SecTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAnimations() targetView is invalid ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const/4 v3, 0x0

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    :goto_42
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_4f
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getClipFace()I

    move-result v4

    invoke-direct {p0, p1, v8, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getClipFace()I

    move-result v4

    invoke-direct {p0, p2, v8, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getSourceViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/servicebox/utils/SecTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getTargetViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/systemui/servicebox/utils/SecTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->needToTransition()Z

    move-result v4

    if-nez v4, :cond_a6

    return-void

    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    :cond_9b
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-static {v4, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->combineOptions(Lcom/android/systemui/servicebox/utils/SecTransitionOption;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    goto :goto_4f

    :cond_a6
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isMoveEnabled()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_af
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isScaleEnabled()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_b8
    if-eqz v1, :cond_bd

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->addFadeAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_bd
    return-void
.end method

.method private setClip(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    return-void
.end method

.method private setClip(Landroid/view/View;ZI)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/servicebox/utils/SecTransition;->getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    return-void

    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;
    .registers 7

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    return-object v0

    :cond_9
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    :goto_10
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_32

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    :goto_17
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-object p2

    :cond_1b
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_10

    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_10

    :cond_32
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_17

    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_17
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addOption(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public addOption(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->removePreDrawListener()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void

    :cond_33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_2d
.end method

.method public go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->isReadyToPreDraw()Z

    move-result v2

    if-nez v2, :cond_14

    return-void

    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->hasFadeInSubOptions()Z

    move-result v2

    if-nez v2, :cond_38

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    :cond_38
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string/jumbo v2, "SecTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Predraw listener added. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_73
    invoke-direct {p0, v5}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_6b
.end method

.method public isPlaying()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setAdditionalTag(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    return-void
.end method

.method public setClipOnAll(Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    return-void
.end method

.method public setClipOnChildren(Landroid/view/View;Z)V
    .registers 6

    if-eqz p1, :cond_8

    instance-of v2, p1, Landroid/view/ViewGroup;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_23

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    return-void
.end method

.method public setClipOnParents(Landroid/view/View;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    return-void
.end method
