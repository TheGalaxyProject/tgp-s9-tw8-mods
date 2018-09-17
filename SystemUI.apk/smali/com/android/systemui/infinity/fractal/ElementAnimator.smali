.class public Lcom/android/systemui/infinity/fractal/ElementAnimator;
.super Ljava/lang/Object;
.source "ElementAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/fractal/ElementAnimator$1;,
        Lcom/android/systemui/infinity/fractal/ElementAnimator$2;,
        Lcom/android/systemui/infinity/fractal/ElementAnimator$3;,
        Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;
    }
.end annotation


# static fields
.field public static final ANIM_TYPE_FLICK:I = 0x2

.field public static final ANIM_TYPE_GYRO:I = 0x3

.field public static final ANIM_TYPE_NONE:I = 0x0

.field public static final ANIM_TYPE_TRANSITION:I = 0x1

.field private static final MSG_CANCEL_TRANSITION:I = 0x2

.field private static final MSG_CHANGE_MODE:I = 0x4

.field private static final MSG_END_TRANSITION:I = 0x3

.field private static final MSG_START_TRANSITION:I = 0x1


# instance fields
.field private final ROTATE_FRAME_DECREASE_INTERVAL:I

.field private final ROTATE_FRAME_INTERVAL:I

.field private final ROTATE_MAX_DEGREE_HOME:I

.field private final ROTATE_MAX_DEGREE_LOCK:I

.field private final ROTATE_SPEED_BALANCE_AMOUNT:F

.field private final ROTATE_SPEED_DECREASE_AMOUNT:F

.field private final ROTATE_SPEED_MAX_VALUE:F

.field private final ROTATE_STOP_AMOUNT:F

.field private mAnimSequence:J

.field private mBaseDegree:F

.field private mCurAnimType:I

.field private mCurMode:I

.field private mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

.field private mFlickAnimation:Landroid/animation/ObjectAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mIsRotating:Z

.field private mOldMode:I

.field private mRotationSpeed:F

.field private mRotationStartHandler:Landroid/os/Handler;

.field private mRotationStopHandler:Landroid/os/Handler;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/infinity/fractal/ElementAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mBaseDegree:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Lcom/android/systemui/infinity/fractal/ElementData;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/opengl/GLSurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mBaseDegree:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/infinity/fractal/ElementAnimator;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/infinity/fractal/ElementAnimator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->getCurrentMaxDegree()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->endAllAnimationsInner()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->startTransition()V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Lcom/android/systemui/infinity/fractal/ElementData;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v2, 0xa

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_SPEED_BALANCE_AMOUNT:F

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_SPEED_MAX_VALUE:F

    const v1, 0x3a83126f    # 0.001f

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_STOP_AMOUNT:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_FRAME_INTERVAL:I

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_FRAME_DECREASE_INTERVAL:I

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_SPEED_DECREASE_AMOUNT:F

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_MAX_DEGREE_HOME:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->ROTATE_MAX_DEGREE_LOCK:I

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mOldMode:I

    iput v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    iput v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    iput v5, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    iput v5, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mBaseDegree:F

    iput-boolean v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    new-instance v1, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;-><init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;-><init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;-><init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "InfinityWallpaper"

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    return-void
.end method

.method private cancelAllAnimationsInner()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->pause()V

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    :cond_12
    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    iput-boolean v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_2a

    :cond_3d
    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->pause()V

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_49
    return-void
.end method

.method private createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;
    .registers 14

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;
    .registers 12

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {v1, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p5

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p6, :cond_1d

    invoke-virtual {v0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1d
    if-eqz p7, :cond_31

    new-instance v1, Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;

    iget-wide v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/infinity/fractal/ElementAnimator$SequenceAnimatorListener;-><init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;J)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_31
    return-object v0
.end method

.method private doneTransition()V
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    packed-switch v0, :pswitch_data_ca

    :goto_b
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetProperties()V

    goto :goto_b

    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    aget v1, v1, v4

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v1, v1, v4

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v1, v4

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup1:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup2:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup3:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup4:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup5:F

    goto :goto_b

    :pswitch_4f
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    aget v1, v1, v5

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v1, v1, v5

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v1, v5

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    goto :goto_b

    :pswitch_8b
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0, v3}, Lcom/android/systemui/infinity/fractal/ElementData;->setGroupAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    aget v1, v1, v6

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v1, v1, v6

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v1, v6

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeDot:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeLine:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iput v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeBg:F

    goto/16 :goto_b

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_11
        :pswitch_17
        :pswitch_4f
        :pswitch_8b
    .end packed-switch
.end method

.method private endAllAnimationsInner()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    iput-boolean v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_25

    :cond_35
    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    iput-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_3c
    return-void
.end method

.method private getCurrentMaxDegree()F
    .registers 3

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/high16 v0, 0x41f00000    # 30.0f

    return v0

    :cond_8
    const/high16 v0, 0x41700000    # 15.0f

    return v0
.end method

.method private startTransition()V
    .registers 11

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start animation for mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    packed-switch v0, :pswitch_data_548

    :goto_2a
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->wakeLock(J)V

    iput-object v8, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_34
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetProperties()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_2a

    :pswitch_3f
    const/16 v9, 0xfa0

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    const-string/jumbo v1, "empty_for_draw"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0xfa0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "scale"

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0xdac

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessDot"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0xd48

    const/16 v5, 0x258

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessLine"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0x3e8

    const/16 v5, 0x8fc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaGroup1"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x1f4

    const/16 v5, 0x8fc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaGroup2"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x258

    const/16 v5, 0x9c4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaGroup3"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x320

    const/16 v5, 0x9c4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaGroup4"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x384

    const/16 v5, 0x8fc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaGroup5"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x44c

    const/16 v5, 0x8fc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaAodBgObjects"

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const/16 v4, 0x3e8

    const/16 v5, 0x8fc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2a

    :pswitch_116
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12c

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    :cond_12c
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_142

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    :cond_142
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_158

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    :cond_158
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/ElementData;->setGroupAlpha(F)V

    const-string/jumbo v1, "empty_for_draw"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x834

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "scale"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    const/16 v4, 0x64

    const/16 v5, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessDot"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessLine"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "rotateX"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    const/4 v3, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x834

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "rotateY"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    const/4 v3, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x834

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaAodFgObjects"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaAodBgObjects"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockDot"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v6, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockDot"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockLine"

    const/4 v2, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockLine"

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v4, v0, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f4ccccd    # 0.8f

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockFaces"

    const/4 v2, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x190

    const/16 v5, 0x640

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockBg"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v6, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2a

    :pswitch_2ec
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_302

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    :cond_302
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_318

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    :cond_318
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32e

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    sget-object v1, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    :cond_32e
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/ElementData;->setGroupAlpha(F)V

    const-string/jumbo v1, "empty_for_draw"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x683

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "scale"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    const/4 v3, 0x3

    aget v3, v0, v3

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x578

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessDot"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x0

    const/16 v5, 0x2ff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "overBrightnessLine"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x0

    const/16 v5, 0x2ff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b6

    const-string/jumbo v1, "rotateX"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v3, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x683

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3b6
    const-string/jumbo v1, "rotateY"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float v3, v0, v3

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x683

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaHomeDot"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v4, 0x0

    const/16 v5, 0x29b

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaHomeDot"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x363

    const/16 v5, 0x320

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaHomeLine"

    const/4 v2, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v6, v4, v0, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/16 v5, 0x16f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaHomeLine"

    const/4 v3, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v4, 0x16f

    const/16 v5, 0x384

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaHomeBg"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    const/16 v4, 0x85

    const/16 v5, 0x384

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-string/jumbo v1, "alphaLockFaces"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v6, v7, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4a8

    const-string/jumbo v1, "alphaLockDot"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v6, v7, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4a8
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d0

    const-string/jumbo v1, "alphaLockLine"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v6, v7, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4d0
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4fb

    const-string/jumbo v1, "alphaAodFgObjects"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4fb
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_526

    const-string/jumbo v1, "alphaAodBgObjects"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v6, v5, v0, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_526
    const-string/jumbo v1, "alphaLockBg"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    const/4 v3, 0x0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v6, v7, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2a

    nop

    :pswitch_data_548
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3f
        :pswitch_116
        :pswitch_2ec
    .end packed-switch
.end method

.method private wakeLock(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public changeMode(IZ)V
    .registers 7

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1d

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public changeModeInner(IZ)V
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", old mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    if-ne v0, p1, :cond_2d

    return-void

    :cond_2d
    if-nez p1, :cond_3e

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->endAllAnimationsInner()V

    :goto_32
    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mOldMode:I

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    if-eqz p2, :cond_4e

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->startTransition()V

    :goto_3d
    return-void

    :cond_3e
    iget-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    if-eqz p2, :cond_4b

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    goto :goto_32

    :cond_4b
    iput v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    goto :goto_32

    :cond_4e
    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->doneTransition()V

    goto :goto_3d
.end method

.method public clear()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->cancelAllAnimations()V

    return-void
.end method

.method public endAllAnimations()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentAnimationType()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    return v0
.end method

.method synthetic lambda$-com_android_systemui_infinity_fractal_ElementAnimator_8554(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public onDrawElementFinished()V
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurMode:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    goto :goto_12
.end method

.method public onFlick(F)V
    .registers 10

    const/4 v7, 0x1

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    if-ne v0, v7, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    iget-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mAnimSequence:J

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFlick velocityX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_56

    const/high16 p1, 0x41a00000    # 20.0f

    :goto_34
    const-string/jumbo v1, "rotateY"

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v2, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    add-float v3, v0, p1

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x91d

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_56
    const/high16 p1, -0x3e600000    # -20.0f

    goto :goto_34
.end method

.method public onGyroDataChanged(F)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mCurAnimType:I

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationSpeed:F

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mIsRotating:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_20
    return-void
.end method

.method public setAodBgOff()V
    .registers 1

    return-void
.end method
