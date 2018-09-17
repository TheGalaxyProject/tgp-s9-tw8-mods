.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$1;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_STEP_FOR_PAC_V3:I = 0x4

.field private static final FORCE_1STEP_DELTA_TIME:F = 0.016f

.field private static final MANUAL_BRIGHTNESS_STEP_FOR_PAC_V3:I = 0xa

.field private static final MAX_BRIGHTNESS_BEFORE_HBM_FOR_PAC_V3:I = 0x639c

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mDecreasing:Z

.field private mDynamicAmountForAutoBrightness:I

.field private mDynamicAmountForManualBrightness:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTarget:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/RampAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/RampAnimator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mDecreasing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForAutoBrightness:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/RampAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForManualBrightness:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/RampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/RampAnimator;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/RampAnimator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/RampAnimator;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/RampAnimator;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/RampAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForAutoBrightness:I

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v2, :cond_2e

    if-lez p1, :cond_c

    mul-int/lit8 p1, p1, 0x64

    :cond_c
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ge p1, v2, :cond_5e

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    const/16 v5, 0x639c

    if-gt v2, v5, :cond_5e

    move v2, v3

    :goto_17
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mDecreasing:Z

    const-string/jumbo v2, "sys.display.manualsteps"

    const/16 v5, 0xa

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForManualBrightness:F

    :cond_2e
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_34

    if-gtz p2, :cond_61

    :cond_34
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v2, :cond_3c

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_60

    :cond_3c
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v5, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v5, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_54

    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_54
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v2}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_5d
    return v3

    :cond_5e
    move v2, v4

    goto :goto_17

    :cond_60
    return v4

    :cond_61
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_69

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-le p2, v2, :cond_8b

    :cond_69
    :goto_69
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    :cond_6b
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_a0

    const/4 v0, 0x1

    :goto_70
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_8a

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_8a

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_8a
    return v0

    :cond_8b
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_95

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v2, v4, :cond_69

    :cond_95
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, v4, :cond_6b

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_6b

    goto :goto_69

    :cond_a0
    const/4 v0, 0x0

    goto :goto_70
.end method

.method public getTarget()I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTarget:I

    return v0
.end method

.method public isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    return-void
.end method

.method public setDynamicAutoBrightnessSteps(I)V
    .registers 4

    if-lez p1, :cond_12

    int-to-float v0, p1

    const v1, 0x43cc0001    # 408.00003f

    div-float v0, v1, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForAutoBrightness:I

    :goto_11
    return-void

    :cond_12
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForAutoBrightness:I

    goto :goto_11
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
