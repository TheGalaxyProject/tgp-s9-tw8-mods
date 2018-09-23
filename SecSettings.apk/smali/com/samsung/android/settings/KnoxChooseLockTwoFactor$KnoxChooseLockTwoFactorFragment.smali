.class public Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockTwoFactorFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;
    }
.end annotation


# static fields
.field private static mChooseLockRequestCode:I

.field private static mCurrentLockTypeIdx:I

.field private static mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

.field private static sUserId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnLater:Landroid/widget/TextView;

.field private btnSetup:Landroid/widget/TextView;

.field private buttomButtonLayout:Landroid/widget/LinearLayout;

.field protected content:Landroid/widget/LinearLayout;

.field private layoutBtnLater:Landroid/widget/LinearLayout;

.field private layoutBtnNext:Landroid/widget/LinearLayout;

.field private mConfimationStarted:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableStatusBarCount:I

.field private mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFingerDisabledByEDM:Z

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyDialog:Landroid/app/Dialog;

.field private mIrisDisabledByEDM:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field mIsEnforcedMultifactorNReset:Z

.field private mIsKnoxVersion270Supported:Z

.field mIsKnoxVersionSupported:Z

.field private mIsSecondStep:Z

.field private mIsSecured:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultifactorAuthEnforced:Z

.field private mNewPassword:Ljava/lang/String;

.field private mNewPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPassWordQuality:I

.field private mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPin:Lcom/android/settingslib/RestrictedPreference;

.field private mRequirePassword:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

.field private mToken:[B

.field private mTokenIris:[B

.field private mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    return v0
.end method

.method static synthetic -get5()Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    return v0
.end method

.method static synthetic -get7()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)I
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPasswordForSDPUnlock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPatternForSDPUnlock()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setBiometricsLock()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startRedactionInterstitial()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    sput v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsKnoxVersion270Supported:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->result_intent:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsKnoxVersionSupported:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    iput v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPassWordQuality:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    iput v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    new-instance v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    sput-object p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    return-void
.end method

.method private checkPasswordForSDPUnlock()V
    .registers 5

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$6;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkPatternForSDPUnlock()V
    .registers 5

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$7;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private disableStatusBar()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableStatusBar()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentLockTypeToString()Ljava/lang/String;
    .registers 5

    const v3, 0x7f1206b0

    const-string/jumbo v0, ""

    sget v1, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    packed-switch v1, :pswitch_data_4a

    :pswitch_b
    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    const-string/jumbo v2, "current locktype index is wrong"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :pswitch_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :pswitch_32
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :pswitch_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121cc3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_b
        :pswitch_26
        :pswitch_32
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_3e
    .end packed-switch
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .registers 19

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v1, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getEnterpriseIdentityIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v9

    :cond_15
    :goto_15
    const/16 v1, 0x2774

    sput v1, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    return-object v9

    :cond_1a
    const/high16 v1, 0x20000

    move/from16 v0, p1

    if-lt v0, v1, :cond_11c

    const/high16 v1, 0x60000

    move/from16 v0, p1

    if-gt v0, v1, :cond_11c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v4

    const/4 v1, 0x4

    if-ge v4, v1, :cond_37

    const/4 v4, 0x4

    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_104

    const-string/jumbo v1, "knox_userId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_70
    const/high16 v1, 0x60000

    move/from16 v0, p1

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    add-int v1, v15, v14

    if-le v1, v13, :cond_d0

    add-int v13, v15, v14

    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    invoke-virtual {v9, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_d0
    add-int v1, v16, v12

    if-le v1, v11, :cond_d6

    add-int v11, v16, v12

    :cond_d6
    add-int v1, v13, v11

    if-le v1, v10, :cond_e2

    add-int v10, v13, v11

    const-string/jumbo v1, "lockscreen.password_min"

    invoke-virtual {v9, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e2
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    move/from16 v0, v16

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    invoke-virtual {v9, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min_symbols"

    invoke-virtual {v9, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min_numeric"

    invoke-virtual {v9, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min_letters"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_15

    :cond_104
    const-string/jumbo v1, "knox_userId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "knox_userId"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_70

    :cond_11c
    const/high16 v1, 0x10000

    move/from16 v0, p1

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v3, v6}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_151

    const-string/jumbo v1, "knox_userId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_15

    :cond_151
    const-string/jumbo v1, "knox_userId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "knox_userId"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_15
.end method

.method private hasEnrolledFingerprint(I)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private hasEnrolledIrises(I)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isBiometricDisabled()V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v1, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v5, "isBiometricAuthenticationEnabledAsUser"

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v3, "KnoxChooseLockTwoFactor"

    const-string/jumbo v4, "isBiometricAuthenticationEnabled(FINGERPRINT) == Utils.EDM_FALSE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v5, "isBiometricAuthenticationEnabledAsUser"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_59

    const-string/jumbo v3, "KnoxChooseLockTwoFactor"

    const-string/jumbo v4, "isBiometricAuthenticationEnabled(IRIS) == Utils.EDM_FALSE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    :cond_59
    return-void
.end method

.method private isSwitchedBioLocktype()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private launchLockType()I
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    const-string/jumbo v2, "launchLockType() called"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    packed-switch v1, :pswitch_data_78

    :cond_10
    :goto_10
    :pswitch_10
    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchLockType() : quality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_2f
    const/high16 v0, 0x60000

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x60000

    if-gt v1, v2, :cond_50

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_50

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_10

    :cond_50
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x30000

    if-gt v1, v2, :cond_10

    const/high16 v0, 0x40000

    goto :goto_10

    :pswitch_61
    const/high16 v0, 0x30000

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x20000

    if-gt v1, v2, :cond_10

    const/high16 v0, 0x20000

    goto :goto_10

    :pswitch_74
    const/high16 v0, 0x10000

    goto :goto_10

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_10
        :pswitch_61
        :pswitch_74
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private setBiometricsLock()V
    .registers 6

    const/16 v4, 0x10

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_31
    :goto_31
    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v3, 0x1000

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_53
    return-void

    :cond_54
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_1a

    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_31
.end method

.method private setEnterpriseIdentityPolicy(I)V
    .registers 30

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v7

    if-eqz v7, :cond_19e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "is_sdp_enabled"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string/jumbo v25, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v8

    if-eqz v8, :cond_5c

    iget-boolean v0, v8, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5c

    iget-boolean v0, v8, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move/from16 v25, v0

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_5c

    const/16 v16, 0x1

    :cond_5c
    const/4 v11, 0x0

    if-eqz v4, :cond_75

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v11

    if-eqz v11, :cond_75

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v13

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v14

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v18

    :cond_75
    if-nez v18, :cond_7a

    const-string/jumbo v18, "com.sec.android.service.singlesignon"

    :cond_7a
    if-eqz v4, :cond_80

    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    :cond_80
    if-eqz v3, :cond_8b

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8b

    const/4 v12, 0x1

    :cond_8b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v25

    if-nez v25, :cond_12b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v25

    :goto_a5
    xor-int/lit8 v10, v25, 0x1

    sget-object v25, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v25, "activity"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const v25, 0x7fffffff

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_12f

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_cf
    :goto_cf
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_cf

    const/4 v9, 0x1

    const-string/jumbo v25, "KnoxChooseLockTwoFactor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "isAuthAppRunningBehind: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10c} :catch_10d

    goto :goto_cf

    :catch_10d
    move-exception v6

    const-string/jumbo v25, "KnoxChooseLockTwoFactor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "SecurityException: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12a
    :goto_12a
    return-void

    :cond_12b
    const/16 v25, 0x1

    goto/16 :goto_a5

    :cond_12f
    if-nez v16, :cond_185

    if-nez v17, :cond_185

    xor-int/lit8 v25, v12, 0x1

    if-nez v25, :cond_185

    xor-int/lit8 v25, v15, 0x1

    if-nez v25, :cond_185

    if-nez v10, :cond_185

    move/from16 v20, v9

    :goto_13f
    :try_start_13f
    const-string/jumbo v25, "KnoxChooseLockTwoFactor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "removeEnterpriseIdentity: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_188

    xor-int/lit8 v25, v20, 0x1

    if-eqz v25, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_12a

    :cond_185
    const/16 v20, 0x1

    goto :goto_13f

    :cond_188
    if-nez v14, :cond_18c

    if-eqz v20, :cond_12a

    :cond_18c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_12a

    :cond_19e
    const-string/jumbo v25, "KnoxChooseLockTwoFactor"

    const-string/jumbo v26, "ekm is null"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catch Ljava/lang/SecurityException; {:try_start_13f .. :try_end_1a7} :catch_10d

    goto :goto_12a
.end method

.method private setPasswordEnabledByPolicy(I)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const/high16 v0, 0x30000

    if-gt p1, v0, :cond_21

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const/high16 v3, 0x10000

    if-gt p1, v3, :cond_18

    move v2, v1

    :cond_18
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    :cond_21
    move v0, v2

    goto :goto_e
.end method

.method private showFirstStep()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const v4, 0x7f120f16

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_20
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2f
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3e
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4d
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5c
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_70

    const-string/jumbo v3, "KnoxChooseLockTwoFactor"

    const-string/jumbo v4, "buttomButtonLayout != null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_70
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_79
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_82
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_8b
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_94
    const v3, 0x7f121cdd

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a8
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void
.end method

.method private showSecondStep()V
    .registers 13

    const v11, 0x7f121cc1

    const v10, 0x7f121a6e

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isBiometricDisabled()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v3, v9}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const v4, 0x7f120f17

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_47
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_76
    :goto_76
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a5
    :goto_a5
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b7

    const-string/jumbo v3, "KnoxChooseLockTwoFactor"

    const-string/jumbo v4, "buttomButtonLayout != null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b7
    const v3, 0x7f121cde

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_cb
    iput-boolean v9, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void

    :cond_ce
    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v3

    if-eqz v3, :cond_e4

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_76

    :cond_e4
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_76

    :cond_ed
    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_103

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a5

    :cond_103
    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a5
.end method

.method private showSensorErrorDialog()V
    .registers 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b2c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120b77

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$5;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[BZ)V
    .registers 8

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "fromKnoxKeyguard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz p3, :cond_4e

    const-string/jumbo v2, "onlyIdentify"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4d
    return-void

    :cond_4e
    const/16 v2, 0x3f7

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_4d

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method

.method private startIrisLockSettings()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.REGISTER_IRIS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "knox_userId"

    iget v3, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3b
    const/16 v2, 0x2718

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method private startRedactionInterstitial()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivity(Landroid/content/Intent;)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected getEnterpriseIdentityIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const v10, 0x7f121a6e

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[FingerPlusActivity] onActivityResult : requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x2774

    if-ne p1, v4, :cond_116

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "requestCode == REQUEST_TWO_FACTOR_SET_FIRST"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v9, :cond_100

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "resultCode == Activity.RESULT_FIRST_USER"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-nez v4, :cond_56

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    iget v6, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_56
    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "two factor : REMOVE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_85

    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    const-string/jumbo v4, "hw_auth_token_iris"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    :try_start_73
    sget v4, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-eqz v4, :cond_7c

    sget v4, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_cb

    :cond_7c
    const-string/jumbo v4, "password"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_85} :catch_e0

    :cond_85
    :goto_85
    if-ne p2, v9, :cond_c7

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_a7

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    if-eqz v4, :cond_a7

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v4

    if-eqz v4, :cond_a7

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "mFingerprintManager.requestUpdateSID called"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    :cond_a7
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    if-eqz v4, :cond_c7

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_c7

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "mIrisManager.requestUpdateSID called"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestUpdateSID([B)Z

    :cond_c7
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSecondStep()V

    :cond_ca
    :goto_ca
    return-void

    :cond_cb
    :try_start_cb
    sget v4, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_85

    const-string/jumbo v4, "password"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_df} :catch_e0

    goto :goto_85

    :catch_e0
    move-exception v0

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    :cond_100
    if-ne p2, v7, :cond_10c

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "resultCode == Activity.RESULT_OK"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :cond_10c
    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "requestCode == else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :cond_116
    const/16 v4, 0x3f7

    if-ne p1, v4, :cond_136

    if-ne p2, v7, :cond_12b

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "[Two Factor] fingeridentified"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :cond_12b
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_ca

    :cond_136
    const/16 v4, 0x2718

    if-ne p1, v4, :cond_178

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "[Two Factor] iris by switch"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "switch_iris"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_16f

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_16a
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    goto/16 :goto_ca

    :cond_16f
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_16a

    :cond_178
    const/16 v4, 0x2717

    if-ne p1, v4, :cond_1b0

    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "[Two Factor] finger by switch"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "switch_fingerprint"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v4

    if-eqz v4, :cond_1a9

    invoke-virtual {v1, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1a4
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    goto/16 :goto_ca

    :cond_1a9
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1a4

    :cond_1b0
    const/16 v4, 0x2719

    if-ne p1, v4, :cond_1c2

    if-ne p2, v7, :cond_ca

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_ca

    :cond_1c2
    const/16 v4, 0x271e

    if-ne p1, v4, :cond_1d4

    if-ne p2, v7, :cond_ca

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_ca

    :cond_1d4
    const-string/jumbo v4, "KnoxChooseLockTwoFactor"

    const-string/jumbo v5, "[Two Factor] else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->setResult(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_ca
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f15007e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "fingerprint"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v1, "pref_lock_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "pref_lock_pin"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "pref_lock_pattern"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "switch_fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "switch_iris"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "pref_lock_enterprise_identity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "password"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsKnoxVersion270Supported:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "pref_two_factor_description"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_146

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_146

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const v6, 0x7f120f4c

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_e4
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_15b

    move v1, v2

    :goto_fe
    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iget v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnterpriseIdentityPolicy(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hw_auth_token_iris"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showFirstStep()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput v1, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void

    :cond_146
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const v6, 0x7f120f4d

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_e4

    :cond_15b
    move v1, v3

    goto :goto_fe
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d016b

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "add buttom button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->enableStatusBar()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "switch_fingerprint"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "switch_fingerprint"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_38

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    const/4 v4, 0x0

    return v4

    :cond_2e
    const-string/jumbo v4, "lock_screen_fingerprint"

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    goto :goto_29

    :cond_38
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_29

    :cond_3c
    const-string/jumbo v4, "switch_iris"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "switch_iris"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_60

    iget v4, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_29

    :cond_5c
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startIrisLockSettings()V

    goto :goto_29

    :cond_60
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_29
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "KnoxChooseLockTwoFactor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : clicked : onPreferenceClick"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    return v6

    :cond_26
    const-string/jumbo v3, "pref_lock_password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    sput v6, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()I

    move-result v2

    const/4 v3, -0x1

    sput v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_43

    sget v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_43
    return v6

    :cond_44
    const-string/jumbo v3, "pref_lock_pin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x2

    sput v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_31

    :cond_51
    const-string/jumbo v3, "pref_lock_pattern"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v3, 0x3

    sput v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_31

    :cond_5e
    const-string/jumbo v3, "pref_lock_enterprise_identity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/16 v3, 0x8

    sput v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_31
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setPasswordEnabledByPolicy(I)V

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnterpriseIdentityPolicy(I)V

    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_37
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_46

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->disableStatusBar()V

    :cond_46
    iget v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    const v4, 0x7f0806fe

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0663

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0599

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "show_button_background"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    :goto_33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_57
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6e

    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    const-string/jumbo v3, "init Later button"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6e
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8a

    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    const-string/jumbo v3, "init Next button"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;-><init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8a
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0664

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v2, 0x7f0a059a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnablePrevButton()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    return-void

    :cond_ab
    move v1, v2

    goto :goto_33
.end method

.method public setEnableNextButton()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    if-nez v1, :cond_12

    :cond_8
    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    const-string/jumbo v2, "next button cannot be null ! : return"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isSwitchedBioLocktype()Z

    move-result v0

    const-string/jumbo v1, "KnoxChooseLockTwoFactor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setup button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4e
.end method

.method public setEnablePrevButton()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    if-nez v0, :cond_12

    :cond_8
    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "prev button cannot be null ! : return"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-eqz v0, :cond_37

    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "MultifactorAuthEnforced : disable later button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnLater:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_36
.end method
