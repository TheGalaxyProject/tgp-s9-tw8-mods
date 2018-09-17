.class public Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static ALWAYS_ON_DISPLAY:I

.field private static ALWAYS_ON_DISPLAY_SWITCH:I

.field private static IRIS_SETTINGS:I

.field private static final MY_USER_ID:I

.field private static NOTIFICATIONS_MASTER:I

.field private static SAMSUNG_PASS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SECURE_FOLDER:I

.field private static SMART_LOCK:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static WORK_PROFILE_FINGERPRINTS:I

.field private static WORK_PROFILE_NOTIFICATIONS:I

.field public static mContext:Landroid/content/Context;

.field private static mSmartLockSummary:Ljava/lang/String;

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private isKioskContainer:Z

.field private mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAppOpsSettings:Landroid/support/v7/preference/Preference;

.field private mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private final mBiometricsBackupObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFindMyMobile:Landroid/support/v7/preference/Preference;

.field private mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromCoverSetting:Z

.field private mFromPackageInstaller:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mIsAdmin:Z

.field private mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Lcom/samsung/android/settings/SecGearPreference;

.field private mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

.field private mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mLockscreenSelectedValueProfile:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSamsungPass:Landroid/support/v7/preference/Preference;

.field private mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSdcardEncryption:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSecure:Z

.field private mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mWasHighted:Z

.field private otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SecGearPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecRestrictedPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get23()Landroid/os/PowerManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/hardware/display/DisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .registers 1

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return p0
.end method

.method static synthetic -set1(I)I
    .registers 1

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .registers 1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isUCMODEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updatePreferenceRelatedAOD()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateShowInformationPrefState()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->apppermissionmonitorSwitchChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->resetAccessabilityFeature()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateBiometricsState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWasHighted:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue(I)V
    .registers 31

    const-string/jumbo v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v16

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnforced()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_45

    if-eqz v16, :cond_fb

    invoke-static {}, Lcom/android/settings/Utils;->getUCMKeyguardVendorName()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_38
    if-eqz v17, :cond_ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_45
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v28, v0

    invoke-static/range {v25 .. v28}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v25, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v12, 0x0

    :goto_6d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_10c

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v25, Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    const-string/jumbo v26, "trust_agent"

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecRestrictedPreference;->setIntent(Landroid/content/Intent;)V

    if-eqz v8, :cond_de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6d

    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    goto/16 :goto_45

    :cond_fb
    if-eqz p1, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_45

    :cond_10c
    const-string/jumbo v25, "secured_lock_settigns"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v25

    if-nez v25, :cond_15b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    const v22, 0x7f121018

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_14e

    const v22, 0x7f121019

    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(I)V

    :cond_15b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_16f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_17a

    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->getOrder()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setOrder(I)V

    :cond_18f
    const-string/jumbo v25, "show_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "lock_screen_show_notifications"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_61e

    const/4 v10, 0x1

    :goto_1c5
    const v18, 0x7f1210cf

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1dc

    const v18, 0x7f1210ce

    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v10, :cond_207

    const v18, 0x7f121b7e

    :cond_207
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_219
    const-string/jumbo v25, "lock_app_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_289

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_62e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_621

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_26b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "aod_mode"

    invoke-static/range {v26 .. v26}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_289
    const-string/jumbo v25, "find_my_mobile"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2ac

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_2ac

    const/4 v15, 0x1

    :cond_2ac
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v11

    if-eqz v15, :cond_2d3

    xor-int/lit8 v25, v11, 0x1

    if-eqz v25, :cond_2d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    move-object/from16 v25, v0

    const v26, 0x7f120fee

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_2d3
    const-string/jumbo v25, "smart_scan"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "finger_scanner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "iris_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "silent_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "samsung_pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    const-string/jumbo v25, "app_ops_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    const-string/jumbo v25, "app_permission_monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_3d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v25, "SEAMService"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v20

    const/4 v6, 0x1

    :try_start_37b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->isAPMEnabled(I)Z

    move-result v6

    new-instance v25, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_37b .. :try_end_3ab} :catch_649
    .catch Ljava/lang/Throwable; {:try_start_37b .. :try_end_3ab} :catch_63a

    :cond_3ab
    :goto_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v26, v0

    if-eqz v6, :cond_658

    const v25, 0x7f121b7e

    :goto_3cc
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_3d3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v14, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_410

    if-eqz v14, :cond_65d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_410
    :goto_410
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v26

    const/16 v27, 0xc

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_446

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v14, :cond_446

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_446
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateShowInformationPrefState()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateBiometricsState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4a3

    const/high16 v25, 0x20000

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_474

    const/high16 v25, 0x30000

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_678

    :cond_474
    :goto_474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_487

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_49a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_49a
    const-string/jumbo v25, "LockscreenMenuSettings"

    const-string/jumbo v26, "Disabling Irises and Fingerprints menu for SD in case of Pin/Pattern as locktype"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a3
    if-eqz v16, :cond_4f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_4f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_506

    if-eqz v14, :cond_506

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_51b

    if-eqz v14, :cond_51b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_51b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_LockScreen_DisableUnlockVI"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_682

    const/4 v7, 0x0

    :goto_529
    const-string/jumbo v25, "screen_transition_effect"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "screen_transition_effect"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_685

    const/16 v25, 0x1

    :goto_568
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isBiometricsLockEnabled(Landroid/content/Context;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    const-string/jumbo v25, "LockscreenMenuSettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "isKioskContainer "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5c9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5e4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5e4
    const-string/jumbo v25, "key_private_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_60a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_60a
    const-string/jumbo v25, "secure_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

    return-void

    :cond_61e
    const/4 v10, 0x0

    goto/16 :goto_1c5

    :cond_621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_26b

    :cond_62e
    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_26b

    :catch_63a
    move-exception v23

    const-string/jumbo v25, "LockscreenMenuSettings"

    const-string/jumbo v26, "failed set apmstatus Throwable"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3ab

    :catch_649
    move-exception v9

    const-string/jumbo v25, "LockscreenMenuSettings"

    const-string/jumbo v26, "failed get apmstatus"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3ab

    :cond_658
    const v25, 0x7f1201ff

    goto/16 :goto_3cc

    :cond_65d
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v25

    if-eqz v25, :cond_410

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_410

    :cond_678
    const/high16 v25, 0x10000

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_4a3

    goto/16 :goto_474

    :cond_682
    const/4 v7, 0x1

    goto/16 :goto_529

    :cond_685
    const/16 v25, 0x0

    goto/16 :goto_568
.end method

.method private RemoveMenu()V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v11

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.aodservice"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_357

    const/4 v7, 0x1

    :goto_59
    const-string/jumbo v18, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v18, "sec_biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v18, "sec_lock_and_always_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v18, "sec_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v5, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a6

    if-nez v11, :cond_9b

    if-eqz v8, :cond_a6

    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_35a

    xor-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_35a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_bd
    :goto_bd
    if-eqz v4, :cond_19e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_cf

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_e1

    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_e1

    if-nez v11, :cond_e1

    if-nez v8, :cond_e1

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_ec

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_100

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_10a

    :cond_100
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_10a

    if-nez v11, :cond_10a

    if-eqz v8, :cond_115

    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_125

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_139

    :cond_125
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_139

    if-nez v11, :cond_139

    if-nez v8, :cond_139

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_144

    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_154

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_166

    :cond_154
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_166

    if-nez v11, :cond_166

    if-nez v8, :cond_166

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_171

    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_171
    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_173
    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_186

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_377

    const/4 v14, 0x1

    :cond_186
    if-nez v14, :cond_19e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mScreenTransitionEffect:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_19e
    if-eqz v13, :cond_22e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c1

    if-eqz v9, :cond_1c1

    if-eqz v7, :cond_1b6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1c1

    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1ea

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1dd

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_1df

    :cond_1dd
    if-eqz v9, :cond_1ea

    :cond_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_20b

    if-eqz v9, :cond_20b

    if-eqz v7, :cond_200

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_20b

    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_20b
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_221

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setEnabled(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setEnabled(Z)V

    :cond_221
    if-eqz v9, :cond_385

    if-nez v12, :cond_37b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_22e
    :goto_22e
    if-eqz v16, :cond_2f4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_252

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_283

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_276

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_276

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_283

    :cond_276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a0

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2bb

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_2bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2bb
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2d6
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v19, "persona"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v18

    if-nez v18, :cond_2f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2f4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v18, v0

    if-eqz v18, :cond_356

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_31d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_330

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_343

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_356

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_356
    return-void

    :cond_357
    const/4 v7, 0x0

    goto/16 :goto_59

    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_bd

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_bd

    :cond_377
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_173

    :cond_37b
    const v18, 0x7f120178

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto/16 :goto_22e

    :cond_385
    if-nez v12, :cond_22e

    const v18, 0x7f1210d6

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_22e
.end method

.method private apppermissionmonitorSwitchChanged(Z)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.APP_PERMISSION_MONITOR_SWITCH_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "switch_status"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppPermissionMonitor:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_42

    const v4, 0x7f121b7e

    :goto_26
    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    const-string/jumbo v4, "SEAMService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v2

    :try_start_34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, v4, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->APMSwitchChanged(IZ)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startApppermissionmonitor()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_41} :catch_46

    :cond_41
    :goto_41
    return-void

    :cond_42
    const v4, 0x7f1201ff

    goto :goto_26

    :catch_46
    move-exception v3

    const-string/jumbo v4, "LockscreenMenuSettings"

    const-string/jumbo v5, "failed change apmstatus Throwable"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41

    :catch_54
    move-exception v0

    const-string/jumbo v4, "LockscreenMenuSettings"

    const-string/jumbo v5, "failed change apmstatus"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v22

    xor-int/lit8 v5, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    const/16 v23, -0x2710

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_406

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v22

    if-nez v22, :cond_3fe

    if-eqz v5, :cond_402

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move/from16 v22, v0

    :goto_57
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    const v22, 0x7f1500e1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    const v22, 0x7f1500d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v22, "unlock_set_or_change"

    sget v23, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    sget v23, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v22 .. v23}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    const/16 v23, -0x2710

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v22

    if-eqz v22, :cond_15e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_15e

    const v22, 0x7f1500f6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    const v22, 0x7f1500fd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v25, v0

    invoke-static/range {v22 .. v25}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_10d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    :cond_10d
    const v22, 0x7f1500cd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->initLockscreenNotificationsForProfile()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v22

    if-nez v22, :cond_40a

    const-string/jumbo v22, "unlock_set_or_change_profile"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f121032

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v22, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    :cond_15e
    :goto_15e
    const-string/jumbo v22, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/samsung/android/settings/SecGearPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_178

    check-cast v21, Lcom/samsung/android/settings/SecGearPreference;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V

    :cond_178
    const/4 v8, 0x0

    const-string/jumbo v22, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    sget v25, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v22

    if-eqz v22, :cond_41e

    const/16 v22, 0x1

    :goto_1a8
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    sget v23, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v22

    if-nez v22, :cond_427

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    sget v23, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v22

    if-eqz v22, :cond_422

    const v8, 0x7f121ccd

    :goto_1d0
    const v22, 0x7f15008a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->InitValue(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->RemoveMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move/from16 v22, v0

    if-eqz v22, :cond_27d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_27d

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_27d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_27d

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v22

    if-eqz v22, :cond_456

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v22

    if-nez v22, :cond_234

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isUCMODEEnabled()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_234

    const v22, 0x7f1500e6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    :cond_234
    :goto_234
    new-instance v3, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_27d

    invoke-virtual {v3}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v22

    if-eqz v22, :cond_27d

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v18

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_462

    const v22, 0x7f1500eb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    :goto_26a
    const-string/jumbo v22, "sdEncpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_27d
    const-string/jumbo v22, "visiblepattern_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v22, "unification"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2d1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-nez v22, :cond_32f

    new-instance v22, Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    const-string/jumbo v23, "other_security_settings"

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    const v23, 0x7f12140f

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    const v23, 0x7f121410

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    const-string/jumbo v23, "com.samsung.android.settings.OtherSecuritySettings"

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;->setFragment(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_32f
    const-string/jumbo v22, "sec_security_category"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v25

    const-string/jumbo v26, "com.android.settings.category.ia.security"

    invoke-interface/range {v22 .. v26}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v20

    const/4 v9, 0x0

    if-eqz v20, :cond_4d7

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_4d7

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_362
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4d7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/Preference;

    const-string/jumbo v22, "security_status_security_patch_level"

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_391

    const v22, 0x7f121877

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    new-instance v22, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_391
    const-string/jumbo v22, "security_status_find_device"

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3e0

    sget-object v22, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_3e0

    const v22, 0x7f120b15

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v22, 0x7f120b1b

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const-string/jumbo v22, "sec_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v22, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_3e0
    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4d2

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "security_status_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4d2

    invoke-virtual {v15, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_362

    :cond_3fe
    const/16 v22, 0x1

    goto/16 :goto_57

    :cond_402
    const/16 v22, 0x0

    goto/16 :goto_57

    :cond_406
    const/16 v22, 0x0

    goto/16 :goto_57

    :cond_40a
    const-string/jumbo v22, "unlock_set_or_change_profile"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_15e

    :cond_41e
    const/16 v22, 0x0

    goto/16 :goto_1a8

    :cond_422
    const v8, 0x7f121ccc

    goto/16 :goto_1d0

    :cond_427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    sget v23, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v22

    sparse-switch v22, :sswitch_data_59e

    goto/16 :goto_1d0

    :sswitch_438
    const v8, 0x7f1202d7

    goto/16 :goto_1d0

    :sswitch_43d
    const v8, 0x7f120856

    goto/16 :goto_1d0

    :sswitch_442
    const v8, 0x7f121cd8

    goto/16 :goto_1d0

    :sswitch_447
    const v8, 0x7f121cda

    goto/16 :goto_1d0

    :sswitch_44c
    const v8, 0x7f121cd6

    goto/16 :goto_1d0

    :sswitch_451
    const v8, 0x7f121cbf

    goto/16 :goto_1d0

    :cond_456
    const v22, 0x7f1500fc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_234

    :cond_462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_4c6

    if-nez v18, :cond_47a

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_4a0

    :cond_47a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_494

    const v22, 0x7f1500f8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_26a

    :cond_494
    const v22, 0x7f1500f7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_26a

    :cond_4a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_4ba

    const v22, 0x7f1500f9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_26a

    :cond_4ba
    const v22, 0x7f1500f7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_26a

    :cond_4c6
    const v22, 0x7f1500f8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_26a

    :cond_4d2
    invoke-virtual {v13, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_362

    :cond_4d7
    if-lez v9, :cond_4f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-object/from16 v24, v0

    const-string/jumbo v25, "com.android.settings.category.ia.security"

    invoke-interface/range {v24 .. v25}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v13, v2}, Lcom/android/settings/security/SecurityFeatureProvider;->updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    :cond_4f9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_59c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_516

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_529

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_53c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_53c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_54f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_54f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_562

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_575

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_588

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_588
    const-string/jumbo v22, "encryption"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_59c

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_59c
    return-object v13

    nop

    :sswitch_data_59e
    .sparse-switch
        0x9100 -> :sswitch_438
        0x10000 -> :sswitch_442
        0x10001 -> :sswitch_43d
        0x20000 -> :sswitch_447
        0x30000 -> :sswitch_447
        0x40000 -> :sswitch_44c
        0x50000 -> :sswitch_44c
        0x60000 -> :sswitch_44c
        0x70000 -> :sswitch_451
        0x90000 -> :sswitch_438
    .end sparse-switch
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    const/high16 v2, 0x80000

    :cond_14
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x21c

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f12019c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    return-object v0
.end method

.method public static getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/trustagent/TrustAgentManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v13, 0x80

    invoke-virtual {v6, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    sget v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x10

    invoke-static {p0, v13, v12}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v3, :cond_9e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9e

    const/4 v4, 0x0

    :goto_2e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_9e

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v12, :cond_41

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_41
    invoke-interface {p1, v7, v6}, Lcom/android/settings/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-static {v6, v7}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v11

    if-eqz v11, :cond_3e

    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v12, :cond_3e

    invoke-static {v7}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_3e

    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3e

    if-eqz v1, :cond_76

    invoke-static {v7}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v12}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_76

    iput-object v1, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_76
    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v12, :cond_9b

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v12, Landroid/content/pm/ServiceInfo;->labelRes:I

    const/4 v9, 0x0

    :try_start_7f
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_86} :catch_9f

    move-result-object v9

    :goto_87
    invoke-static {v9, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9b

    if-eqz v9, :cond_9b

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v12, :cond_9b

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_9b
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    return-object v10

    :catch_9f
    move-exception v2

    const-string/jumbo v12, "LockscreenMenuSettings"

    const-string/jumbo v13, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v12, v13}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_87
.end method

.method private getBiometricsSummary(ZZZZ)Ljava/lang/String;
    .registers 17

    const-string/jumbo v3, ", "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_78

    const-string/jumbo v3, "\u060c "

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "4digits_pin_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8c

    const/4 v6, 0x1

    :goto_3c
    const/4 v7, 0x0

    :try_start_3d
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "knox_finger_print_plus"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3d .. :try_end_47} :catch_90

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8e

    const/4 v7, 0x1

    :goto_4c
    const-string/jumbo v9, "LockscreenMenuSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMultifactorEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1f5

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_290

    :cond_73
    :goto_73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_78
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    const-string/jumbo v3, "\u3001"

    goto :goto_28

    :cond_82
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    const-string/jumbo v3, "\uff0c"

    goto :goto_28

    :cond_8c
    const/4 v6, 0x0

    goto :goto_3c

    :cond_8e
    const/4 v7, 0x0

    goto :goto_4c

    :catch_90
    move-exception v5

    const-string/jumbo v9, "LockscreenMenuSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SettingNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_4c

    :sswitch_b3
    if-eqz p2, :cond_cf

    if-eqz p3, :cond_cf

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_cf
    if-eqz p2, :cond_e9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_e9
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :sswitch_102
    if-eqz p2, :cond_13a

    if-eqz p3, :cond_13a

    if-eqz v6, :cond_121

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cdb

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_121
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cda

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_13a
    if-eqz p2, :cond_170

    if-eqz v6, :cond_157

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cdb

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_157
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cda

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_170
    if-eqz v6, :cond_18b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cdb

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_18b
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cda

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :sswitch_1a4
    if-eqz p2, :cond_1c1

    if-eqz p3, :cond_1c1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd6

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_1c1
    if-eqz p2, :cond_1dc

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd6

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_1dc
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121cd6

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121be1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_1f5
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_2aa

    :goto_200
    if-eqz p1, :cond_20f

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120381

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20f
    if-eqz p4, :cond_21e

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f12192d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21e
    if-eqz p3, :cond_22d

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120e61

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22d
    if-eqz p2, :cond_73

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120b24

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :sswitch_23e
    const v9, 0x7f120856

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_200

    :sswitch_249
    const v9, 0x7f1202d7

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_200

    :sswitch_254
    const v9, 0x7f121cd8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_200

    :sswitch_25f
    if-eqz v6, :cond_26c

    const v9, 0x7f121cdb

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_200

    :cond_26c
    const v9, 0x7f121cda

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_200

    :sswitch_277
    const v9, 0x7f121cd6

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_200

    :sswitch_283
    const v9, 0x7f121cbf

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_200

    nop

    :sswitch_data_290
    .sparse-switch
        0x10000 -> :sswitch_b3
        0x20000 -> :sswitch_102
        0x30000 -> :sswitch_102
        0x40000 -> :sswitch_1a4
        0x50000 -> :sswitch_1a4
        0x60000 -> :sswitch_1a4
    .end sparse-switch

    :sswitch_data_2aa
    .sparse-switch
        0x9100 -> :sswitch_249
        0x10000 -> :sswitch_254
        0x10001 -> :sswitch_23e
        0x20000 -> :sswitch_25f
        0x30000 -> :sswitch_25f
        0x40000 -> :sswitch_277
        0x50000 -> :sswitch_277
        0x60000 -> :sswitch_277
        0x70000 -> :sswitch_283
        0x90000 -> :sswitch_249
    .end sparse-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v5, 0x7f121ccd

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1c
    return-object v4

    :cond_1d
    const v5, 0x7f121ccc

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_37

    const/4 v1, 0x1

    :cond_37
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_46

    const/4 v3, 0x1

    :cond_46
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x100

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_55

    const/4 v0, 0x1

    :cond_55
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_64

    const/4 v2, 0x1

    :cond_64
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getBiometricsSummary(ZZZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .registers 7

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_12

    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_22

    if-nez v0, :cond_14

    const v1, 0x7f1500e9

    :goto_11
    return v1

    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_14
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    const v1, 0x7f1500d7

    goto :goto_11

    :cond_1e
    const v1, 0x7f1500d6

    goto :goto_11

    :cond_22
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_54

    goto :goto_11

    :sswitch_2a
    if-eqz v0, :cond_34

    const v1, 0x7f1500d9

    goto :goto_11

    :sswitch_30
    const v1, 0x7f1500d7

    goto :goto_11

    :cond_34
    const v1, 0x7f1500f0

    goto :goto_11

    :sswitch_38
    if-eqz v0, :cond_3e

    const v1, 0x7f1500db

    goto :goto_11

    :cond_3e
    const v1, 0x7f1500f4

    goto :goto_11

    :sswitch_42
    if-eqz v0, :cond_48

    const v1, 0x7f1500d8

    goto :goto_11

    :cond_48
    const v1, 0x7f1500ed

    goto :goto_11

    :sswitch_4c
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_11

    nop

    :sswitch_data_54
    .sparse-switch
        0x9100 -> :sswitch_2a
        0x10000 -> :sswitch_2a
        0x10001 -> :sswitch_30
        0x20000 -> :sswitch_38
        0x30000 -> :sswitch_38
        0x40000 -> :sswitch_42
        0x50000 -> :sswitch_42
        0x60000 -> :sswitch_42
        0x70000 -> :sswitch_42
        0x80000 -> :sswitch_4c
        0x90000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private initLockscreenNotificationsForProfile()V
    .registers 12

    const v10, 0x7f121010

    const v9, 0x7f12100e

    const v8, 0x7f12100c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_notifications_profile"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v6, :cond_26

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->clearRestrictedItems()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    invoke-direct {p0, v3, v4, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v6, :cond_6c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-direct {p0, v1, v2, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_6c
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/-$Lambda$VMxG6bNkjxv52LvIa21Ce4dPTW8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_b0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_af
    return-void

    :cond_b0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEnabled(Z)V

    goto :goto_af
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .registers 11

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_1e
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_21} :catch_29

    move-result-object v5

    :cond_22
    :goto_22
    if-nez v5, :cond_2e

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :catch_29
    move-exception v3

    const-string/jumbo v5, ""

    goto :goto_22

    :cond_2e
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_46
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private static isUCMODEEnabled()Z
    .registers 3

    const-string/jumbo v0, "2"

    const-string/jumbo v1, "ro.boot.ucs_mode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private launchConfirmDeviceLockForUnification()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f121cc9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    :cond_22
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f121cca

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    :cond_25
    return-void
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0xb

    :goto_11
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    const/16 v2, 0xa

    goto :goto_11
.end method

.method private makeAccessiblityDisablePopup()V
    .registers 15

    const/4 v1, 0x0

    const-string/jumbo v2, "\u2011"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_display_magnification_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_162

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "accessibility_display_magnification_navbar_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_165

    const/4 v3, 0x1

    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "finger_magnifier"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_168

    const/4 v5, 0x1

    :goto_3a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "FmMagnifier"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_16b

    const/4 v4, 0x1

    :goto_49
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "high_contrast"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_16e

    const/4 v6, 0x1

    :goto_58
    const-string/jumbo v10, ""

    const-string/jumbo v7, ""

    const v11, 0x7f120195

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_92

    const/4 v1, 0x1

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    if-eqz v3, :cond_b3

    add-int/lit8 v1, v1, 0x1

    const v11, 0x7f120082

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f120082

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b3
    if-nez v5, :cond_b7

    if-eqz v4, :cond_d6

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    const v11, 0x7f120068

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f120068

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d6
    if-eqz v6, :cond_f7

    add-int/lit8 v1, v1, 0x1

    const v11, 0x7f121273

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f121273

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f7
    const/4 v11, 0x1

    if-ne v1, v11, :cond_171

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const v12, 0x7f120193

    invoke-virtual {p0, v12, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120178

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const v12, 0x7f120192

    invoke-virtual {p0, v12, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_12a
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v13, 0x7f120194

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const/high16 v13, 0x1040000

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$14;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$14;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_162
    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_165
    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_168
    const/4 v5, 0x0

    goto/16 :goto_3a

    :cond_16b
    const/4 v4, 0x0

    goto/16 :goto_49

    :cond_16e
    const/4 v6, 0x0

    goto/16 :goto_58

    :cond_171
    const/4 v11, 0x2

    if-lt v1, v11, :cond_180

    const v11, 0x7f120196

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_12a

    :cond_180
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .registers 6

    move v1, p2

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12220d

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const-string/jumbo v2, "fingerPref"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$15;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$15;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v0, :cond_23

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_23
    return-void
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v2, "lock_screen_menu_settings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    return v3

    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    return v2

    :cond_1a
    return v3
.end method

.method private privateModeSummaryUpdate()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b7d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_17
.end method

.method private static removeFindMyMobile(Landroid/content/Context;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_f

    const/4 v3, 0x1

    :cond_f
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    const-string/jumbo v5, "LockscreenMenuSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSupportLMM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "LockscreenMenuSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasFMMDMClient : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "LockscreenMenuSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasMobileTracker : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.mt"

    invoke-static {p0, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "LockscreenMenuSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSmsCapable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v5

    if-nez v5, :cond_a3

    if-nez v1, :cond_a3

    if-nez v2, :cond_a3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_a5

    :cond_a3
    const/4 v4, 0x1

    :cond_a4
    :goto_a4
    return v4

    :cond_a5
    if-nez v3, :cond_ad

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_ad

    const/4 v4, 0x1

    goto :goto_a4

    :cond_ad
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportFMM()Z

    move-result v5

    if-nez v5, :cond_a4

    const/4 v4, 0x1

    goto :goto_a4
.end method

.method private resetAccessabilityFeature()V
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_9d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a0

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a3

    const/4 v2, 0x1

    :goto_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a5

    const/4 v1, 0x1

    :goto_38
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a7

    const/4 v3, 0x1

    :goto_46
    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    :cond_55
    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6b
    if-eqz v2, :cond_77

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_77
    if-eqz v1, :cond_83

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_83
    if-eqz v3, :cond_9c

    const-string/jumbo v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9c
    return-void

    :cond_9d
    const/4 v0, 0x1

    goto/16 :goto_1c

    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_1c

    :cond_a3
    const/4 v2, 0x0

    goto :goto_2a

    :cond_a5
    const/4 v1, 0x0

    goto :goto_38

    :cond_a7
    const/4 v3, 0x0

    goto :goto_46
.end method

.method private setLinkedDataView()V
    .registers 14

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_117

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v10, :cond_117

    new-instance v10, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "menu"

    const-string/jumbo v11, "backup"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "flowId"

    const/16 v11, 0x2338

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f1216d5

    iput v10, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_8d

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8d

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/high16 v10, 0x10200000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "flowId"

    const/16 v11, 0x2339

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f12018d

    iput v10, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_8d
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "flowId"

    const/16 v11, 0x233a

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f120fdb

    iput v10, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.samsung.android.applock"

    const-string/jumbo v11, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "flowId"

    const/16 v11, 0x1208

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f120223

    iput v10, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_f8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_f8

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_f8
    if-eqz v5, :cond_ff

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_ff
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const-string/jumbo v10, "applock"

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_112

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_112
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_117
    return-void
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 9

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_28

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-eqz v3, :cond_28

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V

    :cond_28
    return-void
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    move-object v2, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0366

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a06e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f0a051a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1219cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f120608

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v6, 0x7f120601

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startApppermissionmonitor()V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.APP_PERMISSION_MONITOR_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "which_fragment"

    const-string/jumbo v3, "APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:show_fragment"

    const-string/jumbo v3, "com.samsung.android.apppermissionmonitor.APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_26
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_26 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_29
.end method

.method private startFaceSettings(Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "startFaceSettings isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b6d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_40
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_43} :catch_44

    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_43
.end method

.method private startFingerprintScanner()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b6d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3d
.end method

.method private startIrisSettings()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b6d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_39
.end method

.method private startSmartScanSettings()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b6d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_27
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-nez v2, :cond_2e

    return-void

    :cond_2e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_41
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_44
.end method

.method private unifyLocks()V
    .registers 8

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_1c
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void

    :cond_3a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1c
.end method

.method private unifyUncompliantLocks()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121027

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private ununifyLocks()V
    .registers 7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121028

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateAlwaysOnScreenSummary()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_5e

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v2, 0x1

    :goto_18
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_61

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2e
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_3d

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_3d
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_82

    :cond_4a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_79

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120190

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    const/4 v2, 0x0

    goto :goto_18

    :cond_61
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNavigationBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120198

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2e

    :cond_70
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120199

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2e

    :cond_79
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120191

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5e

    :cond_82
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_92

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_98

    :cond_92
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_5e

    :cond_98
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_5e
.end method

.method private updateBiometricsState()V
    .registers 11

    const v9, 0x7f120be8

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_81

    const-string/jumbo v3, "LockscreenMenuSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Utils.isFingerprintDisabledByDPM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_47
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4c
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_81

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->numEnrolledFingerprints()I

    move-result v1

    if-lez v1, :cond_166

    const/4 v2, 0x1

    if-ne v1, v8, :cond_14a

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120bf9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_74
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_174

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_7e
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_81
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_bd

    if-nez v0, :cond_95

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isIrisDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_9a

    :cond_95
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_9a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_bd

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_177

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120e54

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_b0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_181

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_ba
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_bd
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_fd

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_d6

    :cond_d1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_d6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_fd

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_184

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120adb

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_f0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_18e

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_fa
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_fd
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_149

    if-nez v0, :cond_111

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isSmartScanDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_116

    :cond_111
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_116
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_191

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_191

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_191

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_191

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1219ee

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_13c
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_146

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    :cond_146
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_149
    return-void

    :cond_14a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120bfc

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    :cond_166
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_74

    :cond_16d
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_74

    :cond_174
    move v3, v4

    goto/16 :goto_7e

    :cond_177
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120e37

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_b0

    :cond_181
    move v3, v4

    goto/16 :goto_ba

    :cond_184
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120acc

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_f0

    :cond_18e
    move v3, v4

    goto/16 :goto_fa

    :cond_191
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1219ed

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_13c
.end method

.method private updateLockscreenNotificationsForProfile()V
    .registers 5

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v2, :cond_c

    return-void

    :cond_c
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v2, :cond_36

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    :goto_1c
    if-nez v1, :cond_38

    const v2, 0x7f12100c

    :goto_21
    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setSummary(I)V

    return-void

    :cond_36
    const/4 v0, 0x1

    goto :goto_1c

    :cond_38
    if-eqz v0, :cond_3e

    const v2, 0x7f121010

    goto :goto_21

    :cond_3e
    const v2, 0x7f12100e

    goto :goto_21
.end method

.method private updatePreferenceRelatedAOD()V
    .registers 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :goto_13
    const-string/jumbo v2, "sec_lock_and_always_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-void

    :cond_29
    const/4 v1, 0x0

    goto :goto_13

    :cond_2b
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v1, :cond_45

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrderingAsAdded(Z)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_44
.end method

.method private updateShowInformationPrefState()V
    .registers 7

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode"

    sget v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    const/4 v0, 0x1

    :goto_1a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f1210d5

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_37
    :goto_37
    if-eqz v1, :cond_57

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f1205cd

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const/4 v0, 0x0

    goto :goto_1a

    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportClockPackageSetting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f1205cb

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    goto :goto_37

    :cond_57
    if-nez v0, :cond_62

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f120de6

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_41

    :cond_62
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f120de5

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_41
.end method

.method private updateUnificationPreference()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_18
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1130

    return v0
.end method

.method protected isGuestUser()Z
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    return v1

    :cond_1f
    return v3
.end method

.method synthetic lambda$-com_samsung_android_settings_lockscreen_LockscreenMenuSettings_43757(Landroid/support/v7/preference/Preference;)Z
    .registers 5

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public moveFindMyMobile()V
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f120b15

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public numEnrolledFingerprints()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_15
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 14

    const/4 v5, 0x0

    const/4 v9, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_25

    if-ne p2, v9, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f120b15

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_25
    const/16 v0, 0x80

    if-ne p1, v0, :cond_38

    if-ne p2, v9, :cond_38

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    return-void

    :cond_38
    const/16 v0, 0x81

    if-ne p1, v0, :cond_4b

    if-ne p2, v9, :cond_4b

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    return-void

    :cond_4b
    const/16 v0, 0x82

    if-ne p1, v0, :cond_55

    if-ne p2, v9, :cond_55

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    return-void

    :cond_55
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_6c

    if-ne p2, v9, :cond_6c

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_66

    :try_start_5f
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5f .. :try_end_64} :catch_67

    :goto_64
    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_66
    return-void

    :catch_67
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_64

    :cond_6c
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/trustagent/TrustAgentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static {v2, v3}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b2

    const-string/jumbo v2, "coversetting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    :cond_b2
    const v2, 0x7f12101a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz p1, :cond_d1

    const-string/jumbo v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_d1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .registers 4

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecGearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LockscreenAndSecurity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 24

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    const-string/jumbo v17, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const v13, 0x7f1210cf

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.aodservice"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_37

    const v13, 0x7f1210ce

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v7, :cond_55

    const v13, 0x7f121b7e

    :cond_55
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_show_notifications"

    if-eqz v7, :cond_9e

    const/16 v17, 0x1

    :goto_70
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b037d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    if-eqz v7, :cond_a1

    const/16 v17, 0x3e8

    :goto_90
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_9d
    :goto_9d
    return v15

    :cond_9e
    const/16 v17, 0x0

    goto :goto_70

    :cond_a1
    const/16 v17, 0x0

    goto :goto_90

    :cond_a4
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "accessibility_display_magnification_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_152

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "accessibility_display_magnification_navbar_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_154

    const/4 v8, 0x1

    :goto_d4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "finger_magnifier"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_157

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "FmMagnifier"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_159

    const/4 v9, 0x1

    :goto_f3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "high_contrast"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_15b

    const/4 v10, 0x1

    :goto_103
    if-eqz v14, :cond_15d

    sget-object v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_113

    if-nez v8, :cond_113

    if-nez v9, :cond_113

    if-eqz v10, :cond_15d

    :cond_113
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup()V

    :goto_116
    if-eqz v14, :cond_13a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_13a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f120197

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    :cond_13a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b02fe

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_9d

    :cond_152
    const/4 v8, 0x1

    goto :goto_d4

    :cond_154
    const/4 v8, 0x0

    goto/16 :goto_d4

    :cond_157
    const/4 v9, 0x1

    goto :goto_f3

    :cond_159
    const/4 v9, 0x0

    goto :goto_f3

    :cond_15b
    const/4 v10, 0x0

    goto :goto_103

    :cond_15d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "aod_mode"

    if-eqz v14, :cond_178

    const/16 v17, 0x1

    :goto_168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_116

    :cond_178
    const/16 v17, 0x0

    goto :goto_168

    :cond_17b
    const-string/jumbo v17, "visiblepattern_profile"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v17

    if-eqz v17, :cond_19f

    const/16 v17, 0x0

    return v17

    :cond_19f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_9d

    :cond_1b4
    const-string/jumbo v17, "unification"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v17

    if-eqz v17, :cond_1d8

    const/16 v17, 0x0

    return v17

    :cond_1d8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_21e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v17

    const/high16 v18, 0x10000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_21c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v4

    :goto_208
    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    const-string/jumbo v18, "unification_dialog"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_9d

    :cond_21c
    const/4 v4, 0x0

    goto :goto_208

    :cond_21e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f121cc9

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sget v17, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v18, 0x82

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v17

    if-nez v17, :cond_9d

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    goto/16 :goto_9d

    :cond_24f
    const-string/jumbo v17, "app_permission_monitor"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_269

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->apppermissionmonitorSwitchChanged(Z)V

    goto/16 :goto_9d

    :cond_269
    const-string/jumbo v17, "screen_transition_effect"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "screen_transition_effect"

    move-object/from16 v17, p2

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2af

    const/16 v17, 0x1

    :goto_287
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2b2

    const/16 v17, 0x3e8

    :goto_29e
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x2102

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_9d

    :cond_2af
    const/16 v17, 0x0

    goto :goto_287

    :cond_2b2
    const/16 v17, 0x0

    goto :goto_29e
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 17

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ffe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_2e
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121cc9

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_47
    :goto_47
    const/4 v0, 0x1

    return v0

    :cond_49
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    return v0

    :cond_62
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121028

    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_47

    :cond_8b
    const-string/jumbo v0, "secured_lock_settigns"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ffe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_af
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_b4
    const-string/jumbo v0, "find_my_mobile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_47

    :cond_c1
    const-string/jumbo v0, "smart_scan"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_d2

    const/4 v0, 0x1

    return v0

    :cond_d2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startSmartScanSettings()V

    goto/16 :goto_47

    :cond_d7
    const-string/jumbo v0, "finger_scanner"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_e8

    const/4 v0, 0x1

    return v0

    :cond_e8
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFingerprintScanner()V

    goto/16 :goto_47

    :cond_ed
    const-string/jumbo v0, "iris_settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_114

    const/4 v0, 0x1

    return v0

    :cond_114
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startIrisSettings()V

    goto/16 :goto_47

    :cond_119
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0465

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_14d
    new-instance v9, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v9, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_47

    :cond_176
    const-string/jumbo v0, "samsung_pass"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_47

    :try_start_1a2
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a2 .. :try_end_1a5} :catch_1a7

    goto/16 :goto_47

    :catch_1a7
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_47

    :cond_1ad
    const-string/jumbo v0, "always_on_screen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    :try_start_1b6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1c5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b6 .. :try_end_1c5} :catch_1dd

    :goto_1c5
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_47

    :catch_1dd
    move-exception v8

    const-string/jumbo v0, "LockscreenMenuSettings"

    const-string/jumbo v1, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1c5

    :cond_1eb
    const-string/jumbo v0, "silent_lock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1fc

    const/4 v0, 0x1

    return v0

    :cond_1fc
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    goto/16 :goto_47

    :cond_202
    const-string/jumbo v0, "secure_folder"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v14

    const/4 v0, 0x3

    if-ne v14, v0, :cond_237

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_237
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_251

    const-string/jumbo v0, "skip_popup"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_251
    :try_start_251
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_254
    .catch Landroid/content/ActivityNotFoundException; {:try_start_251 .. :try_end_254} :catch_256

    goto/16 :goto_47

    :catch_256
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_47

    :cond_25c
    const-string/jumbo v0, "app_permission_monitor"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startApppermissionmonitor()V

    goto/16 :goto_47

    :cond_26a
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "biometrics_backup_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->buildPreferenceForCOM()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_47
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setLinkedDataView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "LockscreenAndSecurity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_f
    return-void
.end method
