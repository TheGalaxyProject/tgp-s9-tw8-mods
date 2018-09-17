.class public Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricDexButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDexBiometricButton:Landroid/widget/Button;

.field private mFace:Z

.field private mIb:Z

.field private mIris:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPm:Landroid/os/PowerManager;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->isTimerRunning()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method private isTimerRunning()Z
    .registers 7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    :goto_18
    return v3

    :cond_19
    const/4 v3, 0x0

    goto :goto_18
.end method


# virtual methods
.method synthetic lambda$-com_android_keyguard_biometric_KeyguardBiometricDexButtonView_3457(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    const v1, 0x7f120530

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, stop iris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f120542

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23

    :cond_41
    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, update iris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f12052c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23
.end method

.method synthetic lambda$-com_android_keyguard_biometric_KeyguardBiometricDexButtonView_4630(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    const v1, 0x7f1204bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, stop face recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f1204d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23

    :cond_43
    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, update face recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f1204b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23
.end method

.method synthetic lambda$-com_android_keyguard_biometric_KeyguardBiometricDexButtonView_5852(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mContext:Landroid/content/Context;

    const v1, 0x7f120506

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, stop IB recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f120508

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23

    :cond_43
    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v1, "onClick, update IB recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f120504

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    const-string/jumbo v2, "onFinishInflate()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_91

    const/4 v0, 0x1

    :goto_32
    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIris:Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_4c
    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mFace:Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    :cond_66
    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIb:Z

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIris:Z

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f120542

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_90
    :goto_90
    return-void

    :cond_91
    move v0, v1

    goto :goto_32

    :cond_93
    move v0, v1

    goto :goto_32

    :cond_95
    move v0, v1

    goto :goto_4c

    :cond_97
    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mFace:Z

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f1204d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_90

    :cond_ae
    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIb:Z

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    const v1, 0x7f120508

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mDexBiometricButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/-$Lambda$C_pi85rmWMAdJrMG-0t-KqbKFrc$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_90
.end method

.method public updateButtonVisibility()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->isTimerRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIris:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mFace:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->mIb:Z

    if-eqz v0, :cond_23

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    goto :goto_22

    :cond_27
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    goto :goto_22
.end method
