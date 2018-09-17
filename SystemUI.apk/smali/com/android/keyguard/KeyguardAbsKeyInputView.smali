.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAbsKeyInputView$1;,
        Lcom/android/keyguard/KeyguardAbsKeyInputView$2;,
        Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I


# instance fields
.field protected m2StepVerification:Z

.field private mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mBouncerShowing:Z

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCarrierText:Landroid/view/View;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private mDismissing:Z

.field private mDpmMinimumPasswordLength:I

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mEntry:Ljava/lang/String;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mIsAccountExist:Z

.field private mIsMobileKeyboardCovered:I

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

.field protected mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field protected final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPromptReason:I

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSwitchImeButton:Landroid/view/View;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    return v0
.end method

.method private static synthetic -getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->values()[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I
    .registers 2

    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardAbsKeyInputView;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsMobileKeyboardCovered:I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->m2StepVerification:Z

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->m2StepVerification:Z

    :cond_50
    return-void
.end method

.method private calculatePaddingBottom()I
    .registers 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v1, v1, -0x400

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private calculatePaddingTop()I
    .registers 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v1, v1, -0x400

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$AccountAnalyzer;->start()V

    return-void
.end method

.method private disableDevicePermanently()V
    .registers 4

    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x1040292

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleBiometricsAttemptLockout(J)V
    .registers 14

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, p1, v8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_12
    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x3e8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    :goto_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    :cond_1d
    return-void

    :pswitch_1e
    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12

    :pswitch_2f
    const-string/jumbo v0, "KeyguardAbsKeyInputView"

    const-string/jumbo v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_1e
    .end packed-switch
.end method

.method private updateLayout()V
    .registers 15

    const v11, 0x7f070239

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v10, :cond_37

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_ee

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2d
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_37
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_57

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_10b

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->calculatePaddingTop()I

    move-result v11

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->calculatePaddingBottom()I

    move-result v12

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_57
    :goto_57
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v10, :cond_80

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_119

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_7b
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_80
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v10, :cond_c6

    :try_start_90
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v10, v7, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_b2

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_12b

    move-object v0, v6

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v10, v0

    const/16 v11, 0x31

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_b2
    :goto_b2
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b7} :catch_135

    :goto_b7
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v10

    if-eqz v10, :cond_137

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_c6
    :goto_c6
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v10, :cond_ed

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07021f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v4, v3, v9, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ed
    return-void

    :cond_ee
    const/4 v10, -0x1

    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2d

    :cond_10b
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v11, 0x50

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13, v13, v13, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_57

    :cond_119
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070233

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/16 :goto_7b

    :cond_12b
    :try_start_12b
    move-object v0, v6

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v10, v0

    const/16 v11, 0x51

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_133} :catch_135

    goto/16 :goto_b2

    :catch_135
    move-exception v2

    goto :goto_b7

    :cond_137
    iget-object v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c6
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .registers 1

    return-void
.end method

.method public doHapticKeyClick()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    :cond_9
    return-void
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromptReasonStringRes(I)I
.end method

.method protected abstract getSecurityViewId()I
.end method

.method protected getStringFromId(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWrongPasswordStringId()I
    .registers 2

    const v0, 0x7f1206e3

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .registers 12

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->updateDexButtonVisibility()V

    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected isHintText()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardAbsKeyInputView_16950(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public needsInput()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f0a0294

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    const v2, 0x7f0a02b6

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const v2, 0x7f0a0196

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_31
    sget-boolean v2, Lcom/android/systemui/Rune;->COMMON_SUPPORT_DIRECT_CALL_TO_ECC:Z

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    :cond_42
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCurrentOrientation:I

    const v2, 0x7f0a03b5

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getSecurityViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0095

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a00cd

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCarrierText:Landroid/view/View;

    const v2, 0x7f0a04f5

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    const v2, 0x7f0a0209

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v2, :cond_9f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_9f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateLayout()V

    const v2, 0x7f0a0088

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v2, :cond_d7

    const v2, 0x7f0a01bd

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x7f12061f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/-$Lambda$db9vvofjVkjg3Xqxx5P_VaDSph8;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$Lambda$db9vvofjVkjg3Xqxx5P_VaDSph8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->checkAccountExist(Landroid/content/Context;)V

    :cond_d7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsMobileKeyboardCovered:I

    :cond_f6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onPasswordChecked(IZIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method protected onPasswordChecked(IZIZLjava/lang/String;)V
    .registers 27

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_11d

    const/4 v6, 0x1

    :goto_9
    const-string/jumbo v15, "KeyguardAbsKeyInputView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onPasswordChecked "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " timeoutMs "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_13e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v15}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v15

    if-eqz v15, :cond_d6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_d6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v13

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v11

    invoke-virtual {v7, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v10

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "com.android.settings"

    const-string/jumbo v16, "com.android.settings.ChooseLockPassword"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "lockscreen.password_type"

    invoke-virtual {v9, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v15, "lockscreen.password_min"

    invoke-virtual {v9, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v15, "lockscreen.password_max"

    invoke-virtual {v9, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v15, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "confirm_credentials"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v15, "isRecovery"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v15, 0x10000000

    invoke-virtual {v9, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v15, 0x400000

    invoke-virtual {v9, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v15, 0x800000

    invoke-virtual {v9, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cb .. :try_end_d6} :catch_120

    :cond_d6
    :goto_d6
    const-string/jumbo v15, "KeyguardAbsKeyInputView"

    const-string/jumbo v16, "onPasswordChecked"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v15, v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v6, :cond_104

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-interface {v15, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_104
    :goto_104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    if-eqz v15, :cond_111

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    :cond_111
    xor-int/lit8 v15, p2, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void

    :cond_11d
    const/4 v6, 0x0

    goto/16 :goto_9

    :catch_120
    move-exception v8

    const-string/jumbo v15, "KeyguardAbsKeyInputView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Can\'t find the component "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    :cond_13e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v15, :cond_15c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    sget-object v16, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v17, 0xc378

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_15c
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_18f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/16 v16, 0x0

    move/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v15}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v15

    if-nez v15, :cond_183

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v15}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v15

    if-eqz v15, :cond_207

    :cond_183
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    :cond_186
    :goto_186
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reportAuditLog(ILjava/lang/String;)V

    :cond_18f
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_104

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v12

    if-lez v14, :cond_25b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/high16 v19, 0x7f100000

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1fe
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v15}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    goto/16 :goto_104

    :cond_207
    if-nez p3, :cond_22c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_22c

    sget-boolean v15, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v15, :cond_186

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v15

    if-eqz v15, :cond_186

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto/16 :goto_186

    :cond_22c
    if-lez p3, :cond_186

    sget-boolean v15, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v15, :cond_241

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v15

    if-eqz v15, :cond_241

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto/16 :goto_186

    :cond_25b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v15, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1fe
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_23
    return-void
.end method

.method public onResume(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected onUserInput()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setSubSecurityMessage(II)V

    return-void
.end method

.method reportAuditLog(ILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p2, :cond_3e

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "KeyguardAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " when using "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " authentication"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_3d
    return-void

    :cond_3e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "KeyguardAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3d
.end method

.method public reset()V
    .registers 8

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    invoke-virtual {p0, v6, v6}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_20
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    :cond_23
    :goto_23
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_88

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v4

    if-eqz v4, :cond_52

    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v4, :cond_4e

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_4e
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_23

    :cond_52
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v4, :cond_66

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintText()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_66
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_23

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsAccountExist:Z

    if-eqz v4, :cond_23

    sget-object v4, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    goto :goto_23

    :cond_88
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method

.method protected setSubSecurityMessage(II)V
    .registers 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    if-ltz p2, :cond_2d

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_2d
    if-nez p1, :cond_38

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_25

    :cond_38
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDpmMinimumPasswordLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_25

    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method protected shouldLockout(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public showMessage(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    return-void
.end method

.method public showPromptReason(I)V
    .registers 10

    const/16 v7, 0x1388

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iput p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPromptReason:I

    if-eqz p1, :cond_37

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_26

    return-void

    :cond_26
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result v2

    if-nez v2, :cond_10

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_10

    :cond_37
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_10
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v1, :cond_8

    return-void

    :cond_8
    const-string/jumbo v1, "KeyguardAbsKeyInputView"

    const-string/jumbo v2, "verifyPasswordAndUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_49

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZ)V

    return-void

    :cond_49
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    :cond_64
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEntry:Ljava/lang/String;

    new-instance v3, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
