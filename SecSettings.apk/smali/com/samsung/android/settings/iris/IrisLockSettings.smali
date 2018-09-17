.class public Lcom/samsung/android/settings/iris/IrisLockSettings;
.super Landroid/app/Activity;
.source "IrisLockSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisLockSettings$1;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$2;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$3;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$5;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$6;,
        Lcom/samsung/android/settings/iris/IrisLockSettings$7;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private dialogButton:Landroid/widget/Button;

.field private disclaimerDialog:Landroid/app/AlertDialog;

.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDisplayKnoxName:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mFromIrisFeature:Z

.field private mFromIrisSettings:Z

.field private mFromIrisUnlock:Z

.field private mFromOutside:Z

.field private mFromSetupWizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsEnterpriseIdentityLock:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsFromSecureFolder:Z

.field private mIsFromSharedDevice:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mIsKnoxManage:Z

.field private mKeepTokenIris:Z

.field private mKnoxUserId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mRequestCode:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mTurnOffTransition:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisLockSettings;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->dialogButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/IrisLockSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/iris/IrisLockSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/iris/IrisLockSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisLockSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/iris/IrisLockSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisLockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->saveFirstEnroll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenFace:[B

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private afterProcessIrisEnrollResultOk(I)V
    .registers 6

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    :goto_13
    return-void

    :cond_14
    const/16 v1, 0x65

    if-ne p1, v1, :cond_93

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v1, :cond_5e

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIdentityLock:Z

    if-eqz v1, :cond_45

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_35
    :goto_35
    const-string/jumbo v1, "IrisLockSettings"

    const-string/jumbo v2, "IRIS_REGISTER_REQUEST RESULT_OK -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_13

    :cond_45
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisLockSettingsActivity()V

    goto :goto_35

    :cond_4d
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_54

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startRedactionInterstitial()V

    :cond_54
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_35

    :cond_5e
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_35

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-nez v1, :cond_75

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_79

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startRedactionInterstitial()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    :cond_75
    :goto_75
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchTipNTutorial()V

    goto :goto_35

    :cond_79
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    if-eqz v1, :cond_81

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_75

    :cond_81
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    if-nez v1, :cond_75

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_75

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisLockSettingsActivity()V

    goto :goto_75

    :cond_93
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-nez v1, :cond_9b

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v1, :cond_a2

    :cond_9b
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_a2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startRedactionInterstitial()V

    :cond_a2
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchTipNTutorial()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_35
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

.method private initLockSettings()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v1, "initIrisLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    const-string/jumbo v0, "lock_screen_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_4d
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_knox"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "fromOutSide"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_knox_two_step"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "is_secure_folder"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isFromSharedDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "displayKnoxName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "keep_token"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_irisSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "knox_userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isKnoxManage"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[knox user id ] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[KNOX IRIS] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDisplayKnoxName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIdentityLock:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_16b

    const-string/jumbo v0, "iris_settings"

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    :cond_16b
    return-void
.end method

.method private isFirstEnroll()I
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "iris_setting"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "isFirstIrisEnroll"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private launchBioAuth()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "for_iris_authentication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x6a

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchChooseLock()V
    .registers 8

    const/4 v6, 0x1

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_68
    const-string/jumbo v2, "iris_settings"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_79
    const/16 v2, 0x64

    :try_start_7b
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    :goto_7e
    return-void

    :catch_7f
    move-exception v0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method private launchConfirmLock()V
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f120e61

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const/16 v2, 0x63

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method private launchConfirmLockForKnox()V
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v2, "IrisLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchConfirmLockForKnox : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", has Token ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_39

    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    const/4 v0, 0x0

    goto :goto_22

    :cond_39
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f12186a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const/16 v2, 0x69

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private launchIrisSettings()V
    .registers 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    if-nez v0, :cond_99

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    :cond_1f
    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "passing correct knox user id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string/jumbo v0, "fromSearch"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string/jumbo v1, "iris_samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string/jumbo v1, "iris_samsung_pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_6f
    const-string/jumbo v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFragment subMenuSearch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisSettings"

    const v6, 0x7f120380

    move-object v5, v3

    move-object v7, v3

    move v8, v4

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;I)V

    :cond_99
    return-void
.end method

.method private launchTipNTutorial()V
    .registers 6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    const/4 v14, 0x0

    move-object v11, p0

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d015a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v11, 0x7f0a026e

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120878

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v0, v11, v14, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a026f

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f12087c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v1, v11, v14, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a0271

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v11

    if-eqz v11, :cond_c8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f12087a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f12087b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a0272

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f12087d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_c8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120879

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_91
.end method

.method private saveFirstEnroll()V
    .registers 5

    const-string/jumbo v2, "iris_setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "isFirstIrisEnroll"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setIrisLockSetting()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIrisUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_2d
.end method

.method private showCurrentLockTypeToast()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x0

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_30

    :goto_18
    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_23
    return-void

    :sswitch_24
    const v0, 0x7f120b3c

    goto :goto_18

    :sswitch_28
    const v0, 0x7f120b38

    goto :goto_18

    :sswitch_2c
    const v0, 0x7f120b3a

    goto :goto_18

    :sswitch_data_30
    .sparse-switch
        0x10000 -> :sswitch_2c
        0x20000 -> :sswitch_24
        0x30000 -> :sswitch_24
        0x40000 -> :sswitch_28
        0x50000 -> :sswitch_28
        0x60000 -> :sswitch_28
    .end sparse-switch
.end method

.method private showErrorPopup(I)V
    .registers 10

    const v7, 0x7f120e44

    const/4 v4, 0x0

    const-string/jumbo v3, ""

    packed-switch p1, :pswitch_data_a6

    :goto_a
    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v4, :cond_a1

    const v6, 0x7f120e46

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_17
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/iris/IrisLockSettings$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    const v7, 0x7f1210a4

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/iris/IrisLockSettings$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$9;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/iris/IrisLockSettings$10;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$10;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/iris/IrisLockSettings$11;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$11;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-void

    :pswitch_49
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :pswitch_50
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e52

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :pswitch_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e57

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e58

    goto :goto_a

    :pswitch_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e4b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e58

    goto/16 :goto_a

    :pswitch_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_a1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_17

    :pswitch_data_a6
    .packed-switch -0x9
        :pswitch_8d
        :pswitch_a
        :pswitch_a
        :pswitch_73
        :pswitch_a
        :pswitch_5a
        :pswitch_50
        :pswitch_49
    .end packed-switch
.end method

.method private startBiometricsLockSetup()V
    .registers 5

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x6b

    :try_start_38
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_38 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_3b
.end method

.method private startIrisDisclaimerActivity()V
    .registers 6

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.settings.iris.SecSetupIrisDisclaimerActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x6c

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method private startIrisLockSettingsActivity()V
    .registers 8

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    return-void

    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_37

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_37
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6b

    const/4 v1, 0x1

    :goto_47
    :try_start_47
    const-string/jumbo v4, "com.samsung.android.settings.iris.UseIrisLockSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "isFaceLockEnabled"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "knox_userId"

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_6a} :catch_6d

    :goto_6a
    return-void

    :cond_6b
    const/4 v1, 0x0

    goto :goto_47

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_6a
.end method

.method private startIrisRegister(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method private startIrisRegister(IZ)V
    .registers 9

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-nez v2, :cond_11

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "Token is null !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3a
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isFirstEnroll()I

    move-result v2

    if-nez v2, :cond_48

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v2, :cond_48

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisDisclaimerActivity()V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_70

    const-string/jumbo v2, "iris_enroll_retry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_70
    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7b} :catch_7c

    goto :goto_47

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private startRedactionInterstitial()V
    .registers 4

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "fromSetupWizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iput p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    const-string/jumbo v1, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_47

    const-string/jumbo v1, "IrisLockSettings"

    const-string/jumbo v3, "intent data is not null!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-nez v1, :cond_47

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    :cond_47
    sparse-switch p1, :sswitch_data_2f4

    :cond_4a
    :goto_4a
    return-void

    :sswitch_4b
    if-ne p2, v5, :cond_72

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_67

    const-string/jumbo v1, "lock_screen_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    :cond_60
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_4a

    :cond_67
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v1, :cond_63

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_63

    :cond_72
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_63

    :sswitch_77
    if-ne p2, v5, :cond_80

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_7c
    :goto_7c
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_4a

    :cond_80
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_7c

    :sswitch_90
    if-ne p2, v5, :cond_bb

    const/16 v1, 0x10e

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    :cond_9e
    if-nez v2, :cond_a2

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_a2
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_4a

    :cond_b7
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_4a

    :cond_bb
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_4a

    :sswitch_c2
    if-nez p2, :cond_cf

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_cf
    const/4 v1, -0x2

    if-ne p2, v1, :cond_d8

    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_d8
    const/4 v1, -0x3

    if-ne p2, v1, :cond_e1

    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_e1
    const/4 v1, -0x4

    if-ne p2, v1, :cond_ea

    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_ea
    const/4 v1, -0x6

    if-ne p2, v1, :cond_f3

    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_f3
    const/4 v1, -0x7

    if-ne p2, v1, :cond_10e

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121c83

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_106
    :goto_106
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_10e
    if-eq p2, v5, :cond_106

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121c82

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_106

    :sswitch_121
    if-eqz p2, :cond_149

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_139

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_139

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_139
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    if-eqz v1, :cond_144

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_4a

    :cond_144
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_4a

    :cond_149
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :sswitch_14e
    if-ne p2, v6, :cond_1fd

    const-string/jumbo v1, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_166

    const-string/jumbo v1, "iris_settings"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_166
    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_17e

    const/16 v1, 0x10e

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_187

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    :goto_17a
    if-nez v1, :cond_17e

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_17e
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_189

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_4a

    :cond_187
    move v1, v2

    goto :goto_17a

    :cond_189
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_1da

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    const-string/jumbo v1, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1b4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f12038e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1c4
    const-string/jumbo v1, "iris_settings"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_1d2
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_1da
    const-string/jumbo v1, "iris_settings"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    if-eqz v1, :cond_1f3

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    :goto_1ee
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_4a

    :cond_1f3
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_1ee

    :cond_1f7
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_1ee

    :cond_1fd
    const-string/jumbo v1, "IrisLockSettings"

    const-string/jumbo v3, "Set lockscreen failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :sswitch_20e
    if-ne p2, v5, :cond_215

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_4a

    :cond_215
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :sswitch_21a
    if-ne p2, v5, :cond_226

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->saveFirstEnroll()V

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_4a

    :cond_226
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :sswitch_22b
    if-ne p2, v6, :cond_251

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_24c

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_24c

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto/16 :goto_4a

    :cond_24c
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_4a

    :cond_251
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :sswitch_259
    if-nez p2, :cond_275

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    if-eqz v1, :cond_270

    const-string/jumbo v1, "IrisLockSettings"

    const-string/jumbo v2, "Set iris lock for SD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_270
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->afterProcessIrisEnrollResultOk(I)V

    goto/16 :goto_4a

    :cond_275
    const/4 v1, -0x2

    if-ne p2, v1, :cond_27e

    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_27e
    const/4 v1, -0x3

    if-ne p2, v1, :cond_287

    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_287
    const/4 v1, -0x4

    if-ne p2, v1, :cond_290

    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_290
    const/4 v1, -0x6

    if-ne p2, v1, :cond_299

    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_299
    const/16 v1, -0x9

    if-ne p2, v1, :cond_2a4

    const/16 v1, -0x9

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_4a

    :cond_2a4
    const/4 v1, -0x7

    if-ne p2, v1, :cond_2e0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121c83

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2b7
    :goto_2b7
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-nez v1, :cond_2bd

    if-ne p1, v7, :cond_2d8

    :cond_2bd
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v1, :cond_2d8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2d8

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v1, :cond_2d5

    const-string/jumbo v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2d5
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_2d8
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4a

    :cond_2e0
    if-eq p2, v5, :cond_2b7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121c82

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2b7

    nop

    :sswitch_data_2f4
    .sparse-switch
        0x63 -> :sswitch_121
        0x64 -> :sswitch_14e
        0x65 -> :sswitch_259
        0x66 -> :sswitch_259
        0x68 -> :sswitch_22b
        0x69 -> :sswitch_90
        0x6a -> :sswitch_77
        0x6b -> :sswitch_20e
        0x6c -> :sswitch_21a
        0x6f -> :sswitch_c2
        0x2717 -> :sswitch_4b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Irises"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "onCreate() : isDesktopMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f120382

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f120380

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_78
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_7c
    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f120b6d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_78

    :cond_94
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    :cond_b4
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->initLockSettings()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreviousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "iris_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    :cond_e1
    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1d9

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_187

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v2, :cond_158

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "launching confirm lock"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    :goto_117
    return-void

    :cond_118
    const-string/jumbo v3, "lock_screen_iris"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    const-string/jumbo v3, "register_iris_request"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_2a4

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_117

    :cond_13b
    const-string/jumbo v3, "register_iris_request_from_chooselock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b2

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_2ab

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_117

    :cond_158
    :try_start_158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_181
    .catch Landroid/content/ActivityNotFoundException; {:try_start_158 .. :try_end_181} :catch_182

    goto :goto_117

    :catch_182
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_117

    :cond_187
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1aa

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1aa

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto/16 :goto_117

    :cond_1aa
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1c1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1c1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_117

    :cond_1c1
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v2, :cond_1d4

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_1d4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchBioAuth()V

    goto/16 :goto_117

    :cond_1d4
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_117

    :cond_1d9
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v2, :cond_1ea

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1ea

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto/16 :goto_117

    :cond_1ea
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_234

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_222

    :try_start_1f8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isFromKnoxSetupWizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_21a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f8 .. :try_end_21a} :catch_21c

    goto/16 :goto_117

    :catch_21c
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_117

    :cond_222
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_22f

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_117

    :cond_22f
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_117

    :cond_234
    const-string/jumbo v2, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsFromSharedDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    if-eqz v2, :cond_262

    const-string/jumbo v2, "IrisLockSettings"

    const-string/jumbo v3, "SD Iris case, launching confirm lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_117

    :cond_262
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "iris_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_290

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_27c

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_117

    :cond_27c
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_28b

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchBioAuth()V

    goto/16 :goto_117

    :cond_28b
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_117

    :cond_290
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_29f

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto/16 :goto_117

    :cond_29f
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_117

    :cond_2a4
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_117

    :cond_2ab
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_117

    :cond_2b2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_117
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_15
    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v1, "onDestory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->overridePendingTransition(II)V

    :cond_b
    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/iris/IrisLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->disclaimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    :cond_2c
    return-void
.end method
