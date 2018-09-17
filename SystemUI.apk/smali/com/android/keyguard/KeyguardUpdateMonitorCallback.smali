.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .registers 2

    return-void
.end method

.method public onBootCompleted()V
    .registers 1

    return-void
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .registers 1

    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    return-void
.end method

.method public onDexModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEmergencyCallAction()V
    .registers 1

    return-void
.end method

.method public onFaceRecognitionAcquired(I)V
    .registers 2

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .registers 1

    return-void
.end method

.method public onFaceRecognitionAuthSucceeded(I)V
    .registers 2

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onFaceRecognitionHelp(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .registers 1

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .registers 2

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .registers 1

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .registers 2

    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 2

    return-void
.end method

.method public onFotaPreinstallerFinish()V
    .registers 1

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .registers 2

    return-void
.end method

.method public onIBAuthFailed()V
    .registers 1

    return-void
.end method

.method public onIBAuthenticated(I)V
    .registers 2

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onIrisAuthFailed()V
    .registers 1

    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .registers 4

    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_13

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    return-void
.end method

.method public onLockModeChanged()V
    .registers 1

    return-void
.end method

.method public onOpenThemeChangeStarted()V
    .registers 1

    return-void
.end method

.method public onOpenThemeChanged()V
    .registers 1

    return-void
.end method

.method public onOpenThemeReApply()V
    .registers 1

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 1

    return-void
.end method

.method public onRemoteLockInfoChanged()V
    .registers 1

    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 1

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1

    return-void
.end method

.method public onSecurityModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 2

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    return-void
.end method

.method public onStartedWakingUp(I)V
    .registers 2

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onSystemDialogsShowing()V
    .registers 1

    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    return-void
.end method

.method public onTrustChanged(I)V
    .registers 2

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .registers 3

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .registers 2

    return-void
.end method

.method public onUpdateAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 2

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    return-void
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .registers 2

    return-void
.end method

.method public onUserInfoChanged(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    return-void
.end method

.method public onUserUnlocked()V
    .registers 1

    return-void
.end method

.method public showBackgroundAuthToast(I)V
    .registers 2

    return-void
.end method

.method public updateBackgroundAuthToast(ZI)V
    .registers 3

    return-void
.end method
