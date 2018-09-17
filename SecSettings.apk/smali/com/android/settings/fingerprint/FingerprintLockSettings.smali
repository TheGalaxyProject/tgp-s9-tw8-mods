.class public Lcom/android/settings/fingerprint/FingerprintLockSettings;
.super Landroid/app/Activity;
.source "FingerprintLockSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mFingerprintLockMain:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintlockEnable:Z

.field private mFromSetupwizard:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mIdentifyFingerprint:Z

.field private mInitializedUI:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsDirectionLock:Z

.field private mIsEnterpriseIdentityLock:Z

.field private mIsFinish:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mIsSecured:Z

.field private mIsSharedDevice:Z

.field private mKnoxIdentifyOnlyFingerprint:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnlyIdentifyFingerprint:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mSpassSdkCompat:Z

.field private mStartUseFingerprint:Z

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/fingerprint/FingerprintLockSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFinish:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    return-void
.end method

.method private identifyFinger()I
    .registers 6

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "identifyFinger"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method private initFingerprintLockSettings()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "initFingerprintLockSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fingerprintlockEnable"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "onlyIdentify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fingerprintlockmain"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "spass_sdk_compat"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "mKnoxIdentifyOnly"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_2a1

    move v0, v1

    :goto_aa
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "fromSetupwizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const v3, 0x10001

    if-ne v0, v3, :cond_2a4

    move v0, v1

    :goto_cf
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isFromKnoxFingerprintPlus"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_knox"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "is_knox_two_step"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "displayKnoxName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isSharedDevice"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDisplayKnoxName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsFromKnoxSetCases:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsFromKnoxTwoStep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[identifyFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[fingerprintlockmain] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[mSpassSdkCompat] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isSecured] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[fromSetupwizard] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[hasFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isDirectionLock] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_275
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "disable_systemkey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "WasSecureBefore"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    :goto_296
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIdentityLock:Z

    return-void

    :cond_2a1
    move v0, v2

    goto/16 :goto_aa

    :cond_2a4
    move v0, v2

    goto/16 :goto_cf

    :cond_2a7
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    goto :goto_296
.end method

.method private launchChooseLock(J)V
    .registers 10

    const/4 v5, 0x1

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2d

    const-wide/16 p1, 0x0

    :cond_2d
    const-string/jumbo v2, "challenge"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4a
    const-string/jumbo v2, "fingerprint_settings_add_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_60
    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_66
    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8f

    :cond_7f
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9e

    :cond_8f
    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9e
    const-string/jumbo v2, "disable_systemkey"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasEnrolledFaceAndNonSecure(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "faceAuthNotNeed"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_d6
    const/16 v2, 0x3ea

    :try_start_d8
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_db
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d8 .. :try_end_db} :catch_dc

    :goto_db
    return-void

    :catch_dc
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db
.end method

.method private launchRedactionInterstitial()V
    .registers 6

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRedaction [previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRedaction [mWasSecureBefore] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRedaction [mUserId] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_bd

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string/jumbo v2, "fingerprint_settings_add_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_8f
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_cd

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchRedaction [startActivity]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    const-string/jumbo v2, "fromSetupWizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b4
    :try_start_b4
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    if-eqz v2, :cond_be

    const/16 v2, 0x3ee

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_bd
    :goto_bd
    return-void

    :cond_be
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_c1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b4 .. :try_end_c1} :catch_c2

    goto :goto_bd

    :catch_c2
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "launchRedactionInterstitial : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :cond_cd
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "RedactionInterstitial.createStartIntent is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_bd
.end method

.method private recognizeFingerprint()V
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "recognizeFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    :goto_1d
    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_37
    move v0, v4

    goto :goto_1d

    :cond_39
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSecFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_4d

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "mSecFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120b77

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Mobile keyboard attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_68
    return-void

    :cond_69
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->identifyFinger()I

    move-result v6

    if-nez v6, :cond_7b

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "identifyFinger start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    return-void

    :cond_7b
    const/4 v0, -0x4

    if-ne v6, v0, :cond_90

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "RESULT_DATABASE_FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    goto :goto_78

    :cond_90
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Other Error occured : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_78
.end method

.method private runRegister(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "runRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Mobile keyboard attached"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const v3, 0x7f12037f

    invoke-static {p0, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    if-ne p1, v2, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_3d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_25

    :cond_41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_67
    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxSetupWizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxFingerprintPlus"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isSharedDevice"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fromKnoxKeyguard"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_secure_folder"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "is_secure_folder"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_fingerprint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_ce
    :try_start_ce
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister hasEnrolledFingerprints "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_10d

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10d

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_105} :catch_107

    goto/16 :goto_25

    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_25

    :cond_10d
    const/16 v2, 0x3e8

    :try_start_10f
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_107

    goto/16 :goto_25
.end method

.method private runRegisterForKnox()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    return-void

    :cond_12
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method private setIndicatorTransparency()V
    .registers 5

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showChooseLockKnoxPassword(Z)V
    .registers 16

    const v13, 0x7f0b02ce

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v9, "FpstFingerprintLockSettings"

    const-string/jumbo v10, "[KNOX FINGERPRINT] : showChooseLockKnoxPassword. [TODO] : needs to set more policy for knox bp"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "device_policy"

    invoke-virtual {p0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    iput-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02cd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v9

    const/high16 v10, 0x40000

    if-le v9, v10, :cond_d6

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    :goto_34
    const-string/jumbo v9, "lock_screen_fingerprint"

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v7

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v3

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v4

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    add-int v9, v6, v5

    if-le v9, v4, :cond_79

    add-int v4, v6, v5

    :cond_79
    add-int v9, v7, v3

    if-le v9, v2, :cond_7f

    add-int v2, v7, v3

    :cond_7f
    add-int v9, v4, v2

    if-le v9, v0, :cond_85

    add-int v0, v4, v2

    :cond_85
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v9

    if-eqz v9, :cond_d5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02d2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02d3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02d0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_d5
    return-void

    :cond_d6
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v9

    if-eqz v9, :cond_e8

    const/high16 v8, 0x50000

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto/16 :goto_34

    :cond_e8
    const/high16 v8, 0x40000

    goto/16 :goto_34
.end method

.method private showDatabaseFailureDialog()V
    .registers 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b2c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120b4a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMobileKeyboardToastMsg()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120b24

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120bf5

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .registers 6

    const v1, 0x7f120b77

    if-ne p1, v1, :cond_15

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const p1, 0x7f120b78

    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b2c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string/jumbo v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setIndicatorTransparency()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_50
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2f
    const/16 v2, 0x3ed

    :try_start_31
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_34
.end method

.method private startUseFingerprintLockSettings()V
    .registers 5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "com.android.settings.fingerprint.UseFingerprintLockSettingsDialog"

    :goto_37
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "spass_sdk_compat"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_5a
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    if-eqz v2, :cond_74

    const/16 v2, 0x3ef

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_65
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5a .. :try_end_65} :catch_78

    :goto_65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez v2, :cond_6f

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_6f
    return-void

    :cond_70
    const-string/jumbo v2, "com.android.settings.fingerprint.UseFingerprintLockSettings"

    goto :goto_37

    :cond_74
    :try_start_74
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_77
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_65

    :catch_78
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "startUseFingerprintLockSettings : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 21

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_52

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "intent is not null! Copy the token to result_intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_52
    sparse-switch p1, :sswitch_data_618

    :cond_55
    :goto_55
    return-void

    :sswitch_56
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_251

    if-eqz p3, :cond_80

    const-string/jumbo v2, "previousStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v2, :cond_d8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_cd

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v2, :cond_a9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    goto :goto_55

    :cond_a9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :cond_bc
    :goto_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez v2, :cond_339

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_55

    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_b9

    :cond_d8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v2, :cond_e4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_10b

    :cond_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_bc

    :cond_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_fc

    :cond_10b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-eqz v2, :cond_143

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_137

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_bc

    :cond_143
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v2, :cond_18d

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    if-eqz v2, :cond_17b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportFingerprintPlus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseFingerprintLockSettings()V

    :goto_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_181

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_bc

    :cond_17b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto :goto_161

    :cond_181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_bc

    :cond_18d
    const/4 v7, 0x0

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    :cond_1cf
    const/4 v7, 0x1

    :cond_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_210

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    const-string/jumbo v5, "Setup_Complete"

    const/16 v6, -0x3e8

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_210
    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23d

    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23d

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v2, :cond_bc

    :cond_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    const-string/jumbo v4, "FPSW"

    const-string/jumbo v5, "Register"

    const/16 v6, -0x3e8

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_bc

    :cond_251
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_276

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_276

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Register fingerprint is closed. Restart runRegister!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_276
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Fingerprint Registration failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_328

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ab

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_328

    :cond_2ab
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_328

    :cond_2c0
    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_328

    :cond_2d5
    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_2f4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_328

    :cond_2f4
    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_309

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_328

    :cond_309
    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_bc

    :cond_328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->sendLockScreenSurveyLog(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_bc

    :cond_339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto/16 :goto_55

    :sswitch_340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_35d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :cond_35d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_358

    :sswitch_368
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :sswitch_37c
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_594

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_408

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_408

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_3f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f12038e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_3b0
    :goto_3b0
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_499

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :cond_3f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f120b3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3b0

    :cond_408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_42c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f120b8d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3b0

    :cond_42c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v14

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v14, :sswitch_data_63a

    :goto_457
    if-eqz v16, :cond_3b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b0

    :sswitch_469
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b3c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_457

    :sswitch_475
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b38

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_457

    :sswitch_481
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b3a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_457

    :sswitch_48d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b36

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_457

    :cond_499
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Wrong case! There is no fingeprint, no lock case! Launch the RegisterFingerprint"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :cond_4b1
    const-string/jumbo v2, "google_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4cb

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_533

    :cond_4cb
    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_50c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50c

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Direction lock changed! There is no fingerprint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "fingerprint_settings_set_screen_lock"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void

    :cond_50c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :cond_533
    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_564

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v2, :cond_564

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_564

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "DirectionLock is changed to P/P/P! Register Fingerprint!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sec_setupwizard_fingerprint"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    return-void

    :cond_564
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "ChooseLock performed successfully! Enable Fingerprint lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :cond_594
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "Set lockscreen failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :sswitch_5ac
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_5cd

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    :goto_5c2
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "KNOXNOTICE_REQUEST_CODE got RESULT_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    :cond_5cd
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_5c2

    :cond_5d6
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "KNOXNOTICE_REQUEST_CODE got RESULT_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :sswitch_5ee
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_605

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "start chooseLockGeneric"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_55

    :cond_605
    const-string/jumbo v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "onActivityResult: Finish the activity!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :sswitch_613
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_55

    :sswitch_data_618
    .sparse-switch
        0x384 -> :sswitch_5ac
        0x3e8 -> :sswitch_56
        0x3e9 -> :sswitch_56
        0x3ea -> :sswitch_37c
        0x3eb -> :sswitch_368
        0x3ed -> :sswitch_5ee
        0x3ee -> :sswitch_613
        0x3ef -> :sswitch_340
    .end sparse-switch

    :sswitch_data_63a
    .sparse-switch
        0x10000 -> :sswitch_481
        0x10001 -> :sswitch_48d
        0x20000 -> :sswitch_469
        0x30000 -> :sswitch_469
        0x40000 -> :sswitch_475
        0x50000 -> :sswitch_475
        0x60000 -> :sswitch_475
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettings()V

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const v1, 0x7f12037f

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_38

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120b77

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_38
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "FingerprintSettings - Set as screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintlockEnable:Z

    if-eqz v0, :cond_236

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_20d

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Secured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_1d0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1bf

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Current status is Direction lock! Launch Choose lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    :cond_81
    :goto_81
    return-void

    :cond_82
    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - Pattern/PIN/Password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-eqz v0, :cond_257

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_252

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_81

    :cond_a9
    const-string/jumbo v1, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - Pattern/PIN/Password with Biometrics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_26b

    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_81

    :cond_cc
    const-string/jumbo v1, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - OS Upgrade with P/P/P"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_276

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseFingerprintLockSettings()V

    goto :goto_81

    :cond_ec
    const-string/jumbo v1, "lock_screen_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "LockScreen - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_28c

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_129

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v5

    :cond_125
    if-nez v5, :cond_129

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_129
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_13b

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_13b

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_284

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_284

    :cond_13b
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_81

    :cond_140
    const-string/jumbo v1, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "FingerprintSettings - Add fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintLockMain:Z

    if-nez v0, :cond_2f1

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint isn\'t main lock type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIdentityLock:Z

    if-eqz v0, :cond_2d5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_168
    const-string/jumbo v1, "google_setupwizard_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Google Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_325

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_317

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_190
    const-string/jumbo v1, "sec_setupwizard_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_370

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "SEC Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_35f

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_34e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_1bf
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_1d0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1ec

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Current status is Direction lock! Launch Choose lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_1ec
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because if device already secured and has the fingerprint, FingerprintSettings Activity set the fingeprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v6, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_20d
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Nonsecured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_231

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_set_screen_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_231
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_236
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because FingerprintSettings Activity unset the fingeprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0, v1, v2, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v6, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_252
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_81

    :cond_257
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_266

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseFingerprintLockSettings()V

    goto/16 :goto_81

    :cond_266
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_26b
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    :cond_276
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_284
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_28c
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_29b

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_29b
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v0, :cond_2a7

    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_2a7
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_2b6

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b6

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_81

    :cond_2b6
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_2c2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_2c2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_2d0

    :cond_2c2
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_81

    :cond_2d0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_2d5
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-nez v0, :cond_2ec

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2ec

    :cond_2e7
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseFingerprintLockSettings()V

    goto/16 :goto_81

    :cond_2ec
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_2f1
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint is main lock type! This case doesn\'t need UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v6, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    if-nez v0, :cond_81

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_317
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! This case should not be happened. Because if device was already secured and has the fingerprint, this step must be skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81

    :cond_325
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Nonsecured Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_349

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_349
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_81

    :cond_34e
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_35f
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sec_setupwizard_fingerprint"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_81

    :cond_370
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_81
.end method

.method public onDestroy()V
    .registers 3

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSpassSdkCompat:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "SendBroadcast for SpassCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->sendBroadcastWrapperForPassSdk(Landroid/content/Context;)V

    :cond_2c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
