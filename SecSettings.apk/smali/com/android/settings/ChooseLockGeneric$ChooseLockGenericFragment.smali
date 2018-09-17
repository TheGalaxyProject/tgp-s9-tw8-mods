.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
.implements Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

.field private static mIsManagedProfileWarningDialog:Z

.field private static mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private static mUnlockMethod:Ljava/lang/String;

.field private static sUserId:I

.field private static selectedTwoFactorType:I

.field private static usingTwoFactor:Z


# instance fields
.field private EVENT_ID_PASSWORD:I

.field private EVENT_ID_PATTERN:I

.field private EVENT_ID_PIN:I

.field private SCREEN_ID_CHOOSELOCK:I

.field private fromChinaSUW:Z

.field protected fromSetupwizard:Z

.field private isLaunched:Z

.field private isSecureFolderUser:Z

.field private isUCMKeyguardEnabled:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppLockBackupKey:Ljava/lang/String;

.field private mAppLockHeaderPreference:Landroid/support/v7/preference/Preference;

.field private mChallenge:J

.field private mChooseLockRequestCode:I

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mChoosePref:I

.field private mChoosePrefFinishCase:Z

.field private mDODisableCount:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFaceAuthNotNeed:Z

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForAppLockBackupKey:Z

.field private mForChangeCredRequiredForBoot:Z

.field private mForFace:Z

.field protected mForFingerprint:Z

.field private mForIris:Z

.field private mForPrivateModeBackupKey:Z

.field private mForSmartScan:Z

.field private mFromBioScreenLock:Z

.field private mFromBioSettings:Z

.field private mFromKnoxSetDigitalLock:Z

.field private mHasChallenge:Z

.field private mHasChallenge_2nd:Z

.field private mHeaderView:Landroid/view/View;

.field private mHideDrawer:Z

.field private mIdentifyBiometrics:Z

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsEnforcedMultifactorNReset:Z

.field private mIsFromSecureFolderReset:Z

.field private mIsKnoxVersion270Supported:Z

.field private mIsRestrictedBioDataFromKnox:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockNoneLoggingVal:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSwipeLoggingVal:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mOldIrisStateForTwoFactor:Z

.field private mPasswordConfirmed:Z

.field private mRequirePassword:Z

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureFolderPreferenceState:Z

.field private mSelectedBioLockTypeFromTwoStep:I

.field private mSelectedKnoxScreen:Z

.field private final mService:Landroid/net/IConnectivityManager;

.field private mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mToken:[B

.field mTokenFace:[B

.field mTokenIris:[B

.field private mUseBioSession:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z

.field private mWasSecureBefore:Z

.field multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private oldPassword:Ljava/lang/String;

.field private pwQuality:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get1()Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .registers 1

    sget-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    return v0
.end method

.method static synthetic -get12()I
    .registers 1

    sget v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    return v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsRestrictedBioDataFromKnox:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    return v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(I)I
    .registers 2

    invoke-static {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIrisUserId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getRequestNlgId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->proceedPartialLanding(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->scheduleNextPwdChange(II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisLockSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge_2nd:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/support/v7/preference/Preference;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSecureFolderReset:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsRestrictedBioDataFromKnox:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceAuthNotNeed:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHeaderView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sput-object p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockGenericFragment:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-void
.end method

.method private DisableSystemKey(Z)V
    .registers 5

    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DisableSystemKey() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method public static clearManagedProfileBiometrics(Landroid/app/Activity;)V
    .registers 11

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    const-string/jumbo v7, "ChooseLockGenericFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clearManagedProfileBiometrics : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_33
    if-ge v0, v4, :cond_5d

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    invoke-static {p0, v1, v8, v7}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x10

    invoke-static {p0, v1, v8, v7}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_5d
    return-void

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private confirmFacePassword()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x271a

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1a
.end method

.method private confirmFingerprintPassword()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x2716

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_27
.end method

.method private confirmIrisPassword()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1a
.end method

.method private disableStatusBarAndMultiWindow()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDODisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDODisableCount:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_26

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "DO pwd changed, makes multi window disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string/jumbo v1, "DOPwdChangedPattern"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disableTwoFactorIfEnabled()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4e

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeCurrentPreference()V

    const v2, 0x7f1214c2

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V
    :try_end_4e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v1

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private enableStatusBarAndMultiWindow()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDODisableCount:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDODisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDODisableCount:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_29

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "DO pwd change complete, set multi-window enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string/jumbo v1, "DOPwdChangedPattern"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCacChosen()Z
    .registers 2

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getCurrentLockTypeSummary()Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string/jumbo v1, ""

    sparse-switch v0, :sswitch_data_2c

    const-string/jumbo v1, ""

    :goto_13
    return-object v1

    :sswitch_14
    const v2, 0x7f121cd8

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :sswitch_1c
    const v2, 0x7f121cda

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :sswitch_24
    const v2, 0x7f121cd6

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :sswitch_data_2c
    .sparse-switch
        0x10000 -> :sswitch_14
        0x20000 -> :sswitch_1c
        0x30000 -> :sswitch_1c
        0x40000 -> :sswitch_24
        0x50000 -> :sswitch_24
        0x60000 -> :sswitch_24
    .end sparse-switch
.end method

.method private static getFPUserId(I)I
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    return p0
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .registers 29

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "Block"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const/high16 v2, 0x70000

    move/from16 v0, p1

    if-ne v0, v2, :cond_7f

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "Trying to set the SMARTCARDNUMERIC password quality"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    if-eqz v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_37

    const/4 v5, 0x4

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    const-string/jumbo v2, "choose_cac_pin"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    :cond_65
    :goto_65
    if-eqz v14, :cond_7e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-eqz v2, :cond_74

    const-string/jumbo v2, "fromSetupWizard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_74
    const-string/jumbo v2, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7e
    return-object v14

    :cond_7f
    const/high16 v2, 0x80000

    move/from16 v0, p1

    if-lt v0, v2, :cond_9a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_65

    :cond_9a
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-lt v0, v2, :cond_3c9

    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-gt v0, v2, :cond_3c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_b7

    const/4 v5, 0x4

    :cond_b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_dc

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    :cond_dc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_228

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    :goto_fa
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_107

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_23e

    const-string/jumbo v2, "knox_userId"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_135

    const-string/jumbo v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_135
    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v18

    add-int v2, v23, v22

    move/from16 v0, v21

    if-le v2, v0, :cond_1a3

    add-int v21, v23, v22

    const-string/jumbo v2, "lockscreen.password_min_nonletter"

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1a3
    add-int v2, v24, v20

    move/from16 v0, v19

    if-le v2, v0, :cond_1ab

    add-int v19, v24, v20

    :cond_1ab
    add-int v2, v21, v19

    move/from16 v0, v18

    if-le v2, v0, :cond_1bb

    add-int v18, v21, v19

    const-string/jumbo v2, "lockscreen.password_min"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1bb
    const-string/jumbo v2, "lockscreen.password_min_uppercase"

    move/from16 v0, v24

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_lowercase"

    move/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_symbols"

    move/from16 v0, v23

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_numeric"

    move/from16 v0, v22

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lockscreen.password_min_letters"

    move/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1e3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1f7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_31a

    :cond_1f7
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_27b

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const/16 v4, 0x271e

    if-ne v2, v4, :cond_256

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v7, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_228
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    goto/16 :goto_fa

    :cond_23e
    const-string/jumbo v2, "knox_userId"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "knox_userId"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_11b

    :cond_256
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_273

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_273
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_27b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_2c0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPassword"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_29b

    const/4 v5, 0x4

    :cond_29b
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_2ae

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2ae
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_2c0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_2e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_2d4

    const/4 v5, 0x4

    :cond_2d4
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_2e9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_312

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v2, 0x4

    if-ge v5, v2, :cond_2fd

    const/4 v5, 0x4

    :cond_2fd
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_312
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_31a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_32a

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_32a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_33a

    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_33a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_34a

    const-string/jumbo v2, "for_face"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_34a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    if-eqz v2, :cond_35a

    const-string/jumbo v2, "for_smartscan"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_35a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_37a

    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_3c3

    const/16 v17, 0x1

    :goto_372
    const-string/jumbo v2, "personal_mQuality"

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_37a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_39a

    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_3c6

    const/16 v17, 0x1

    :goto_392
    const-string/jumbo v2, "applock_mQuality"

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_39a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v2, :cond_3a7

    const-string/jumbo v2, "fromScreenLock"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3a7
    const-string/jumbo v2, "screen_lock_bio"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "settings_bio"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_3c3
    const/16 v17, 0x0

    goto :goto_372

    :cond_3c6
    const/16 v17, 0x0

    goto :goto_392

    :cond_3c9
    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-ne v0, v2, :cond_593

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_3ea

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_3ea

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_3ea

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    :cond_3ea
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_46b

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    :goto_407
    const-string/jumbo v2, "Block"

    invoke-virtual {v14, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_41a

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_41a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_47e

    const-string/jumbo v2, "knox_userId"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_42e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_442

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_50a

    :cond_442
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_495

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_463

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_463
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_46b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    goto :goto_407

    :cond_47e
    const-string/jumbo v2, "knox_userId"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "knox_userId"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_42e

    :cond_495
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_4c3

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPattern"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_4b1

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4b1
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_4c3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_4d8

    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_4d8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_4ed

    const-string/jumbo v2, "for_face"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_4ed
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    if-eqz v2, :cond_502

    const-string/jumbo v2, "for_face"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_502
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_50a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_51a

    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_51a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_52a

    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_52a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v2, :cond_53a

    const-string/jumbo v2, "for_face"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_53a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    if-eqz v2, :cond_54a

    const-string/jumbo v2, "for_face"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_54a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_55a

    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_55a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_56a

    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_56a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v2, :cond_577

    const-string/jumbo v2, "fromScreenLock"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_577
    const-string/jumbo v2, "screen_lock_bio"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "settings_bio"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_65

    :cond_593
    const v2, 0x61000

    move/from16 v0, p1

    if-ne v0, v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_5f3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v25

    if-eqz v16, :cond_5c0

    const v2, 0x186c8

    move/from16 v0, v25

    if-eq v0, v2, :cond_5fd

    const v2, 0x186c9

    move/from16 v0, v25

    if-eq v0, v2, :cond_5fd

    :cond_5c0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUnlockMethodAndFinish isHardwareDetected = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", requestGetSensorStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f120b77

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_5f3
    const v2, 0x7f120b77

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_5fd
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private static getIrisUserId(I)I
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    return p0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_finger_print_plus"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    const-string/jumbo v1, "unlock_set_two_factor"

    return-object v1

    :cond_2f
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "unlock_set_off"

    return-object v1

    :cond_3b
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    const/4 v1, 0x0

    return-object v1

    :sswitch_46
    const-string/jumbo v1, "unlock_set_pattern"

    return-object v1

    :sswitch_4a
    const-string/jumbo v1, "unlock_set_pin"

    return-object v1

    :sswitch_4e
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "unlock_set_enterprise_identity"

    return-object v1

    :cond_5a
    const-string/jumbo v1, "unlock_set_password"

    return-object v1

    :sswitch_5e
    const-string/jumbo v1, "unlock_set_managed"

    return-object v1

    :sswitch_62
    const-string/jumbo v1, "unlock_set_none"

    return-object v1

    :sswitch_66
    const-string/jumbo v1, "unlock_set_cac_pin"

    return-object v1

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_62
        0x10000 -> :sswitch_46
        0x20000 -> :sswitch_4a
        0x30000 -> :sswitch_4a
        0x40000 -> :sswitch_4e
        0x50000 -> :sswitch_4e
        0x60000 -> :sswitch_4e
        0x70000 -> :sswitch_66
        0x80000 -> :sswitch_5e
    .end sparse-switch
.end method

.method private getRequestNlgId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "SetSwipe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_9
    const-string/jumbo v0, "ScreenLockType"

    return-object v0

    :cond_d
    const-string/jumbo v0, "SetNone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "Pattern"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "PatternLock"

    return-object v0

    :cond_23
    const-string/jumbo v0, "PIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "PinLock"

    return-object v0

    :cond_30
    const-string/jumbo v0, "Password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "PasswordLock"

    return-object v0

    :cond_3d
    const-string/jumbo v0, "Fingerprints"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "Fingerprint"

    return-object v0

    :cond_4a
    return-object p1
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .registers 10

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v8, :cond_36

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v8

    if-eqz v8, :cond_36

    iget v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v3

    :goto_12
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v2

    if-eqz v3, :cond_38

    const/4 v1, 0x1

    :goto_1d
    if-eqz v4, :cond_3a

    const/4 v6, 0x2

    :goto_20
    if-eqz v2, :cond_3c

    const/4 v0, 0x4

    :goto_23
    or-int v8, v1, v6

    or-int v5, v8, v0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_42

    sget v8, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_3e

    const v7, 0x7f12059c

    :goto_35
    return v7

    :cond_36
    const/4 v3, 0x0

    goto :goto_12

    :cond_38
    const/4 v1, 0x0

    goto :goto_1d

    :cond_3a
    const/4 v6, 0x0

    goto :goto_20

    :cond_3c
    const/4 v0, 0x0

    goto :goto_23

    :cond_3e
    const v7, 0x7f121750

    goto :goto_35

    :cond_42
    const/4 v8, 0x2

    if-ne v5, v8, :cond_55

    sget v8, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_51

    const v7, 0x7f12059f

    goto :goto_35

    :cond_51
    const v7, 0x7f121752

    goto :goto_35

    :cond_55
    const/4 v8, 0x4

    if-ne v5, v8, :cond_5c

    const v7, 0x7f12174f

    goto :goto_35

    :cond_5c
    sget v8, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_68

    const v7, 0x7f120598

    goto :goto_35

    :cond_68
    const v7, 0x7f121727

    goto :goto_35
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const v1, 0x7f121caa

    :goto_13
    return v1

    :cond_14
    const v1, 0x7f121ca9

    goto :goto_13
.end method

.method private hasEnrolledFaces()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private hasEnrolledFingerprints(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getFPUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private hasEnrolledIrises()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIrisUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    return v0
.end method

.method private hasEnrolledIrises(I)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    const-string/jumbo v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasEnrolledIrises : userId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "getIrisUserId(userId) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIrisUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "result - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIrisUserId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_52

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIrisUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    :cond_52
    return v0
.end method

.method public static hasManagedProfileFingerprints(Landroid/content/Context;I)Z
    .registers 12

    const-string/jumbo v7, "ChooseLockGenericFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasManagedProfileFingerprints : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v4, :cond_61

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5e

    if-eqz v0, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    const/4 v7, 0x1

    return v7

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_61
    const/4 v7, 0x0

    return v7
.end method

.method public static hasManagedProfileIris(Landroid/content/Context;I)Z
    .registers 12

    const-string/jumbo v7, "ChooseLockGenericFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasManagedProfileIris : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v4, :cond_61

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5e

    if-eqz v1, :cond_5e

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    const/4 v7, 0x1

    return v7

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_61
    const/4 v7, 0x0

    return v7
.end method

.method private isSupportBiometrics()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUserRemoveCertificateAllowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    const/4 v0, 0x0

    :cond_28
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Preference key %s is %s according to MDM restrictions"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    if-eqz v0, :cond_44

    const-string/jumbo v1, "allowed"

    :goto_39
    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_44
    const-string/jumbo v1, "not allowed"

    goto :goto_39
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private isUserRemoveCertificateAllowed()Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1f
    return v0
.end method

.method private maybeEnableEncryption(IZ)V
    .registers 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "user_setup_complete"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0x18

    const-string/jumbo v15, "ro.product.first_api_level"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x0

    if-lez v7, :cond_2d

    const/16 v15, 0x18

    if-ge v7, v15, :cond_2d

    const-string/jumbo v15, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    const/4 v9, 0x1

    :cond_2d
    const-string/jumbo v15, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-eqz v15, :cond_dd

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_dd

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v15

    if-eqz v15, :cond_dd

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_dd

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_dd

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_dd

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_dd

    const/4 v15, 0x1

    if-eq v3, v15, :cond_dd

    xor-int/lit8 v15, v9, 0x1

    if-eqz v15, :cond_dd

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v15, "for_cred_req_boot"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v16, v2, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v13, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v15, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v15, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_dc
    return-void

    :cond_dd
    const/4 v12, 0x0

    :try_start_de
    const-string/jumbo v15, "mount"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ec} :catch_109

    move-result v12

    :goto_ed
    const/4 v15, 0x1

    if-eq v12, v15, :cond_ff

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-nez v15, :cond_ff

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_ff
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v15, :cond_127

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :catch_109
    move-exception v6

    const-string/jumbo v15, "ChooseLockGenericFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error calling mount service "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    invoke-virtual/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_dc
.end method

.method private proceedPartialLanding(Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v6, "ChooseLockGenericFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "proceedPartialLanding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v1

    if-nez v2, :cond_3a

    if-nez v3, :cond_3a

    move v0, v1

    :goto_2d
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_3c

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    xor-int/lit8 v5, v6, 0x1

    :goto_35
    if-nez v5, :cond_39

    if-nez p1, :cond_3e

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x1

    goto :goto_2d

    :cond_3c
    const/4 v5, 0x1

    goto :goto_35

    :cond_3e
    const-string/jumbo v6, "SetSwipe"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    const-string/jumbo v6, "unlock_set_none"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_91

    const-string/jumbo v6, "unlock_set_none"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_7a

    if-eqz v0, :cond_82

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BiometricsData"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7a
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_81
    :goto_81
    return-void

    :cond_82
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BiometricsData"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_91
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_81

    :cond_af
    const-string/jumbo v6, "DirectionLock"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    const-string/jumbo v6, "unlock_set_direction"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_f1

    const-string/jumbo v6, "unlock_set_direction"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SecuredLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "DirectionLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e9
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_81

    :cond_f1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_110
    const-string/jumbo v6, "Pattern"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14a

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_141

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Screenlock"

    const-string/jumbo v8, "AlreadyConfirmed"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "PatternLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_141
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_14a
    const-string/jumbo v6, "PIN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_184

    const-string/jumbo v6, "unlock_set_pin"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_17b

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Screenlock"

    const-string/jumbo v8, "AlreadyConfirmed"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "PinLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17b
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_184
    const-string/jumbo v6, "Password"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1be

    const-string/jumbo v6, "unlock_set_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1b5

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Screenlock"

    const-string/jumbo v8, "AlreadyConfirmed"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "PasswordLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b5
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_1be
    const-string/jumbo v6, "SetNone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_231

    const-string/jumbo v6, "unlock_set_off"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_212

    const-string/jumbo v6, "unlock_set_off"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1fa

    if-eqz v0, :cond_203

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BiometricsData"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1fa
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_203
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BiometricsData"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f2

    :cond_212
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_231
    const-string/jumbo v6, "Fingerprints"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a5

    const-string/jumbo v6, "switch_fingerprint"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_286

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_24e

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_24e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_26e

    if-eqz v2, :cond_277

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "FingerprintData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_266
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Fingerprint"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_26e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_277
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "FingerprintData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_266

    :cond_286
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_2a5
    const-string/jumbo v6, "Irises"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_319

    const-string/jumbo v6, "switch_iris"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_2fa

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2c2

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_2c2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2e2

    if-eqz v3, :cond_2eb

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "IrisesData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2da
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Irises"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_2eb
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "IrisesData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2da

    :cond_2fa
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_319
    const-string/jumbo v6, "Face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const-string/jumbo v6, "switch_face"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_372

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_336

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_336
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_35a

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v6

    if-eqz v6, :cond_363

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "FaceData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_352
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Face"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35a
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81

    :cond_363
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "FaceData"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_352

    :cond_372
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_81
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .registers 9

    const/4 v1, 0x0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAllFingerprintForUserAndFinish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    move v6, p1

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    :goto_48
    return-void

    :cond_49
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_48

    :cond_4d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_48
.end method

.method private removeCurrentPreference()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method private removeEncryptionPopup(Ljava/lang/String;)V
    .registers 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12162f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12162e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$9;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    const v3, 0x7f1205bb

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private removeEnterpriseIdentityStates(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_d
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    :cond_1f
    return-void
.end method

.method private removeIrisForUser(I)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeIrisForUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4e

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$12;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$12;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    :cond_4e
    return-void
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .registers 10

    const-string/jumbo v5, "ChooseLockGenericFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeManagedProfileFingerprintsAndFinishIfNecessary : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    :cond_2f
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_67

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v3, :cond_67

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6d

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    const/4 v0, 0x1

    :cond_67
    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_6c
    return-void

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_47
.end method

.method private removeManagedProfileIris(I)V
    .registers 9

    const-string/jumbo v4, "ChooseLockGenericFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeManagedProfileIris : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_50

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v2, :cond_50

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeIrisForUser(I)V

    :cond_50
    return-void

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method private removeTwoFactorAuthentication(I)V
    .registers 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_finger_print_plus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_17
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 8

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    move-result v2

    return v2

    :catch_18
    move-exception v0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private scheduleNextPwdChange(II)V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p2

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {v4, v6, v0, v7, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, p1, v5}, Lcom/android/settings/Utils;->setPwdChangeRequested(Landroid/content/Context;II)V

    return-void
.end method

.method private setCacChosen(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return-void
.end method

.method private setLockTypeSummary(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 16

    const-string/jumbo v11, "pref_lock_type"

    invoke-virtual {p1, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/SecRestrictedPreference;

    if-nez v9, :cond_c

    return-void

    :cond_c
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string/jumbo v10, ""

    iget v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    iget v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v13, 0x10

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v11

    if-eqz v11, :cond_4e

    if-eqz v3, :cond_c2

    const/4 v6, 0x1

    :goto_3b
    const/4 v7, 0x1

    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v11

    if-eqz v11, :cond_4e

    and-int v11, v2, v3

    if-eqz v11, :cond_c5

    const/4 v8, 0x1

    :cond_4e
    :goto_4e
    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v13, 0x1

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v4, 0x1

    :cond_5a
    iget v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_7b

    iget v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7b

    :try_start_6c
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "knox_finger_print_plus"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6c .. :try_end_76} :catch_c9

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c7

    const/4 v5, 0x1

    :cond_7b
    :goto_7b
    const-string/jumbo v11, "ChooseLockGenericFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isFingerPlus Enabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", isMultiBiometrics : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", isIrisLocked : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_b8

    if-eqz v4, :cond_ec

    if-eqz v7, :cond_ec

    const v11, 0x7f121be2

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_b8
    :goto_b8
    sparse-switch v0, :sswitch_data_1a0

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_c1
    return-void

    :cond_c2
    const/4 v6, 0x0

    goto/16 :goto_3b

    :cond_c5
    const/4 v8, 0x0

    goto :goto_4e

    :cond_c7
    const/4 v5, 0x0

    goto :goto_7b

    :catch_c9
    move-exception v1

    const-string/jumbo v11, "ChooseLockGenericFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SettingNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_7b

    :cond_ec
    if-eqz v7, :cond_f6

    const v11, 0x7f121be1

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_b8

    :cond_f6
    const v11, 0x7f121be0

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_b8

    :sswitch_fe
    if-eqz v5, :cond_115

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const v12, 0x7f121cd8

    invoke-virtual {p0, v12}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c1

    :cond_115
    const v11, 0x7f121cd8

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c1

    :sswitch_120
    if-eqz v5, :cond_137

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const v12, 0x7f121cda

    invoke-virtual {p0, v12}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c1

    :cond_137
    const v11, 0x7f121cda

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c1

    :sswitch_142
    if-eqz v5, :cond_17c

    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v11

    if-eqz v11, :cond_166

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const v12, 0x7f121cc3

    invoke-virtual {p0, v12}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    :cond_166
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const v12, 0x7f121cd6

    invoke-virtual {p0, v12}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    :cond_17c
    iget-object v11, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v11

    if-eqz v11, :cond_194

    const v11, 0x7f121cc3

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    :cond_194
    const v11, 0x7f121cd6

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    :sswitch_data_1a0
    .sparse-switch
        0x10000 -> :sswitch_fe
        0x20000 -> :sswitch_120
        0x30000 -> :sswitch_120
        0x40000 -> :sswitch_142
        0x50000 -> :sswitch_142
        0x60000 -> :sswitch_142
    .end sparse-switch
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .registers 14

    const v3, 0x7f0b044b

    const v5, 0x7f0b044c

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v11, 0x0

    const-string/jumbo v1, "pref_lock_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121501

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0458

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/Utils$KnoxLogging;->addScreen(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    :cond_5c
    :goto_5c
    return v2

    :cond_5d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121500

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_59

    :cond_68
    const-string/jumbo v1, "unlock_set_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    if-eqz v9, :cond_5c

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.directionlock.ChooseLockDirection"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_81
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_97

    const-string/jumbo v0, "for_fingerprint"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_97
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "for_iris"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a3
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_af

    const-string/jumbo v0, "for_face"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_af
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_bb

    const-string/jumbo v0, "for_smartscan"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_bb
    const/16 v0, 0x66

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_81 .. :try_end_c0} :catch_c1

    goto :goto_5c

    :catch_c1
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_5c

    :cond_c6
    :try_start_c6
    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_cc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c6 .. :try_end_cc} :catch_c1

    goto :goto_5c

    :cond_cd
    const-string/jumbo v1, "unlock_set_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock disabled : off"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_5c

    :cond_10c
    const-string/jumbo v1, "unlock_set_none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock disabled : swipe"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0, v11, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_5c

    :cond_14b
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_5c

    :cond_15b
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_17c

    :cond_16c
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_175
    :goto_175
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_5c

    :cond_17c
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_193

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_175

    :cond_193
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b045a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    :cond_1b8
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_215

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_1c9

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_1d9

    :cond_1c9
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1d2
    :goto_1d2
    const/high16 v0, 0x20000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_5c

    :cond_1d9
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_1f0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1d2

    :cond_1f0
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b045b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    :cond_215
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v0, :cond_226

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_236

    :cond_226
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_22f
    :goto_22f
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_5c

    :cond_236
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_24d

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_22f

    :cond_24d
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_22f

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0459

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22f

    :cond_272
    const-string/jumbo v0, "unlock_set_smart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_283

    const v0, 0x9100

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_5c

    :cond_283
    const-string/jumbo v0, "unlock_set_cac_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->isCACCardRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    const/high16 v0, 0x70000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_5c

    :cond_2a0
    invoke-direct {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->showCardNotRegisteredDialog(Landroid/content/Context;)V

    goto/16 :goto_5c

    :cond_2ac
    const-string/jumbo v0, "unlock_set_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    const v0, 0x61000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_5c

    :cond_2bd
    const-string/jumbo v0, "unlock_set_iris"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    :try_start_2c6
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "lock_screen_iris"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "knox_userId"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2fd

    const-string/jumbo v0, "is_knox"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2fd
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_300} :catch_305

    :goto_300
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_5c

    :catch_305
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_300

    :cond_30a
    const-string/jumbo v0, "unlock_set_two_factor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b7

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_323

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3b7

    :cond_323
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set two-factor for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_363

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_363

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_363

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f120b24

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const v2, 0x7f121632

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v11

    :cond_363
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOldIrisStateForTwoFactor:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v0, "hw_auth_token_iris"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v0, :cond_3b0

    const-string/jumbo v0, "fromKnoxKeyguard"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3b0
    const/16 v0, 0x2713

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5c

    :cond_3b7
    const-string/jumbo v0, "unlock_set_enterprise_identity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41b

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_3d0

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_41b

    :cond_3d0
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set Enterprise identity for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x271e

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5c

    :cond_41b
    const-string/jumbo v0, "switch_knox_fingerprint_plus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45f

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_448

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0455

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    const v0, 0x186be

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5c

    :cond_45f
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private showFaceSensorErrorDialog(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120a9e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_32
    return-void

    :cond_33
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Activity is null. Skip FaceSensorErrorDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private showFaceTurnOnDialog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_28

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_16
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ChooseLockGeneric_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "Dialog is already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .registers 7

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-nez v3, :cond_4b

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4b

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileIris(Landroid/content/Context;I)Z

    move-result v3

    :goto_30
    sput-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfileWarningDialog:Z

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_49
    const/4 v3, 0x1

    goto :goto_30

    :cond_4b
    const/4 v3, 0x0

    goto :goto_30
.end method

.method private showIrisTurnOnDialogForChooseLock(Z)V
    .registers 8

    if-eqz p1, :cond_42

    const v3, 0x7f1203a0

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    if-eqz p1, :cond_4a

    const v3, 0x7f12039e

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_12
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$17;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$17;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v5, 0x7f120608

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$18;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$18;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_42
    const v3, 0x7f1203a6

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_4a
    const v3, 0x7f1203a5

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private showSensorErrorDialog(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f120b77

    if-ne p1, v2, :cond_19

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const p1, 0x7f120b78

    :cond_19
    if-eqz v0, :cond_47

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120b2c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_46
    return-void

    :cond_47
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Activity is null. Skip showSensorErrorDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private showSmartScanTurnOnDialog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    if-nez v0, :cond_28

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "showSmartScanTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    :cond_16
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ChooseLockGeneric_SmartScanTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "Dialog is already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private skipBiometricsAuthentication()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    :cond_15
    const/4 v1, 0x1

    :cond_16
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_29

    :cond_28
    const/4 v2, 0x1

    :cond_29
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    :cond_3b
    const/4 v0, 0x1

    :cond_3c
    if-eqz v1, :cond_41

    if-eqz v2, :cond_41

    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private startFaceLockSettings(Ljava/lang/String;[BZ)V
    .registers 9

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFaceLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_25

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isHardwareDetected() of Face is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f120ab6

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceSensorErrorDialog(I)V

    return-void

    :cond_25
    :try_start_25
    const-string/jumbo v3, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "lock_screen_face"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_50
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFace"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_72} :catch_73

    :goto_72
    return-void

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_72
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[BZ)V
    .registers 10

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFingerprintLockSettings() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isFingerprintDisabled() = TURE"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_39
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_55

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f120b77

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    return-void

    :cond_55
    :try_start_55
    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "lock_screen_fingerprint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_80
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "fromSetupwizard"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_dc

    const-string/jumbo v3, "is_secure_folder"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a5
    :goto_a5
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_f1

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_b4
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_101

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-nez v3, :cond_fa

    const/16 v3, 0x2718

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v3, "lock_screen_fingerprint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_db
    :goto_db
    return-void

    :cond_dc
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string/jumbo v3, "is_knox"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_eb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_55 .. :try_end_eb} :catch_ec

    goto :goto_a5

    :catch_ec
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_db

    :cond_f1
    :try_start_f1
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b4

    :cond_fa
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_db

    :cond_101
    if-eqz p3, :cond_10f

    const-string/jumbo v3, "mKnoxIdentifyOnly"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x2719

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_db

    :cond_10f
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_115
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f1 .. :try_end_115} :catch_ec

    goto :goto_db
.end method

.method private startIrisLockSettings()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "register_iris_request_from_chooselock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "knox_userId"

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_39} :catch_3d

    :goto_39
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_39
.end method

.method private startIrisScreenLock()V
    .registers 6

    :try_start_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startIrisScreenLock mUserId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.REGISTER_IRIS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "knox_userId"

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v2, 0x271d

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private startSmartScanLockSettings(Ljava/lang/String;[B[B)V
    .registers 9

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFaceLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "lock_screen_intelligentscan"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_34
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_50

    const-string/jumbo v3, "hw_auth_token_face"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    :cond_50
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6c

    const-string/jumbo v3, "hw_auth_token_iris"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    :cond_6c
    const-string/jumbo v3, "identifyFace"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_82} :catch_83

    :goto_82
    return-void

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_82
.end method

.method private updateBiometricsPreferences()V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-eqz v21, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x7f1214ff

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->setTitle(I)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_19
    const/4 v11, 0x0

    :try_start_1a
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v23, "isBiometricAuthenticationEnabled"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v21 .. v24}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-eqz v7, :cond_32c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_4f} :catch_337

    move-result-object v5

    if-eqz v5, :cond_59

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_59

    const/4 v11, 0x1

    :cond_59
    :goto_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    if-eqz v16, :cond_40d

    const-string/jumbo v21, "pref_lock_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/support/v7/preference/SecRestrictedPreference;

    const-string/jumbo v21, "biometrics_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v21, "pref_biometrics_description"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v21, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v17, :cond_ad

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_ad
    const-string/jumbo v21, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v18, :cond_c3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c3
    const-string/jumbo v21, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v19, :cond_d9

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_d9
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    if-eqz v15, :cond_fa

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/SecRestrictedPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f5

    const v21, 0x7f121501

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(I)V

    :cond_f5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_fa
    if-eqz v13, :cond_108

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrder(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v21

    if-eqz v21, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_356

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v4

    :goto_12e
    if-eqz v14, :cond_16f

    const-string/jumbo v20, ""

    if-eqz v4, :cond_35c

    const v21, 0x7f1214f9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :goto_15e
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_16f
    if-eqz v17, :cond_1cc

    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v9

    if-eqz v9, :cond_1a9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v21, v0

    if-eqz v21, :cond_387

    const v21, 0x7f121a51

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_1a9
    :goto_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v21

    if-nez v21, :cond_393

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1cc
    :goto_1cc
    if-eqz v19, :cond_236

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isSupportFingerprintPlus(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_236

    const/16 v21, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-lez v21, :cond_21d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "PREV_FINGER_PLUS_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    :cond_21d
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_3b4

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const v21, 0x7f120be3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_236
    :goto_236
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v21

    if-eqz v21, :cond_29d

    if-eqz v18, :cond_29d

    const/16 v21, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v10

    if-eqz v10, :cond_27a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3c9

    const v21, 0x7f121a51

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_27a
    :goto_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    const/16 v23, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v21

    if-nez v21, :cond_3d5

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_29d
    :goto_29d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v21

    if-eqz v21, :cond_2c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v21

    if-nez v21, :cond_3f6

    :cond_2c5
    if-eqz v19, :cond_2e3

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const v21, 0x7f120be2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_2e3
    :goto_2e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2ff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-nez v21, :cond_305

    :cond_2ff
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v21

    if-eqz v21, :cond_324

    :cond_305
    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "DesktopMode or UCMKeyguard enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_319

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_319
    if-eqz v18, :cond_324

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_324
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/support/v7/preference/PreferenceScreen;)V

    :goto_32b
    return-void

    :cond_32c
    :try_start_32c
    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "ekm is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_335
    .catch Ljava/lang/SecurityException; {:try_start_32c .. :try_end_335} :catch_337

    goto/16 :goto_59

    :catch_337
    move-exception v6

    const-string/jumbo v21, "ChooseLockGenericFragment"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "SecurityException: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    :cond_356
    const/4 v4, 0x0

    goto/16 :goto_12e

    :cond_359
    const/4 v4, 0x0

    goto/16 :goto_12e

    :cond_35c
    const v21, 0x7f1214f8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_15e

    :cond_387
    const v21, 0x7f121a6e

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1a9

    :cond_393
    if-nez v9, :cond_3a9

    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "Fingerprint data was deleted by user."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1cc

    :cond_3a9
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1cc

    :cond_3b4
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const v21, 0x7f120be2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_236

    :cond_3c9
    const v21, 0x7f121a6e

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_27a

    :cond_3d5
    if-nez v10, :cond_3eb

    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "Iris data was deleted by user."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_29d

    :cond_3eb
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_29d

    :cond_3f6
    if-eqz v19, :cond_2e3

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v21, 0x7f120be3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2e3

    :cond_40d
    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "updateBiometricsPreferences : preference screen is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32b
.end method

.method private updateCurrentPreference()V
    .registers 11

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_59

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_59

    const-string/jumbo v3, ", "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const-string/jumbo v3, "\u060c "

    :cond_38
    :goto_38
    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_48

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    const v9, 0x7f1206c9

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_59
    return-void

    :cond_5a
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    const-string/jumbo v3, "\u3001"

    goto :goto_38

    :cond_64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    const-string/jumbo v3, "\uff0c"

    goto :goto_38
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .registers 3

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    return-void
.end method

.method private updatePreferenceText()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v1}, Lcom/android/settings/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private updatePreferencesOrFinish()V
    .registers 69

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v64, "lockscreen.password_type"

    const/16 v65, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_9e0

    const-string/jumbo v64, "minimum_quality"

    const/16 v65, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v64

    if-nez v64, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    if-eqz v64, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    const v65, 0x7f1214ff

    invoke-virtual/range {v64 .. v65}, Landroid/app/Activity;->setTitle(I)V

    :cond_6a
    const-string/jumbo v64, "hide_disabled_prefs"

    const/16 v65, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v47

    if-eqz v47, :cond_82

    invoke-virtual/range {v47 .. v47}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_82
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    :goto_a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v64

    const-string/jumbo v65, "universal_lock_switch_state"

    const/16 v66, 0x0

    invoke-static/range {v64 .. v66}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v64

    if-eqz v64, :cond_bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v64, v0

    if-eqz v64, :cond_e2

    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v49

    if-eqz v49, :cond_e2

    const-string/jumbo v64, "unlock_set_direction"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_e2

    const-string/jumbo v64, "unlock_set_direction"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_1d3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v49

    const-string/jumbo v64, "unlock_set_off"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_10f

    const-string/jumbo v64, "unlock_set_off"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10f
    const-string/jumbo v64, "unlock_set_none"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_12e

    const-string/jumbo v64, "unlock_set_none"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_12e
    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_14d

    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v64

    if-nez v64, :cond_195

    const-string/jumbo v64, "unlock_set_iris"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_176

    const-string/jumbo v64, "unlock_set_iris"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_176
    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_195

    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_195
    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_1b4

    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1b4
    const-string/jumbo v64, "unlock_set_smart"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_1d3

    const-string/jumbo v64, "unlock_set_smart"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v49

    if-eqz v49, :cond_210

    const-string/jumbo v64, "unlock_set_fingerprint"

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v10, :cond_1fc

    const-string/jumbo v64, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_210

    :cond_1fc
    const-string/jumbo v64, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v11, :cond_210

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_210
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v64

    if-eqz v64, :cond_262

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-nez v64, :cond_262

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v64, v0

    if-nez v64, :cond_262

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v64, v0

    if-nez v64, :cond_262

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-nez v64, :cond_262

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    if-nez v64, :cond_262

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v64

    if-nez v64, :cond_262

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v64

    if-nez v64, :cond_262

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v64

    if-eqz v64, :cond_281

    :cond_262
    const-string/jumbo v64, "biometrics_unclickable_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_281

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "biometrics_unclickable_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_281
    const-string/jumbo v64, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_29f

    const-string/jumbo v64, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const v65, 0x7f120386

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_29f
    const-string/jumbo v64, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_2d2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-eqz v64, :cond_9f3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v64, v0

    :goto_2be
    if-nez v64, :cond_2d2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2d2
    const-string/jumbo v64, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_31d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v64

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v64

    if-eqz v64, :cond_30b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_9f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v64

    :goto_2fb
    xor-int/lit8 v64, v64, 0x1

    if-nez v64, :cond_30b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isSupportFingerprintPlus(Landroid/content/Context;)Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_31d

    :cond_30b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_31d
    const-string/jumbo v64, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_358

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v64

    if-eqz v64, :cond_346

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-eqz v64, :cond_9fb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v64, v0

    :goto_342
    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_358

    :cond_346
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-nez v64, :cond_380

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    if-nez v64, :cond_380

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v64, v0

    if-nez v64, :cond_380

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v64, v0

    if-nez v64, :cond_380

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v64, v0

    if-eqz v64, :cond_41b

    :cond_380
    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_39f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_39f
    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_3be

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3be
    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_3dd

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3dd
    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_3fc

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3fc
    const-string/jumbo v64, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_41b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_41b
    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_484

    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v51

    check-cast v51, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    if-nez v64, :cond_9ff

    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_46a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v64

    if-eqz v64, :cond_a0a

    const v64, 0x7f1203b0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_484
    :goto_484
    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_4e9

    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v51

    check-cast v51, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v66, v0

    invoke-static/range {v64 .. v66}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIrisLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v64

    if-eqz v64, :cond_a15

    const/16 v64, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_4cf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v64

    if-eqz v64, :cond_a20

    const v64, 0x7f1203b0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_4e9
    :goto_4e9
    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_57b

    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v51

    check-cast v51, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x100

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_a2b

    const/16 v64, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_a36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v64

    if-eqz v64, :cond_a36

    const v64, 0x7f1203b0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_562
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_57b

    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_57b
    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_5e9

    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v51

    check-cast v51, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x1000

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_a41

    const/16 v64, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_5d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_5e9

    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5e9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-eqz v64, :cond_60d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    move/from16 v64, v0

    if-nez v64, :cond_60d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-nez v64, :cond_60d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    if-eqz v64, :cond_64b

    :cond_60d
    const-string/jumbo v64, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_62c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_62c
    const-string/jumbo v64, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_64b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v64

    const-string/jumbo v65, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_64b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-nez v64, :cond_663

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v64

    if-eqz v64, :cond_1353

    :cond_663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_1353

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_1353

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v47

    if-eqz v47, :cond_7ae

    const-string/jumbo v64, "unlock_set_password"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v37

    check-cast v37, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "unlock_set_pin"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v39

    check-cast v39, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "unlock_set_pattern"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v38

    check-cast v38, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "unlock_set_two_factor"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v40

    check-cast v40, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "unlock_set_off"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "unlock_set_none"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v35

    check-cast v35, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v64, "biometrics_category"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v44

    check-cast v44, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v64, "pref_biometrics_description"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v45

    check-cast v45, Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v64, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v64, "biometrics_unclickable_pref"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v53

    check-cast v53, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v54

    check-cast v54, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v64, "switch_face"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v64, "switch_intelligentscan"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v64, "unlock_set_enterprise_identity"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual/range {v47 .. v47}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v64

    if-eqz v64, :cond_a4c

    new-instance v16, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v16, :cond_778

    const v64, 0x7f0d006c

    move-object/from16 v0, v16

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    const/16 v64, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_778
    if-eqz v38, :cond_78a

    const/16 v64, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_78a
    if-eqz v39, :cond_79c

    const/16 v64, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_79c
    if-eqz v37, :cond_7ae

    const/16 v64, 0x3

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7ae
    :goto_7ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v64

    const-string/jumbo v65, "Block"

    const/16 v66, 0x0

    invoke-virtual/range {v64 .. v66}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-eqz v64, :cond_13bb

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v64

    if-nez v64, :cond_13b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-nez v64, :cond_13b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    :goto_7e9
    if-nez v64, :cond_142d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v64, v0

    if-nez v64, :cond_13bf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v64

    if-eqz v64, :cond_13bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v64

    if-eqz v64, :cond_840

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v64

    if-eqz v64, :cond_13bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v64

    const v65, 0x61000

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_13bf

    :cond_840
    xor-int/lit8 v64, v20, 0x1

    if-eqz v64, :cond_13bf

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_13bf

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFingerprintPassword()V

    :goto_853
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v61

    if-eqz v61, :cond_1437

    const-string/jumbo v64, ""

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_1437

    const-string/jumbo v64, "none"

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    :goto_871
    if-nez v64, :cond_886

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->isEnforcedCredentialStorageExist()Z

    move-result v64

    if-eqz v64, :cond_886

    const/high16 v64, 0x70000

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    :cond_886
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_9df

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    if-nez v64, :cond_8ab

    new-instance v64, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v65

    invoke-direct/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_8ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v23

    const-string/jumbo v64, "ChooseLockGenericFragment"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "going to disable finger and iris "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v64, 0x20000

    move/from16 v0, v23

    move/from16 v1, v64

    if-eq v0, v1, :cond_8e7

    const/high16 v64, 0x30000

    move/from16 v0, v23

    move/from16 v1, v64

    if-ne v0, v1, :cond_143b

    :cond_8e7
    :goto_8e7
    const-string/jumbo v64, "unlock_set_fingerprint"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_904

    const-string/jumbo v64, "unlock_set_fingerprint"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_904
    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_921

    const-string/jumbo v64, "switch_fingerprint"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_921
    const-string/jumbo v64, "unlock_set_iris"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_93e

    const-string/jumbo v64, "unlock_set_iris"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_93e
    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_95b

    const-string/jumbo v64, "switch_iris"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_95b
    const-string/jumbo v64, "ChooseLockGenericFragment"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "disabling finger and iris in lock type menu if pattern and pin is set as lock type for SD case "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v64

    const/16 v65, 0x10

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_9a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_9df

    :cond_9a5
    const-string/jumbo v64, "unlock_set_pattern"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_9c2

    const-string/jumbo v64, "unlock_set_pattern"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_9c2
    const-string/jumbo v64, "unlock_set_pin"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    if-eqz v64, :cond_9df

    const-string/jumbo v64, "unlock_set_pin"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_9df
    return-void

    :cond_9e0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_a6

    :cond_9f3
    const/16 v64, 0x0

    goto/16 :goto_2be

    :cond_9f7
    const/16 v64, 0x0

    goto/16 :goto_2fb

    :cond_9fb
    const/16 v64, 0x0

    goto/16 :goto_342

    :cond_9ff
    const/16 v64, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_46a

    :cond_a0a
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_484

    :cond_a15
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4cf

    :cond_a20
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e9

    :cond_a2b
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_53e

    :cond_a36
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_562

    :cond_a41
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5d0

    :cond_a4c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v64

    if-eqz v64, :cond_10c7

    if-eqz v35, :cond_a6a

    const/16 v64, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a6a
    if-eqz v37, :cond_a7c

    const/16 v64, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a7c
    if-eqz v39, :cond_a8e

    const/16 v64, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a8e
    if-eqz v38, :cond_aa0

    const/16 v64, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_aa0
    if-eqz v36, :cond_ab2

    const/16 v64, 0x5

    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_ab2
    if-eqz v40, :cond_ac4

    const/16 v64, 0x6

    move-object/from16 v0, v40

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_ac4
    :goto_ac4
    if-eqz v34, :cond_ad6

    const/16 v64, 0x7

    move-object/from16 v0, v34

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_ad6
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v48, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v64

    if-eqz v64, :cond_afb

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v64

    const/16 v65, 0x1

    invoke-virtual/range {v64 .. v65}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_afb
    const/16 v32, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    :try_start_b03
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v32

    const/16 v42, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    if-nez v64, :cond_1135

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v64

    const-string/jumbo v65, "enterprise_policy_new"

    invoke-virtual/range {v64 .. v65}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v42

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    :goto_b31
    if-eqz v42, :cond_1190

    const/16 v24, 0x0

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v24

    if-eqz v24, :cond_b47

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v29

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v30

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v41

    :cond_b47
    if-nez v41, :cond_b4c

    const-string/jumbo v41, "com.sec.android.service.singlesignon"

    :cond_b4c
    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v64

    if-eqz v64, :cond_b56

    const/16 v28, 0x1

    :cond_b56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v64

    if-nez v64, :cond_1155

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v64

    :goto_b70
    xor-int/lit8 v21, v64, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v64, "activity"

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const v64, 0x7fffffff

    move/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v58

    if-eqz v58, :cond_1159

    invoke-interface/range {v58 .. v58}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :cond_b94
    :goto_b94
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_1159

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v41

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v64

    if-eqz v64, :cond_b94

    const/16 v19, 0x1

    const-string/jumbo v64, "ChooseLockGenericFragment"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "isAuthAppRunningBehind: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd4
    .catch Ljava/lang/SecurityException; {:try_start_b03 .. :try_end_bd4} :catch_bd5

    goto :goto_b94

    :catch_bd5
    move-exception v8

    const-string/jumbo v64, "ChooseLockGenericFragment"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "SecurityException: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf2
    if-eqz v32, :cond_c76

    const/16 v64, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v64, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    if-eqz v35, :cond_c1a

    const/16 v64, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_c1a
    if-eqz v36, :cond_c25

    const/16 v64, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_c25
    if-eqz v53, :cond_c30

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c30
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v64

    if-eqz v64, :cond_c49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v64, v0

    if-eqz v64, :cond_c49

    if-eqz v54, :cond_c49

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c49
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v64

    if-eqz v64, :cond_c5a

    if-eqz v52, :cond_c5a

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c5a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v64

    if-eqz v64, :cond_c6b

    if-eqz v55, :cond_c6b

    const/16 v64, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c6b
    if-nez v48, :cond_119b

    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_c76
    :goto_c76
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v64

    if-nez v64, :cond_c89

    if-eqz v40, :cond_c89

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_c89
    if-eqz v40, :cond_c9a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-eqz v64, :cond_c9a

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_c9a
    if-eqz v29, :cond_11a4

    xor-int/lit8 v64, v48, 0x1

    if-eqz v64, :cond_11a4

    if-nez v32, :cond_cc8

    const/16 v64, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v64, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    if-eqz v40, :cond_cc8

    const/16 v64, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_cc8
    :goto_cc8
    const-string/jumbo v64, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v60

    if-eqz v60, :cond_d12

    invoke-virtual/range {v60 .. v60}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v64

    if-nez v64, :cond_d09

    invoke-virtual/range {v60 .. v60}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-nez v64, :cond_d09

    invoke-virtual/range {v60 .. v60}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v64

    if-eqz v64, :cond_d12

    xor-int/lit8 v64, v32, 0x1

    if-eqz v64, :cond_d12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v64

    if-eqz v64, :cond_d12

    :cond_d09
    if-eqz v40, :cond_d12

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    if-eqz v64, :cond_d27

    if-eqz v35, :cond_d27

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_d4f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-nez v64, :cond_d55

    :cond_d4f
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v64

    if-eqz v64, :cond_d60

    :cond_d55
    if-eqz v40, :cond_d60

    const/16 v64, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_d60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v64

    if-eqz v64, :cond_11b3

    if-eqz v11, :cond_d7a

    const/16 v64, 0x8

    move/from16 v0, v64

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrder(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d7a
    if-eqz v46, :cond_d8c

    const/16 v64, 0x9

    move-object/from16 v0, v46

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d8c
    :goto_d8c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v64

    if-eqz v64, :cond_df9

    if-eqz v55, :cond_df9

    const/16 v64, 0xb

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v64, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v64

    if-eqz v64, :cond_126a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v12

    :goto_dc2
    if-eqz v12, :cond_dd6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v64, v0

    if-eqz v64, :cond_126d

    const v64, 0x7f121a51

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_dd6
    :goto_dd6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x1000

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    if-nez v64, :cond_1279

    const/16 v64, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_df9
    :goto_df9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v64

    if-eqz v64, :cond_e4e

    if-eqz v52, :cond_e4e

    const/16 v64, 0xc

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v64, ""

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v13

    if-eqz v13, :cond_e2b

    const v64, 0x7f121a6e

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_e2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x100

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    if-nez v64, :cond_129a

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_e4e
    :goto_e4e
    if-eqz v53, :cond_eaf

    const/16 v64, 0xd

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v64, ""

    move-object/from16 v0, v53

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v14

    if-eqz v14, :cond_e8c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v64, v0

    if-eqz v64, :cond_12bb

    const v64, 0x7f121a51

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_e8c
    :goto_e8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    if-nez v64, :cond_12c7

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_eaf
    :goto_eaf
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v64

    if-eqz v64, :cond_f16

    if-eqz v54, :cond_f16

    const/16 v64, 0xe

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    const-string/jumbo v64, ""

    move-object/from16 v0, v54

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v15

    if-eqz v15, :cond_ef3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    move/from16 v64, v0

    if-eqz v64, :cond_12e8

    const v64, 0x7f121a51

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_ef3
    :goto_ef3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    const/16 v66, 0x10

    move-object/from16 v0, v64

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v64

    if-nez v64, :cond_12f4

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_f16
    :goto_f16
    if-eqz v33, :cond_f4b

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "sdp enabled"

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v53, :cond_f36

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_f36
    if-eqz v54, :cond_f4b

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_f4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_f67

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-nez v64, :cond_f6d

    :cond_f67
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v64

    if-eqz v64, :cond_f8c

    :cond_f6d
    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "DesktopMode or UCMKeyguard enabled"

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v53, :cond_f81

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_f81
    if-eqz v54, :cond_f8c

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_f8c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_fb5

    if-eqz v53, :cond_fb5

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_fb5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_fde

    if-eqz v54, :cond_fde

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_fde
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_1007

    if-eqz v52, :cond_1007

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v64

    if-eqz v64, :cond_102c

    if-eqz v55, :cond_102c

    const/16 v64, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v64, 0x7f121cc1

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_102c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v64

    if-eqz v64, :cond_7ae

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "updatePreferencesOrFinish : disable iris and fingerprint switch"

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v50, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_1315

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v64

    if-eqz v64, :cond_1315

    const v64, 0x7f121bdd

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const v66, 0x7f121cc3

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v66

    const/16 v67, 0x0

    aput-object v66, v65, v67

    const/16 v66, 0x1

    aput-object v22, v65, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    :cond_1090
    :goto_1090
    if-eqz v45, :cond_1099

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1099
    if-eqz v53, :cond_10a4

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_10a4
    if-eqz v54, :cond_10af

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_10af
    if-eqz v52, :cond_10ba

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_10ba
    if-eqz v55, :cond_7ae

    const/16 v64, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_7ae

    :cond_10c7
    if-eqz v36, :cond_10d9

    const/16 v64, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10d9
    if-eqz v37, :cond_10eb

    const/16 v64, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10eb
    if-eqz v39, :cond_10fd

    const/16 v64, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10fd
    if-eqz v38, :cond_110f

    const/16 v64, 0x4

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_110f
    if-eqz v35, :cond_1121

    const/16 v64, 0x5

    move-object/from16 v0, v35

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1121
    if-eqz v40, :cond_ac4

    const/16 v64, 0x6

    move-object/from16 v0, v40

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_ac4

    :cond_1135
    :try_start_1135
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    move-object/from16 v0, v64

    move/from16 v1, v65

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v42

    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    goto/16 :goto_b31

    :cond_1155
    const/16 v64, 0x1

    goto/16 :goto_b70

    :cond_1159
    sget-object v64, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v31

    if-nez v33, :cond_118d

    xor-int/lit8 v64, v28, 0x1

    if-nez v64, :cond_118d

    xor-int/lit8 v64, v31, 0x1

    if-nez v64, :cond_118d

    if-nez v21, :cond_118d

    move/from16 v48, v19

    :goto_116d
    const-string/jumbo v64, "ChooseLockGenericFragment"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "removeEnterpriseIdentity: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf2

    :cond_118d
    const/16 v48, 0x1

    goto :goto_116d

    :cond_1190
    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "passwordPolicy is null"

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1199
    .catch Ljava/lang/SecurityException; {:try_start_1135 .. :try_end_1199} :catch_bd5

    goto/16 :goto_bf2

    :cond_119b
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_c76

    :cond_11a4
    if-nez v30, :cond_11a8

    if-eqz v48, :cond_cc8

    :cond_11a8
    if-eqz v34, :cond_cc8

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_cc8

    :cond_11b3
    if-eqz v44, :cond_11c5

    const/16 v64, 0x8

    move-object/from16 v0, v44

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrder(I)V

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_11c5
    if-eqz v45, :cond_d8c

    const/16 v64, 0x9

    move-object/from16 v0, v45

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_123c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v64

    if-eqz v64, :cond_123c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_123a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v3

    :goto_11f6
    const-string/jumbo v59, ""

    if-eqz v3, :cond_123e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v63

    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v63, v64, v65

    const/16 v65, 0x1

    aput-object v63, v64, v65

    const v65, 0x7f1214fa

    move-object/from16 v0, p0

    move/from16 v1, v65

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    :goto_122a
    move-object/from16 v0, v45

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_d8c

    :cond_123a
    const/4 v3, 0x0

    goto :goto_11f6

    :cond_123c
    const/4 v3, 0x0

    goto :goto_11f6

    :cond_123e
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v65

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v66, v0

    invoke-static/range {v65 .. v66}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v65

    const/16 v66, 0x0

    aput-object v65, v64, v66

    const v65, 0x7f1214f8

    move-object/from16 v0, p0

    move/from16 v1, v65

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    goto :goto_122a

    :cond_126a
    const/4 v12, 0x0

    goto/16 :goto_dc2

    :cond_126d
    const v64, 0x7f121a6e

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_dd6

    :cond_1279
    if-nez v12, :cond_128f

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "Iris and/or Face data was deleted by user."

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v64, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_df9

    :cond_128f
    const/16 v64, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_df9

    :cond_129a
    if-nez v13, :cond_12b0

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "Face data was deleted by user."

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_e4e

    :cond_12b0
    const/16 v64, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_e4e

    :cond_12bb
    const v64, 0x7f121a6e

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_e8c

    :cond_12c7
    if-nez v14, :cond_12dd

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "Fingerprint data was deleted by user."

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_eaf

    :cond_12dd
    const/16 v64, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_eaf

    :cond_12e8
    const v64, 0x7f121a6e

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_ef3

    :cond_12f4
    if-nez v15, :cond_130a

    const-string/jumbo v64, "ChooseLockGenericFragment"

    const-string/jumbo v65, "Iris data was deleted by user."

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v64, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_f16

    :cond_130a
    const/16 v64, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_f16

    :cond_1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v64, v0

    if-eqz v64, :cond_1090

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_1090

    const v64, 0x7f121bdc

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const v66, 0x7f121cc3

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v66

    const/16 v67, 0x0

    aput-object v66, v65, v67

    const/16 v66, 0x1

    aput-object v22, v65, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_1090

    :cond_1353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v47

    if-eqz v47, :cond_138e

    const-string/jumbo v64, "unlock_set_two_factor"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    check-cast v64, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v64, :cond_138e

    const-string/jumbo v64, "unlock_set_two_factor"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v40

    check-cast v40, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v40, :cond_138e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v64, v0

    if-nez v64, :cond_1387

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v64, v0

    if-eqz v64, :cond_138e

    :cond_1387
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_138e
    if-eqz v47, :cond_7ae

    const-string/jumbo v64, "unlock_set_enterprise_identity"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v64

    check-cast v64, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v64, :cond_7ae

    const-string/jumbo v64, "unlock_set_enterprise_identity"

    move-object/from16 v0, v47

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v34, :cond_7ae

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7ae

    :cond_13b7
    const/16 v64, 0x1

    goto/16 :goto_7e9

    :cond_13bb
    const/16 v64, 0x0

    goto/16 :goto_7e9

    :cond_13bf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v64, v0

    if-nez v64, :cond_13f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_13f0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v64

    if-eqz v64, :cond_13f0

    xor-int/lit8 v64, v20, 0x1

    if-eqz v64, :cond_13f0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmIrisPassword()V

    goto/16 :goto_853

    :cond_13f0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v64, v0

    if-nez v64, :cond_1423

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v64, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v64

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_1423

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v64

    if-eqz v64, :cond_1423

    xor-int/lit8 v64, v20, 0x1

    if-eqz v64, :cond_1423

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceAuthNotNeed:Z

    move/from16 v64, v0

    xor-int/lit8 v64, v64, 0x1

    if-eqz v64, :cond_1423

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFacePassword()V

    goto/16 :goto_853

    :cond_1423
    const/16 v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    goto/16 :goto_853

    :cond_142d
    const/16 v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    goto/16 :goto_853

    :cond_1437
    const/16 v64, 0x1

    goto/16 :goto_871

    :cond_143b
    const/high16 v64, 0x10000

    move/from16 v0, v23

    move/from16 v1, v64

    if-ne v0, v1, :cond_979

    goto/16 :goto_8e7
.end method

.method private upgradeQuality(I)I
    .registers 3

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    const/high16 v0, 0x50000

    return v0

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    :cond_1e
    if-ge p1, v0, :cond_21

    move p1, v0

    :cond_21
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .registers 5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return p1

    :cond_d
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ode_password_quality"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_21
    const-string/jumbo v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const v1, 0x10001

    if-lt p1, v1, :cond_33

    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_35

    :cond_33
    const/high16 p1, 0x10000

    :cond_35
    return p1
.end method


# virtual methods
.method protected addPreferences()V
    .registers 3

    const v0, 0x7f1500da

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a04d0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a04d2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f0a04d1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setViewId(I)V

    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string/jumbo v22, "Block"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v14

    const-string/jumbo v21, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    :goto_6c
    if-ltz v9, :cond_583

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settingslib/RestrictedPreference;

    move/from16 v21, v0

    if-nez v21, :cond_82

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/support/v14/preference/SwitchPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_d0

    :cond_82
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x1

    const/16 v20, 0x1

    const/4 v5, 0x0

    const-string/jumbo v21, "unlock_set_direction"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d5

    const v21, 0x10001

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_d3

    const/4 v6, 0x1

    :cond_9f
    :goto_9f
    if-eqz p2, :cond_a5

    if-eqz v20, :cond_4fd

    move/from16 v20, v6

    :cond_a5
    :goto_a5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_c9

    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "Disabling preference key %s due to MDM allowRemoveCertificates"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_c9
    if-nez v20, :cond_501

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d0
    :goto_d0
    add-int/lit8 v9, v9, -0x1

    goto :goto_6c

    :cond_d3
    const/4 v6, 0x0

    goto :goto_9f

    :cond_d5
    const-string/jumbo v21, "unlock_set_off"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_fb

    if-gtz p1, :cond_f7

    const/4 v6, 0x1

    :goto_e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f05000d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_f3

    const/4 v6, 0x0

    const/16 v20, 0x0

    :cond_f3
    if-lez v4, :cond_f9

    const/4 v5, 0x1

    goto :goto_9f

    :cond_f7
    const/4 v6, 0x0

    goto :goto_e3

    :cond_f9
    const/4 v5, 0x0

    goto :goto_9f

    :cond_fb
    const-string/jumbo v21, "unlock_set_none"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_135

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f05000e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_11a

    const/4 v6, 0x0

    const/16 v20, 0x0

    :goto_116
    if-lez v4, :cond_132

    const/4 v5, 0x1

    goto :goto_9f

    :cond_11a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12c

    const/16 v20, 0x0

    :cond_12c
    if-gtz p1, :cond_130

    const/4 v6, 0x1

    goto :goto_116

    :cond_130
    const/4 v6, 0x0

    goto :goto_116

    :cond_132
    const/4 v5, 0x0

    goto/16 :goto_9f

    :cond_135
    const-string/jumbo v21, "unlock_set_pattern"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15f

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v21

    if-eqz v21, :cond_150

    const/4 v6, 0x0

    :goto_147
    const/high16 v21, 0x10000

    move/from16 v0, v21

    if-le v4, v0, :cond_15c

    const/4 v5, 0x1

    goto/16 :goto_9f

    :cond_150
    const/high16 v21, 0x10000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_15a

    const/4 v6, 0x1

    goto :goto_147

    :cond_15a
    const/4 v6, 0x0

    goto :goto_147

    :cond_15c
    const/4 v5, 0x0

    goto/16 :goto_9f

    :cond_15f
    const-string/jumbo v21, "unlock_set_fingerprint"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_175

    const-string/jumbo v21, "switch_fingerprint"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27b

    :cond_175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_277

    xor-int/lit8 v21, v14, 0x1

    if-eqz v21, :cond_277

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v21

    xor-int/lit8 v20, v21, 0x1

    :goto_18d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v21, v0

    if-nez v21, :cond_1de

    const-string/jumbo v21, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e1

    :cond_1de
    const/4 v6, 0x0

    const/16 v20, 0x0

    :cond_1e1
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v17, v22

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v17, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v23, "isBiometricAuthenticationEnabledAsUser"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v21

    if-lez v21, :cond_234

    if-nez v12, :cond_234

    const/4 v6, 0x0

    :cond_234
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v21

    if-eqz v21, :cond_24e

    const-string/jumbo v21, "ChooseLockGenericFragment"

    const-string/jumbo v22, "Utils.isFingerprintDisabled() = TURE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_24e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_26c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_26c

    const/16 v20, 0x0

    :cond_26c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9f

    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_277
    const/16 v20, 0x0

    goto/16 :goto_18d

    :cond_27b
    const-string/jumbo v21, "unlock_set_smart"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_295

    const v21, 0x9100

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_292

    const/4 v6, 0x1

    goto/16 :goto_9f

    :cond_292
    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_295
    const-string/jumbo v21, "unlock_set_pin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2bf

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v21

    if-eqz v21, :cond_2b0

    const/4 v6, 0x0

    :goto_2a7
    const/high16 v21, 0x30000

    move/from16 v0, v21

    if-le v4, v0, :cond_2bc

    const/4 v5, 0x1

    goto/16 :goto_9f

    :cond_2b0
    const/high16 v21, 0x30000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_2ba

    const/4 v6, 0x1

    goto :goto_2a7

    :cond_2ba
    const/4 v6, 0x0

    goto :goto_2a7

    :cond_2bc
    const/4 v5, 0x0

    goto/16 :goto_9f

    :cond_2bf
    const-string/jumbo v21, "unlock_set_cac_pin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2eb

    const/high16 v21, 0x70000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_2e5

    const/4 v6, 0x1

    :goto_2d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAvailable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2e7

    xor-int/lit8 v20, v14, 0x1

    goto/16 :goto_9f

    :cond_2e5
    const/4 v6, 0x0

    goto :goto_2d3

    :cond_2e7
    const/16 v20, 0x0

    goto/16 :goto_9f

    :cond_2eb
    const-string/jumbo v21, "unlock_set_password"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_315

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v21

    if-eqz v21, :cond_306

    const/4 v6, 0x0

    :goto_2fd
    const/high16 v21, 0x60000

    move/from16 v0, v21

    if-le v4, v0, :cond_312

    const/4 v5, 0x1

    goto/16 :goto_9f

    :cond_306
    const/high16 v21, 0x60000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_310

    const/4 v6, 0x1

    goto :goto_2fd

    :cond_310
    const/4 v6, 0x0

    goto :goto_2fd

    :cond_312
    const/4 v5, 0x0

    goto/16 :goto_9f

    :cond_315
    const-string/jumbo v21, "unlock_set_managed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_340

    const/high16 v21, 0x80000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v6

    :goto_332
    const/high16 v21, 0x80000

    move/from16 v0, v21

    if-le v4, v0, :cond_33d

    const/4 v5, 0x1

    goto/16 :goto_9f

    :cond_33b
    const/4 v6, 0x0

    goto :goto_332

    :cond_33d
    const/4 v5, 0x0

    goto/16 :goto_9f

    :cond_340
    const-string/jumbo v21, "unlock_set_enterprise_identity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_362

    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v21

    if-eqz v21, :cond_354

    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_354
    const/high16 v21, 0x60000

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_35f

    const/4 v6, 0x1

    goto/16 :goto_9f

    :cond_35f
    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_362
    const-string/jumbo v21, "pref_lock_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_371

    const/16 v20, 0x0

    goto/16 :goto_9f

    :cond_371
    const-string/jumbo v21, "unlock_set_iris"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3d6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v21

    if-eqz v21, :cond_391

    const/4 v6, 0x0

    :cond_391
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v21, v0

    if-nez v21, :cond_3ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v21, v0

    if-nez v21, :cond_3ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v21, v0

    if-nez v21, :cond_3ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v21, v0

    if-nez v21, :cond_3ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v21, v0

    if-nez v21, :cond_3ca

    const-string/jumbo v21, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3cb

    :cond_3ca
    const/4 v6, 0x0

    :cond_3cb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9f

    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_3d6
    const-string/jumbo v21, "switch_iris"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_454

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v21

    if-eqz v21, :cond_3f6

    const/4 v6, 0x0

    :cond_3f6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v21, v0

    if-nez v21, :cond_40f

    const-string/jumbo v21, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_411

    :cond_40f
    const/16 v20, 0x0

    :cond_411
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_42f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_42f

    const/16 v20, 0x0

    :cond_42f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v21, v0

    if-nez v21, :cond_43f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v21, v0

    if-eqz v21, :cond_441

    :cond_43f
    const/16 v20, 0x0

    :cond_441
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v21

    if-nez v21, :cond_449

    const/16 v20, 0x0

    :cond_449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9f

    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_454
    const-string/jumbo v21, "unlock_set_two_factor"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4a2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v21

    if-nez v21, :cond_47b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v21

    :goto_475
    if-nez v21, :cond_47e

    const/16 v20, 0x0

    goto/16 :goto_9f

    :cond_47b
    const/16 v21, 0x1

    goto :goto_475

    :cond_47e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v21

    if-eqz v21, :cond_9f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v21

    if-eqz v21, :cond_49e

    const/16 v20, 0x1

    goto/16 :goto_9f

    :cond_49e
    const/16 v20, 0x0

    goto/16 :goto_9f

    :cond_4a2
    const-string/jumbo v21, "switch_face"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4d4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v21

    if-eqz v21, :cond_4c7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v21

    if-eqz v21, :cond_4c9

    :cond_4c7
    const/16 v20, 0x0

    :cond_4c9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9f

    const/4 v6, 0x0

    goto/16 :goto_9f

    :cond_4d4
    const-string/jumbo v21, "switch_intelligentscan"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v21

    if-eqz v21, :cond_4f9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v21

    if-eqz v21, :cond_9f

    :cond_4f9
    const/16 v20, 0x0

    goto/16 :goto_9f

    :cond_4fd
    const/16 v20, 0x0

    goto/16 :goto_a5

    :cond_501
    if-eqz v5, :cond_546

    if-eqz v7, :cond_546

    if-eqz v18, :cond_520

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_520

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_520

    check-cast v16, Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_d0

    :cond_520
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settingslib/RestrictedPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_531

    move-object/from16 v21, v16

    check-cast v21, Lcom/android/settingslib/RestrictedPreference;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_531
    const v21, 0x7f121cc1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_d0

    :cond_546
    if-nez v6, :cond_56e

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settingslib/RestrictedPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_559

    move-object/from16 v21, v16

    check-cast v21, Lcom/android/settingslib/RestrictedPreference;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_559
    const v21, 0x7f121cc1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_d0

    :cond_56e
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settingslib/RestrictedPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_d0

    check-cast v16, Lcom/android/settingslib/RestrictedPreference;

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_d0

    :cond_583
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/CryptKeeperEncryptionInterstitialActivity;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120d09

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;
    .registers 12

    invoke-static/range {p1 .. p9}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .registers 8

    invoke-static/range {p1 .. p6}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

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
    .registers 3

    const/16 v0, 0x1b

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_c

    :cond_a
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    :cond_c
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 22

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "ChooseLockGenericFragment"

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

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_df

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_df

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_84

    const-string/jumbo v2, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const-string/jumbo v2, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    const-string/jumbo v2, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const-string/jumbo v2, "hw_auth_token_iris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    const-string/jumbo v2, "hw_auth_token_face"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    :cond_84
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    :goto_97
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_b9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v2

    if-eqz v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_cb
    :goto_cb
    if-nez p1, :cond_d6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_d6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_d6
    return-void

    :cond_d7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_97

    :cond_db
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_b9

    :cond_df
    const v2, 0x186be

    move/from16 v0, p1

    if-ne v0, v2, :cond_16f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_144

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b044b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0456

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_144

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_144
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    goto :goto_cb

    :cond_148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b044b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0456

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_124

    :cond_16f
    const/16 v2, 0x66

    move/from16 v0, p1

    if-eq v0, v2, :cond_17b

    const/16 v2, 0x65

    move/from16 v0, p1

    if-ne v0, v2, :cond_395

    :cond_17b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v2, :cond_18f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_18f
    if-eqz p3, :cond_1b8

    const-string/jumbo v2, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const-string/jumbo v2, "hw_auth_token_iris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    const-string/jumbo v2, "hw_auth_token_face"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    :cond_1b8
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2c4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1d1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_364

    :cond_1d1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    :cond_1dc
    :goto_1dc
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e5

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    :cond_1e5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    if-nez v2, :cond_251

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    if-eqz v2, :cond_211

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_211

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "mFingerprintManager.requestUpdateSID called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    :cond_211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    if-eqz v2, :cond_231

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_231

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "mIrisManager.requestUpdateSID called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestUpdateSID([B)Z

    :cond_231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    if-eqz v2, :cond_251

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v2

    if-eqz v2, :cond_251

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "mFaceManager.updateSecureID called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureID([B)Z

    :cond_251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_lockscreen_is_smart_lock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37e

    const/4 v11, 0x1

    :goto_265
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v2, :cond_2c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v14

    const-string/jumbo v10, ""

    sparse-switch v14, :sswitch_data_864

    :goto_2b1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2f0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    if-eqz v2, :cond_2f0

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "onActivityResult : mFingerprintManager.postEnroll called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_2f0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_322

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-nez v2, :cond_390

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    :goto_302
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_322

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_322

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    if-eqz v2, :cond_322

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "onActivityResult : mFaceManager.postEnroll called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_322
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_354

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v2, :cond_393

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    :goto_334
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_354

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_354

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    if-eqz v2, :cond_354

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "onActivityResult : mIrisManager.postEnroll called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1dc

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    if-nez v2, :cond_1dc

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_one_lock_ongoing"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1dc

    :cond_37e
    const/4 v11, 0x0

    goto/16 :goto_265

    :sswitch_381
    const-string/jumbo v10, "PIN"

    goto/16 :goto_2b1

    :sswitch_386
    const-string/jumbo v10, "Password"

    goto/16 :goto_2b1

    :sswitch_38b
    const-string/jumbo v10, "Pattern"

    goto/16 :goto_2b1

    :cond_390
    const/4 v2, 0x1

    goto/16 :goto_302

    :cond_393
    const/4 v2, 0x1

    goto :goto_334

    :cond_395
    const/16 v2, 0x2715

    move/from16 v0, p1

    if-ne v0, v2, :cond_3f3

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3ee

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_3c9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FINGERPRINT_PLUS_STATE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v15}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->clearManagedProfileBiometrics(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileIris(I)V

    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    return-void

    :cond_3ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_3f3
    const/16 v2, 0x2716

    move/from16 v0, p1

    if-eq v0, v2, :cond_3ff

    const/16 v2, 0x2717

    move/from16 v0, p1

    if-ne v0, v2, :cond_41d

    :cond_3ff
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_42e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v2

    if-eqz v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_cb

    :cond_41d
    const/16 v2, 0x271a

    move/from16 v0, p1

    if-eq v0, v2, :cond_3ff

    const/16 v2, 0x2718

    move/from16 v0, p1

    if-ne v0, v2, :cond_446

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_42e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v2

    if-eqz v2, :cond_441

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_45a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_856

    :cond_45a
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult reqCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_498

    const-string/jumbo v2, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/SemPersonaManager;

    :cond_498
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    :cond_4a8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setResult(I)V

    const/16 v2, 0x2711

    move/from16 v0, p1

    if-ne v0, v2, :cond_5d4

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_4bc

    if-eqz p2, :cond_54b

    :cond_4bc
    :try_start_4bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v4, "setPwdChangeRequested"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "set two factor : 0"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "two factor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_526

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    :cond_526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_542

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V
    :try_end_542
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4bc .. :try_end_542} :catch_5b3

    :cond_542
    :goto_542
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54b

    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    :cond_54b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsRestrictedBioDataFromKnox:Z

    if-eqz v2, :cond_583

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "resetResult"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v12, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_583
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_5ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5ae

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    :cond_5ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :catch_5b3
    move-exception v9

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_542

    :cond_5d4
    const/16 v2, 0x2713

    move/from16 v0, p1

    if-ne v0, v2, :cond_692

    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "two factor result : code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_642

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "KNOX lock type will be set as two-step"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "two factor : SET"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_642
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "two factor Not set successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v16, :cond_677

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_677

    const v2, 0x7f121a6e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_677
    if-eqz v17, :cond_68d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_68d

    const v2, 0x7f121a6e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_68d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_692
    const/16 v2, 0x2719

    move/from16 v0, p1

    if-ne v0, v2, :cond_760

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v16, :cond_cb

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_757

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_74d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    const v2, 0x7f121a51

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_6c3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_6d3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_71f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b044b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0454

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_75e

    const/4 v2, 0x1

    :goto_6fe
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_71f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_748

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    :cond_748
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_74d
    const v2, 0x7f121a6e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_6c3

    :cond_757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    goto/16 :goto_6d3

    :cond_75e
    const/4 v2, 0x0

    goto :goto_6fe

    :cond_760
    const/16 v2, 0x271d

    move/from16 v0, p1

    if-ne v0, v2, :cond_83d

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v17, :cond_cb

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_834

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    if-eqz v2, :cond_82a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    const v2, 0x7f121a51

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_791
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v5, 0x10

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v4, "setPwdChangeRequested"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_7b0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_7fc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b044b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0457

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_83b

    const/4 v2, 0x1

    :goto_7db
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_7fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_825

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    :cond_825
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_82a
    const v2, 0x7f121a6e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_791

    :cond_834
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    goto/16 :goto_7b0

    :cond_83b
    const/4 v2, 0x0

    goto :goto_7db

    :cond_83d
    const/16 v2, 0x271e

    move/from16 v0, p1

    if-ne v0, v2, :cond_851

    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "REQUEST_ENTERPRISE_IDENTITY_SET : "

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_851
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    :cond_856
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_cb

    nop

    :sswitch_data_864
    .sparse-switch
        0x10000 -> :sswitch_38b
        0x20000 -> :sswitch_381
        0x30000 -> :sswitch_381
        0x40000 -> :sswitch_386
        0x50000 -> :sswitch_386
        0x60000 -> :sswitch_386
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_27
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v1, :cond_6a

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    :cond_6a
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "has_challenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "challenge"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_fingerprint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_face"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_smartscan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "faceAuthNotNeed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceAuthNotNeed:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    const-string/jumbo v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFromKnoxSetDigitalLock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_iris"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_48f

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "for_cred_req_boot"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_14c
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "forPrivateBackupKey"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "forAppLockBackupKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_492

    const/4 v1, 0x1

    :goto_180
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromSecureFolderReset"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSecureFolderReset:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "setRestrictedfromKnoxKeyguard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsRestrictedBioDataFromKnox:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "fromChinaSUW"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "screen_lock_bio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioScreenLock:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "settings_bio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromBioSettings:Z

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "GetIntentExtra"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x96

    if-lt v1, v2, :cond_495

    const/4 v1, 0x1

    :goto_208
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSecureFolderUser:Z

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->skipBiometricsAuthentication()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_254

    const-string/jumbo v1, "fromScreenLock"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_254

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    :cond_254
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_2e6

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "disable_systemkey"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120b45

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2a0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2a0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    :cond_2a0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2b2

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-eqz v1, :cond_2b2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2b2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    :cond_2e6
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v1, :cond_310

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_310

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    if-eqz v1, :cond_310

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_310

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12038c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :cond_310
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v1, :cond_350

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SCREEN_ID_CHOOSELOCK:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PATTERN:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PIN:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->EVENT_ID_PASSWORD:I

    :cond_350
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    if-eqz v1, :cond_35c

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    :cond_35c
    if-eqz p1, :cond_38b

    const-string/jumbo v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v1, "biometrics_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const-string/jumbo v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string/jumbo v1, "encrypt_requested_quality"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    const-string/jumbo v1, "encrypt_requested_disabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    :cond_38b
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v1, :cond_393

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v1, :cond_3a9

    :cond_393
    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/lit8 v1, v7, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    const v1, 0x7f1202ff

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3a9
    if-eqz p1, :cond_3d9

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_3bb

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3d9

    :cond_3bb
    const-string/jumbo v1, "KEY_USING_TWO_FACTOR"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    const-string/jumbo v1, "KEY_SELECTED_TWO_FACTOR_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const-string/jumbo v1, "KEY_SELECTED_KNOX_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    :cond_3d9
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "getTargetUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v1, v2, v3, v12}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_498

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_43a
    :goto_43a
    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_449

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    :cond_449
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "SharedDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c8

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_4c8

    const-string/jumbo v1, "unlock_set_password"

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    :cond_472
    :goto_472
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    sput v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    return-void

    :cond_48f
    const/4 v1, 0x0

    goto/16 :goto_14c

    :cond_492
    const/4 v1, 0x0

    goto/16 :goto_180

    :cond_495
    const/4 v1, 0x0

    goto/16 :goto_208

    :cond_498
    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_43a

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121043

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_43a

    :cond_4c8
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_511

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_50d

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v1

    if-eqz v1, :cond_50d

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50d

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50d

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50d

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50d

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50d

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    :goto_4fb
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_472

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_472

    :cond_50d
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_4fb

    :cond_511
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSecureFolderReset:Z

    if-eqz v1, :cond_52d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_528

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121501

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :cond_528
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_472

    :cond_52d
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v1, :cond_555

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsRestrictedBioDataFromKnox:Z

    if-eqz v1, :cond_54d

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_548

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121500

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :cond_548
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_472

    :cond_54d
    const-string/jumbo v1, "unlock_set_two_factor"

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    goto/16 :goto_472

    :cond_555
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v1, :cond_472

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    if-eqz v1, :cond_56c

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_56c
    const-string/jumbo v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFromKnoxSetDigitalLock1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_5e7

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v1, :cond_598

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_5e7

    :cond_598
    const/4 v5, 0x0

    :goto_599
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_5ea

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    :goto_5b8
    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5ec

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5ec

    const/4 v4, 0x1

    :goto_5cb
    if-nez v9, :cond_5df

    const v1, 0x7f121cc9

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x64

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZZI)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5ef

    :cond_5df
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_472

    :cond_5e7
    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto :goto_599

    :cond_5ea
    const/4 v9, 0x0

    goto :goto_5b8

    :cond_5ec
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    goto :goto_5cb

    :cond_5ef
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto/16 :goto_472
.end method

.method public onDestroy()V
    .registers 11

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->DisableSystemKey(Z)V

    :cond_14
    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_c9

    const-string/jumbo v7, "persona"

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v7, "switch_fingerprint"

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v7, "switch_knox_fingerprint_plus"

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v7, "switch_iris"

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_ca

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    :goto_46
    if-eqz v6, :cond_cd

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    :goto_4c
    if-eqz v5, :cond_d0

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    :goto_52
    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b045f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0, v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->getLockType(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b045c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v0, :cond_d2

    const-string/jumbo v7, "1"

    :goto_80
    invoke-static {v9, v7}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b045d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v1, :cond_d6

    const-string/jumbo v7, "1"

    :goto_99
    invoke-static {v9, v7}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b045e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v2, :cond_da

    const-string/jumbo v7, "1"

    :goto_b2
    invoke-static {v9, v7}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v7, v8, v9}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_c9
    return-void

    :cond_ca
    const/4 v0, 0x0

    goto/16 :goto_46

    :cond_cd
    const/4 v1, 0x0

    goto/16 :goto_4c

    :cond_d0
    const/4 v2, 0x0

    goto :goto_52

    :cond_d2
    const-string/jumbo v7, "0"

    goto :goto_80

    :cond_d6
    const-string/jumbo v7, "0"

    goto :goto_99

    :cond_da
    const-string/jumbo v7, "0"

    goto :goto_b2
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enableStatusBarAndMultiWindow()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_29
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_38
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_47
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    :cond_58
    :goto_58
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UseBioPref : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenLockType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_7d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_58
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 33

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_336

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_114

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_114

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_111

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v10

    :goto_54
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v17, :cond_16b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_78

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_124

    :cond_78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    :cond_93
    :goto_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/support/v7/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    xor-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b044b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0454

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_1e8

    const/4 v2, 0x1

    :goto_cd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b045c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_1eb

    const/4 v2, 0x1

    :goto_ee
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_10f
    :goto_10f
    const/4 v2, 0x0

    return v2

    :cond_111
    const/4 v10, 0x0

    goto/16 :goto_54

    :cond_114
    const/4 v10, 0x0

    goto/16 :goto_54

    :cond_117
    const-string/jumbo v2, "lock_screen_fingerprint"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    const/4 v11, 0x1

    goto/16 :goto_93

    :cond_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_93

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_155

    if-eqz v29, :cond_155

    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const v2, 0x7f120be3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_155
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v5, "lock_screen_fingerprint"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    goto/16 :goto_93

    :cond_16b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-nez v2, :cond_1a3

    const/4 v9, 0x1

    :goto_17c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1aa

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1a5

    if-eqz v10, :cond_19d

    if-nez v9, :cond_1a1

    :cond_19d
    xor-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_1aa

    :cond_1a1
    const/4 v2, 0x0

    return v2

    :cond_1a3
    const/4 v9, 0x0

    goto :goto_17c

    :cond_1a5
    if-eqz v9, :cond_1aa

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    :cond_1aa
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v29, :cond_1c7

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const v2, 0x7f120be2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_1c7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_93

    :cond_1e8
    const/4 v2, 0x0

    goto/16 :goto_cd

    :cond_1eb
    const/4 v2, 0x0

    goto/16 :goto_ee

    :cond_1ee
    if-eqz v17, :cond_2ea

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_20c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_261

    :cond_20c
    const-string/jumbo v2, "lock_screen_fingerprint"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mToken:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_25f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25f

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_25f
    const/4 v2, 0x0

    return v2

    :cond_261
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string/jumbo v5, "lock_screen_fingerprint"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_2c2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_2c2
    const-string/jumbo v2, "unlock_set_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v2, "unlock_set_pattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v23, :cond_2e0

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_2e0
    if-eqz v22, :cond_10f

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_10f

    :cond_2ea
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "unlock_set_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v2, "unlock_set_pattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v23, :cond_32c

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_32c
    if-eqz v22, :cond_10f

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_10f

    :cond_336
    const-string/jumbo v2, "switch_knox_fingerprint_plus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_409

    const-string/jumbo v2, "switch_knox_fingerprint_plus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "PREV_FINGER_PLUS_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v17, :cond_3ee

    const/4 v2, -0x1

    if-eq v14, v2, :cond_3d9

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_37c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    xor-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b044b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0456

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_405

    const/4 v2, 0x1

    :goto_3ab
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b045d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_407

    const/4 v2, 0x1

    :goto_3cc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    :cond_3d9
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;

    invoke-direct {v15, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x186be

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v11, 0x1

    goto :goto_37c

    :cond_3ee
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_37c

    :cond_405
    const/4 v2, 0x0

    goto :goto_3ab

    :cond_407
    const/4 v2, 0x0

    goto :goto_3cc

    :cond_409
    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d1

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_5ac

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_5ac

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_5a9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v10

    :goto_43d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v19

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v17, :cond_649

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_481

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_628

    :cond_481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_5b4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_5af

    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "is_secure_folder"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "knox_userId"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x271d

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4cc
    const/4 v11, 0x1

    :goto_4cd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_52b

    const-string/jumbo v2, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    const-string/jumbo v2, "unlock_set_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v2, "unlock_set_pattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v23, :cond_523

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_523
    if-eqz v22, :cond_52b

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_52b
    :goto_52b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/support/v7/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    xor-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b044b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0457

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_6cb

    const/4 v2, 0x1

    :goto_565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b045e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSecureFolderPreferenceState:Z

    if-eqz v2, :cond_6ce

    const/4 v2, 0x1

    :goto_586
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/settings/Utils$KnoxLogging;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_10f

    :cond_5a9
    const/4 v10, 0x0

    goto/16 :goto_43d

    :cond_5ac
    const/4 v10, 0x0

    goto/16 :goto_43d

    :cond_5af
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisScreenLock()V

    goto/16 :goto_4cc

    :cond_5b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v2

    if-eqz v2, :cond_5da

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_5da

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v2, :cond_5da

    if-eqz v18, :cond_5d5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisTurnOnDialogForChooseLock(Z)V

    goto/16 :goto_4cd

    :cond_5d5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startIrisLockSettings()V

    goto/16 :goto_4cd

    :cond_5da
    :try_start_5da
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "lock_screen_iris"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "from_irisSettings"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "knox_userId"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_61e
    .catch Ljava/lang/Exception; {:try_start_5da .. :try_end_61e} :catch_623

    :goto_61e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_4cd

    :catch_623
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61e

    :cond_628
    if-nez v18, :cond_62c

    if-eqz v19, :cond_635

    :cond_62c
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisTurnOnDialogForChooseLock(Z)V

    goto/16 :goto_4cd

    :cond_635
    invoke-virtual/range {v16 .. v17}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_4cd

    :cond_649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-nez v2, :cond_680

    const/4 v8, 0x1

    :goto_659
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "knox_finger_print_plus"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_687

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_682

    if-eqz v10, :cond_67a

    if-nez v8, :cond_67e

    :cond_67a
    xor-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_687

    :cond_67e
    const/4 v2, 0x0

    return v2

    :cond_680
    const/4 v8, 0x0

    goto :goto_659

    :cond_682
    if-eqz v8, :cond_687

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    :cond_687
    invoke-virtual/range {v16 .. v17}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_52b

    const-string/jumbo v2, "unlock_set_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v2, "unlock_set_pattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v23, :cond_6c1

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_6c1
    if-eqz v22, :cond_52b

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_52b

    :cond_6cb
    const/4 v2, 0x0

    goto/16 :goto_565

    :cond_6ce
    const/4 v2, 0x0

    goto/16 :goto_586

    :cond_6d1
    const-string/jumbo v2, "switch_face"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ad

    const-string/jumbo v2, "switch_face"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v17, :cond_796

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_78b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_70d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_748

    :cond_70d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_731

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_739

    :cond_731
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceTurnOnDialog(Z)V

    goto/16 :goto_10f

    :cond_739
    const-string/jumbo v2, "lock_screen_face"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;[BZ)V

    const/4 v2, 0x0

    return v2

    :cond_748
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_76c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_774

    :cond_76c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFaceTurnOnDialog(Z)V

    goto/16 :goto_10f

    :cond_774
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_10f

    :cond_78b
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "mFaceManager is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    :cond_796
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_10f

    :cond_7ad
    const-string/jumbo v2, "switch_intelligentscan"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "switch_intelligentscan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "switch_face"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v17, :cond_8a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_897

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_897

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_815

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_815

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_852

    :cond_815
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_839

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_841

    :cond_839
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSmartScanTurnOnDialog(Z)V

    :goto_83f
    const/4 v2, 0x0

    return v2

    :cond_841
    const-string/jumbo v2, "lock_screen_intelligentscan"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startSmartScanLockSettings(Ljava/lang/String;[B[B)V

    goto :goto_83f

    :cond_852
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_876

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_87e

    :cond_876
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSmartScanTurnOnDialog(Z)V

    goto/16 :goto_10f

    :cond_87e
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_10f

    :cond_897
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "mFaceManager or mIrisManager is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    :cond_8a2
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto/16 :goto_10f
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 12

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isResumed()Z

    move-result v6

    if-nez v6, :cond_c

    return v9

    :cond_c
    if-eqz v1, :cond_51

    const-string/jumbo v6, "unlock_set_pattern"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string/jumbo v6, "unlock_set_pin"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string/jumbo v6, "unlock_set_password"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_51

    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_51

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f120ffe

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v9

    :cond_51
    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePref:I

    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFingerprints(I)Z

    move-result v6

    if-nez v6, :cond_b7

    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises(I)Z

    move-result v6

    if-nez v6, :cond_b7

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledFaces()Z

    move-result v0

    :goto_6b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_b9

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileIris(Landroid/content/Context;I)Z

    move-result v4

    :goto_81
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bb

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_af

    iget v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_af

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_bb

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_bb

    :cond_af
    if-nez v0, :cond_b3

    if-eqz v4, :cond_bb

    :cond_b3
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    return v9

    :cond_b7
    const/4 v0, 0x1

    goto :goto_6b

    :cond_b9
    const/4 v4, 0x1

    goto :goto_81

    :cond_bb
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7, v9}, Landroid/security/KeyStore;->isEmpty(II)Z

    move-result v6

    if-nez v6, :cond_c8

    const/4 v5, 0x1

    :cond_df
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f5

    if-eqz v5, :cond_f5

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeEncryptionPopup(Ljava/lang/String;)V

    return v9

    :cond_f5
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method public onResume()V
    .registers 13

    const v11, 0x7f120be3

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v5, :cond_18

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    :goto_32
    if-nez v5, :cond_4c

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f120ffe

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_4a
    move v5, v6

    goto :goto_32

    :cond_4c
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_72

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_72

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUseBioSession:Z

    if-eqz v5, :cond_72

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChoosePrefFinishCase:Z

    if-eqz v5, :cond_72

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    return-void

    :cond_72
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableStatusBarAndMultiWindow()V

    :cond_8d
    const-string/jumbo v5, "switch_knox_fingerprint_plus"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-lez v5, :cond_b7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "PREV_FINGER_PLUS_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v5, v7, v10, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :cond_b7
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_cb

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-nez v5, :cond_1cd

    :cond_cb
    if-eqz v4, :cond_d9

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const v5, 0x7f120be2

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_d9
    :goto_d9
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_103

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "turn-on"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "Block"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v2, :cond_1e9

    const v5, 0x9100

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :cond_103
    :goto_103
    const-string/jumbo v5, "ChooseLockGenericFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "On resuming generic activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v5

    if-eqz v5, :cond_130

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_130

    const/high16 v5, 0x70000

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :cond_130
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_155

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_155
    if-eqz v3, :cond_165

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_165

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_165

    iput-boolean v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    :cond_165
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v5

    if-eqz v5, :cond_176

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->proceedPartialLanding(Ljava/lang/String;)V

    :cond_176
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "ScreenLockType"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_1c2

    const-string/jumbo v5, "unlock_set_pattern"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_19e

    const-string/jumbo v5, "unlock_set_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1f2

    :cond_19e
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b044c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/Utils$KnoxLogging;->addScreen(I)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_1c2
    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    sput v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sUserId:I

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUCMKeyguardEnabled:Z

    return-void

    :cond_1cd
    if-eq v0, v10, :cond_1dc

    if-eqz v4, :cond_d9

    invoke-virtual {v4, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v4, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v4, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_d9

    :cond_1dc
    if-eqz v4, :cond_d9

    invoke-virtual {v4, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v4, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_d9

    :cond_1e9
    if-eqz v1, :cond_103

    const/high16 v5, 0x10000

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_103

    :cond_1f2
    const-string/jumbo v5, "unlock_set_pin"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_19e

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b044b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/Utils$KnoxLogging;->addScreen(I)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "biometrics_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v0, :cond_59

    const-string/jumbo v0, "KEY_USING_TWO_FACTOR"

    sget-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "KEY_SELECTED_TWO_FACTOR_TYPE"

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_59
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 23

    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    if-nez v16, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v16, v0

    if-nez v16, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v16, v0

    if-nez v16, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1ee

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "universal_lock_switch_state"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_116

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    if-nez v16, :cond_61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v16, v0

    if-nez v16, :cond_61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v16, v0

    if-nez v16, :cond_61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a2

    :cond_61
    const v16, 0x7f0d0069

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v16, 0x7f0a00eb

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v16, 0x7f0a00ec

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    if-eqz v16, :cond_122

    if-eqz v4, :cond_119

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v16, v0

    const v17, 0x10001

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_119

    const v16, 0x7f120b2f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_a5
    :goto_a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v16

    if-eqz v16, :cond_18e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f120392

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f120399

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_101
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(Landroid/view/View;)V

    :goto_106
    :try_start_106
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V
    :try_end_115
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_115} :catch_1e2

    :cond_115
    :goto_115
    return-void

    :cond_116
    const/4 v4, 0x0

    goto/16 :goto_41

    :cond_119
    const v16, 0x7f120b41

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a5

    :cond_122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14f

    if-eqz v4, :cond_145

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v16, v0

    const v17, 0x10001

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_145

    const v16, 0x7f120aa2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a5

    :cond_145
    const v16, 0x7f120aa8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a5

    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v16, v0

    if-eqz v16, :cond_17c

    if-eqz v4, :cond_172

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->pwQuality:I

    move/from16 v16, v0

    const v17, 0x10001

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_172

    const v16, 0x7f120e3b

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a5

    :cond_172
    const v16, 0x7f120e3a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a5

    :cond_17c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForSmartScan:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a5

    const v16, 0x7f1219e5

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a5

    :cond_18e
    const v16, 0x7f120391

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f120398

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_101

    :cond_1a2
    const v16, 0x7f0d006a

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v16, 0x7f0a0351

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v16, 0x7f0a034e

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v16, 0x7f0a034f

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v16, 0x7f0a0350

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(Landroid/view/View;)V

    goto/16 :goto_106

    :catch_1e2
    move-exception v5

    const-string/jumbo v16, "ChooseLockGenericFragment"

    const-string/jumbo v17, "Null pointer exception occured!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_115

    :cond_1ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v16, v0

    if-eqz v16, :cond_115

    const-string/jumbo v2, "applock_locktype_iris"

    new-instance v11, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v16, "applock_locktype_iris"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_246

    const v16, 0x7f0d0067

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    :goto_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_230

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_230
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/support/v7/preference/Preference;

    goto/16 :goto_115

    :cond_246
    const v16, 0x7f0d0068

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    goto :goto_21b
.end method

.method public turnOffFaceLock()V
    .registers 4

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "turnOffFaceLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "switch_face"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public turnOffSmartScanLock()V
    .registers 4

    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "turnOffSmartScanLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "switch_intelligentscan"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public turnOnFaceLock()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v4, "ChooseLockGenericFragment"

    const-string/jumbo v5, "turnOnFaceLock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_36

    :cond_24
    :try_start_24
    const-string/jumbo v4, "lock_screen_face"

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFaceLockSettings(Ljava/lang/String;[BZ)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_31

    :goto_2d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    :cond_36
    const-string/jumbo v4, "switch_face"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v4, "switch_iris"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v4, "switch_intelligentscan"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_30

    :cond_62
    const-string/jumbo v4, "ChooseLockGenericFragment"

    const-string/jumbo v5, "FaceManager is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public turnOnIrisLock()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "turnOnIrisLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    const-string/jumbo v3, "switch_iris"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "switch_face"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v3

    if-eqz v3, :cond_40

    const-string/jumbo v3, "switch_intelligentscan"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_40
    return-void
.end method

.method public turnOnSmartScanLock()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v4, "ChooseLockGenericFragment"

    const-string/jumbo v5, "turnOnSmartScanLock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_34

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_47

    :cond_34
    :try_start_34
    const-string/jumbo v4, "lock_screen_intelligentscan"

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenFace:[B

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mTokenIris:[B

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startSmartScanLockSettings(Ljava/lang/String;[B[B)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_42

    :goto_3e
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :goto_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    :cond_47
    const-string/jumbo v4, "switch_face"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v4, "switch_iris"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v4, "switch_intelligentscan"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_41

    :cond_6d
    const-string/jumbo v4, "ChooseLockGenericFragment"

    const-string/jumbo v5, "FaceManager is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .registers 12

    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Tried to update password without confirming it"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    if-nez v3, :cond_1b

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1b

    return-void

    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_39

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    if-ne v3, v4, :cond_33

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    :goto_32
    return-void

    :cond_33
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_32

    :cond_39
    if-nez p1, :cond_18c

    if-eqz p2, :cond_162

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "None"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_5d

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_174

    :cond_5d
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_80

    :cond_73
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    :cond_80
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    :goto_89
    :try_start_89
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUnlockMethodAndFinish update VPN state - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_eb

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b9} :catch_196

    const/4 v4, 0x3

    if-ne v3, v4, :cond_eb

    :try_start_bc
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_eb

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    const-string/jumbo v4, "[Legacy VPN]"

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_eb} :catch_199

    :cond_eb
    :goto_eb
    :try_start_eb
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v4, "LOCKDOWN_VPN"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_fb

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fb} :catch_196

    :cond_fb
    :goto_fb
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_107

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_107
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_110

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_110
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeTwoFactorAuthentication(I)V

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeEnterpriseIdentityStates(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->updateSetUpCredentialIfNeeded(Landroid/content/Context;I)Z

    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    if-nez v3, :cond_157

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enable_one_lock_ongoing"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_157

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enable_one_lock_ongoing"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_157
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :goto_161
    return-void

    :cond_162
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "Swipe"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    :cond_174
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    goto/16 :goto_89

    :cond_18c
    const v3, 0x61000

    if-ne p1, v3, :cond_192

    return-void

    :cond_192
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_161

    :catch_196
    move-exception v1

    goto/16 :goto_fb

    :catch_199
    move-exception v1

    goto/16 :goto_eb
.end method

.method public wManagerChanged()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_smartlock_supported"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_20

    if-nez v2, :cond_33

    :cond_20
    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_33

    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_33
    return-void
.end method
