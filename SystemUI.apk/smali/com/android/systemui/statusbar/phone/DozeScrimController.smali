.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeScrimController$1;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$2;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$3;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$4;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$5;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBehindAnimator:Landroid/animation/Animator;

.field private mBehindTarget:F

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingAborted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAnimator:Landroid/animation/Animator;

.field private mInFrontTarget:F

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozeAlpha(ZF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method private abortAnimations()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_12
    return-void
.end method

.method private cancelPulsing()V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "DozeScrimController"

    const-string/jumbo v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    :cond_29
    return-void
.end method

.method private getCurrentAnimator(Z)Landroid/animation/Animator;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_4
.end method

.method private getCurrentTarget(Z)F
    .registers 3

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_4
.end method

.method private getDozeAlpha(Z)F
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeInFrontAlpha()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeBehindAlpha()F

    move-result v0

    goto :goto_8
.end method

.method private pulseFinished()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_c
    return-void
.end method

.method private pulseStarted()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_9
    return-void
.end method

.method private setCurrentAnimator(ZLandroid/animation/Animator;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_4
    return-void

    :cond_5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_4
.end method

.method private setCurrentTarget(ZF)V
    .registers 3

    if-eqz p1, :cond_5

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_4
    return-void

    :cond_5
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_4
.end method

.method private setDozeAlpha(ZF)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    goto :goto_c
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V
    .registers 15

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentTarget(Z)F

    move-result v2

    cmpl-float v3, v2, p2

    if-nez v3, :cond_f

    return-void

    :cond_f
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_12
    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getDozeAlpha(Z)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;

    invoke-direct {v3, p0, p1, p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentTarget(ZF)V

    return-void
.end method


# virtual methods
.method public abortDoze()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortPulsing()V

    return-void
.end method

.method public abortPulsing()V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/4 v0, 0x0

    :cond_25
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    :cond_28
    return-void
.end method

.method public extendPulse()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isPulsing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onScreenTurnedOn()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    :goto_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v1

    int-to-long v4, v1

    if-eqz v0, :cond_29

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x1

    goto :goto_11

    :cond_27
    const/4 v0, 0x0

    goto :goto_11

    :cond_29
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1c
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_17

    :cond_13
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    :cond_17
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDozing(ZZ)V
    .registers 10

    const-wide/16 v4, 0x2bc

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v1, p1, :cond_b

    return-void

    :cond_b
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_2d

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_2b

    :goto_27
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    :goto_2a
    return-void

    :cond_2b
    move v3, v0

    goto :goto_27

    :cond_2d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    if-eqz p2, :cond_40

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    goto :goto_2a

    :cond_40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_2a
.end method

.method public setWakeAndUnlocking()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    :cond_12
    return-void
.end method
