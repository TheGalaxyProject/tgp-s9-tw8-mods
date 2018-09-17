.class public Lcom/android/keyguard/biometric/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;,
        Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues:[I


# instance fields
.field private final mAnimHandler:Landroid/os/Handler;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBodyAnimator:Landroid/animation/ObjectAnimator;

.field private mContext:Landroid/content/Context;

.field private mIsAnimating:Z

.field private mIsShowing:Z

.field private mIsUpdating:Z

.field private mToastBodyView:Landroid/widget/LinearLayout;

.field private mToastGuideText:Landroid/widget/TextView;

.field private mToastIcon:Landroid/widget/ImageView;

.field private mToastProgressBar:Landroid/widget/ProgressBar;

.field private mToastRoot:Landroid/widget/FrameLayout;

.field private mUpdateAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-com-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-com-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->values()[Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-com-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isTextEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JJ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->reset(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private appearAnimation(JI)V
    .registers 11

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_58

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/keyguard/biometric/SineInOut80;

    invoke-direct {v2}, Lcom/android/keyguard/biometric/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_60

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;

    invoke-direct {v3, p0, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_58
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_60
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private appearAnimation(JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .registers 15

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    iput-boolean v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {p0, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isTextEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    :cond_1e
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_74

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/keyguard/biometric/SineInOut80;

    invoke-direct {v2}, Lcom/android/keyguard/biometric/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_7c

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;

    invoke-direct {v3, p0, p5, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;ILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_74
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeTextAnim(FFLandroid/view/View;JJ)V
    .registers 18

    sget-object v8, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method private changeTextAnim(FFLandroid/view/View;JJLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .registers 13

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;

    invoke-direct {v1, p0, p8}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$4;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private disappearAnimation(J)V
    .registers 14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isTextEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v6, 0x96

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JJ)V

    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_70

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/keyguard/biometric/SineInOut80;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/SineInOut80;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_78

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v0, 0xc8

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$5;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_70
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_78
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getTextWidth()I
    .registers 6

    const v4, 0x7f070092

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-le v1, v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2a
    return v1
.end method

.method private isTextEmpty()Z
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method private reset(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1d
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_29
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_39
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    :cond_45
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_55
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    :cond_61
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    iput-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    if-eqz p1, :cond_76

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->removeAllViewsInLayout()V

    :cond_76
    return-void
.end method

.method private setViewAttribution()V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getTextWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4d
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5f
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4d
.end method

.method private updateAnimation(JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .registers 11

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2e

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;

    invoke-direct {v1, p0, p4, p5, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$6;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;IILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateToastView(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_e

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->updateAnimation(JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    :goto_d
    return-void

    :cond_e
    const-wide/16 v2, 0x64

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    goto :goto_d
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 5

    const-string/jumbo v0, "KeyguardBiometricToastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismiss() , force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_36
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_44
    if-eqz p1, :cond_4c

    const-wide/16 v0, 0x64

    :goto_48
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->disappearAnimation(J)V

    return-void

    :cond_4c
    const-wide/16 v0, 0x0

    goto :goto_48
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardBiometricToastView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0522

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0521

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setViewAttribution()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->reset(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "KeyguardBiometricToastView"

    const-string/jumbo v1, "Icon view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public show(JI)V
    .registers 7

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string/jumbo v1, "KeyguardBiometricToastView"

    const-string/jumbo v2, "Do not show toast by video call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string/jumbo v1, "KeyguardBiometricToastView"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(JI)V

    return-void
.end method

.method public update(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .registers 9

    const/4 v6, 0x1

    const-string/jumbo v3, "KeyguardBiometricToastView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update toast contents = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , already showing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->-getcom-android-keyguard-biometric-KeyguardBiometricToastView$ToastTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_74

    :goto_38
    :pswitch_38
    sget-object v3, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    if-eq p1, v3, :cond_3f

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->updateToastView(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V

    :cond_3f
    return-void

    :pswitch_40
    iput-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v3, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_4d

    const v1, 0x7f120491

    :goto_49
    const v0, 0x7f0803fc

    goto :goto_38

    :cond_4d
    const v1, 0x7f120494

    goto :goto_49

    :pswitch_51
    iput-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    sget-boolean v3, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_5e

    const v1, 0x7f120490

    :goto_5a
    const v0, 0x7f0803fc

    goto :goto_38

    :cond_5e
    const v1, 0x7f12048e

    goto :goto_5a

    :pswitch_62
    iput-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    const v1, 0x7f120492

    const v0, 0x7f0803fb

    goto :goto_38

    :pswitch_6b
    iput-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->mIsUpdating:Z

    const v1, 0x7f120492

    const v0, 0x7f0803fb

    goto :goto_38

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_38
        :pswitch_62
        :pswitch_40
        :pswitch_6b
        :pswitch_51
    .end packed-switch
.end method
