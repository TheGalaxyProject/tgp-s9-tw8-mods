.class public Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricSmallIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;,
        Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field private mBouncerShowing:Z

.field private mCurrentMobileKeyboardState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPlayingAnimation:Z

.field private mKeyguardShowing:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSupportMKeyboardModel:Z

.field private final mUpdateHelpTextRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setIrisHelpText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearWithPreviewText(I)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_5e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_30
    :goto_30
    return-void

    :pswitch_31
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    goto :goto_30

    :pswitch_4b
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_30

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_4b
    .end packed-switch
.end method

.method private isBiometricCondition()Z
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_48

    return v2

    :cond_48
    const/4 v1, 0x0

    return v1
.end method

.method private isTimerRunning()Z
    .registers 5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private setBiometricNoMatchText(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_28
    return-void
.end method

.method private setIrisHelpText(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_35

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_35
    return-void
.end method

.method private updateAnimation(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    if-nez p1, :cond_18

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    goto :goto_18
.end method

.method private updateErrorText(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_35

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setBiometricNoMatchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    goto :goto_34
.end method

.method private updatePreviewVisibility(Z)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    if-eqz p1, :cond_46

    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :cond_46
    :goto_46
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    goto :goto_46

    :cond_4e
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_49

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_49
.end method

.method private updateVisualCueIcon()V
    .registers 5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5f

    const-string/jumbo v2, "smart_scan_unlocking_ic_whitebg.json"

    :goto_2b
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_2e
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v2, :cond_89

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v2

    :goto_5b
    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_5e
    return-void

    :cond_5f
    const-string/jumbo v2, "smart_scan_unlocking_ic.json"

    goto :goto_2b

    :cond_63
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_76

    const-string/jumbo v2, "face_unlocking_ic_whitebg.json"

    :goto_72
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2e

    :cond_76
    const-string/jumbo v2, "face_unlocking_ic.json"

    goto :goto_72

    :cond_7a
    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_85

    const-string/jumbo v2, "iris_unlocking_ic_whitebg.json"

    :goto_81
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2e

    :cond_85
    const-string/jumbo v2, "iris_unlocking_ic.json"

    goto :goto_81

    :cond_89
    const/4 v2, 0x0

    goto :goto_5b
.end method


# virtual methods
.method public isBiometricRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public isInViewArea(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getX()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getY()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_42

    const/4 v2, 0x1

    :cond_42
    return v2
.end method

.method synthetic lambda$-com_android_keyguard_biometric_KeyguardBiometricSmallIconView_4914(Landroid/net/Uri;)V
    .registers 3

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    :cond_10
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_24

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    if-ne v0, v2, :cond_25

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    goto :goto_24
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    const v2, 0x3f8ccccd    # 1.1f

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardBiometricSmallIconView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    :cond_77
    new-instance v0, Lcom/android/keyguard/biometric/-$Lambda$mu3yCJ0wd0y0XTLALykeH0_Xxz0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$Lambda$mu3yCJ0wd0y0XTLALykeH0_Xxz0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isInViewArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    :pswitch_10
    return v3

    :pswitch_11
    return v4

    :pswitch_12
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "KeyguardBiometricSmallIconView"

    const-string/jumbo v2, "Stop Face recognition by touch on small preview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    :cond_2b
    :goto_2b
    return v4

    :cond_2c
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string/jumbo v1, "KeyguardBiometricSmallIconView"

    const-string/jumbo v2, "Stop IRIS recognition by touch on small preview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    goto :goto_2b

    :cond_53
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "KeyguardBiometricSmallIconView"

    const-string/jumbo v2, "Stop IB recognition by touch on small preview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updatePreviewVisibility(Z)V

    goto :goto_2b

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method
