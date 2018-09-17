.class public Lcom/samsung/android/settings/iris/IrisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisSettings$1;,
        Lcom/samsung/android/settings/iris/IrisSettings$2;,
        Lcom/samsung/android/settings/iris/IrisSettings$3;
    }
.end annotation


# instance fields
.field private isDeletionBlock:Z

.field private lockDevice:Z

.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

.field private mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

.field private mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

.field private mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

.field private mScreenLock:Landroid/support/v14/preference/SwitchPreference;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

.field private mTokenIris:[B

.field private mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private samsungaccount_objvalue:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/iris/IrisSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showDisclaimerDialog()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$2;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "IrisSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_12
    const v1, 0x7f15007d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisPreference()V

    return-object v0
.end method

.method private finishIrisSettings()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    return-void
.end method

.method private getIrisSAConfirmed()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisSAConfirmed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getIrisVerification()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getIrisesSupportingFeatures()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private getUseIrisSA()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isFingerprintEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private isIrisEnabled()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isIrisEnrolled()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1a

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1a
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private isSupportSamsungPay()Z
    .registers 9

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.spay.supportIrises"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_17} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_19

    move-result v4

    :goto_18
    return v4

    :catch_19
    move-exception v3

    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catch_39
    move-exception v2

    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private launchChooseLock()V
    .registers 2

    const/16 v0, 0x2bd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method private launchChooseLock(I)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_2a
    const/16 v1, 0x2c5

    if-ne p1, v1, :cond_34

    const-string/jumbo v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_34
    const/16 v1, 0x2c3

    if-eq p1, v1, :cond_3c

    const/16 v1, 0x2c4

    if-ne p1, v1, :cond_42

    :cond_3c
    const-string/jumbo v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_42
    const-string/jumbo v1, "keep_token"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "knox_userId"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "from_irisSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_5a
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a
.end method

.method private launchSamsungpassFromIris()V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "biometricType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_12
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_15} :catch_19

    :goto_15
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finishIrisSettings()V

    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_15
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

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private setIrisPreference()V
    .registers 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string/jumbo v6, "iris_manage_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "my_irises"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "registered_iris"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string/jumbo v6, "register_irises"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "change_reset_password"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_preview_style"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_feature_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "iris_unlock_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "iris_web_signin"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "iris_samsung_account"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "iris_samsung_pay"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_samsung_pass"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_screen_lock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "tips_for_iris"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "use_iris_first_lock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v6

    if-eqz v6, :cond_2a8

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_b1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "biometrics_backup_type"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v6

    if-eqz v6, :cond_d6

    if-nez v4, :cond_d6

    if-nez v4, :cond_e6

    if-ne v0, v10, :cond_e6

    :cond_d6
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "updateAddPreference [remove Change Reset Password]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_118

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.sbrowser"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_111

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2b8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_111

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_2b8

    :cond_111
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_118
    :goto_118
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIrisLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f121d56

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_165

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e66

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_165
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_185

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v6

    if-ne v6, v10, :cond_185

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_185
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_19d

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "disabling mUseIrisFirstLock option for SD case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_19d
    :try_start_19d
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1eb

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "knox_finger_print_plus"

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v10, :cond_1c5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1eb

    :cond_1c5
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    if-eqz v6, :cond_1f7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1f7

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1f7

    :cond_1eb
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1f7} :catch_2c8

    :cond_1f7
    :goto_1f7
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "use_iris_firstlock"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_2ce

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_209
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2db

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v6

    if-eqz v6, :cond_2db

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v6

    if-eqz v6, :cond_2db

    const/4 v6, 0x1

    :try_start_22d
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_236} :catch_2d5

    :goto_236
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_257

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.spay"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f1

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_257
    :goto_257
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_27e

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_277

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_315

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_315

    :cond_277
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_27e
    :goto_27e
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_28f

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_28f
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v6

    if-eqz v6, :cond_2a7

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Screen lock switch disable by Enterprise ID feature"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2a7
    return-void

    :cond_2a8
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_b1

    :cond_2b8
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_118

    :catch_2c8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1f7

    :cond_2ce
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_209

    :catch_2d5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_236

    :cond_2db
    const/4 v6, 0x0

    :try_start_2dc
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2e9} :catch_2eb

    goto/16 :goto_236

    :catch_2eb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_236

    :cond_2f1
    :try_start_2f1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSupportSamsungPay()Z

    move-result v6

    if-nez v6, :cond_257

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_307} :catch_309

    goto/16 :goto_257

    :catch_309
    move-exception v1

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Getting information of SamsungPay make the Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_257

    :cond_315
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e69

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120e68

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_27e
.end method

.method private setIrisSAConfirmed(I)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIrisSAConfirmed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIrisVerification(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIrisVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setUseIrisSA(I)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDisclaimerDialog()V
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const v4, 0x10302d2

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12087e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIrisUnlockTurnOnDialog(ZZ)V
    .registers 9

    if-eqz p1, :cond_42

    const v3, 0x7f1203a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    if-eqz p1, :cond_4a

    const v3, 0x7f12039e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_12
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$11;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/iris/IrisSettings$11;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;Z)V

    const v5, 0x7f120608

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$12;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_42
    const v3, 0x7f1203a6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_4a
    const v3, 0x7f1203a5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method


# virtual methods
.method public deleteRegisteredIris()Z
    .registers 10

    const v8, 0x7f120f22

    const/4 v7, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120e41

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120e43

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IrisSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UserHandle user Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "IrisSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUserId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisesSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_68

    :cond_61
    const v4, 0x7f120e42

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_68
    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    if-eqz v4, :cond_127

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_127

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d4

    :cond_96
    :goto_96
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v4, :cond_173

    const v4, 0x7f120f07

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_ab
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-eqz v4, :cond_bb

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v4, :cond_c5

    :cond_bb
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$9;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_c5
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$10;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v7

    :cond_d4
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_fc

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_fc

    const v4, 0x7f120f21

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto :goto_96

    :cond_fc
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_96

    const v4, 0x7f120f20

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto/16 :goto_96

    :cond_127
    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_151

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_96

    :cond_151
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_96

    const v4, 0x7f120f0a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120f0b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    goto/16 :goto_96

    :cond_173
    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-nez v4, :cond_184

    const v4, 0x7f120609

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ab

    :cond_184
    const v4, 0x7f1213e0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ab
.end method

.method public editKeyPressed(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2077

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v3, "IrisSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onActivityResult : requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " resultCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_44

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    if-nez v3, :cond_44

    const-string/jumbo v3, "hw_auth_token_iris"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_44
    packed-switch p1, :pswitch_data_10c

    :cond_47
    :goto_47
    :pswitch_47
    return-void

    :pswitch_48
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0x2c3

    if-ne p1, v3, :cond_5f

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_47

    :cond_5f
    const/16 v3, 0x2c4

    if-ne p1, v3, :cond_69

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    goto :goto_47

    :cond_69
    const/16 v3, 0x2c6

    if-ne p1, v3, :cond_47

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.spay"

    const-string/jumbo v4, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "IrisSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_89
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_8c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_47

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_47

    :pswitch_92
    if-ne p2, v7, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    goto :goto_47

    :pswitch_98
    if-ne p2, v7, :cond_b1

    const/4 v3, 0x1

    :try_start_9b
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ab} :catch_ac

    goto :goto_47

    :catch_ac
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :cond_b1
    const/4 v3, 0x0

    :try_start_b2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c2} :catch_c3

    goto :goto_47

    :catch_c3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :pswitch_c8
    if-eq p2, v7, :cond_cc

    if-ne p2, v6, :cond_e5

    :cond_cc
    const/4 v3, 0x1

    :try_start_cd
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dd} :catch_df

    goto/16 :goto_47

    :catch_df
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_47

    :cond_e5
    const/4 v3, 0x0

    :try_start_e6
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f6} :catch_f8

    goto/16 :goto_47

    :catch_f8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_47

    :pswitch_fe
    if-ne p2, v7, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "iris_samsungpass_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_47

    :pswitch_data_10c
    .packed-switch 0x2bd
        :pswitch_48
        :pswitch_92
        :pswitch_47
        :pswitch_c8
        :pswitch_98
        :pswitch_fe
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_21

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_21
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v2, :cond_65

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is null fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setHasOptionsMenu(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_65
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is not null success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_18
    const/4 v0, 0x1

    const v1, 0x7f120cf8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1f
    const/4 v0, 0x2

    const v1, 0x7f12087e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_5e

    :goto_1a
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :sswitch_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "helphub:section"

    const-string/jumbo v3, "irises"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return v5

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    :sswitch_47
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showDisclaimerDialog()V

    return v5

    :sswitch_4b
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1a

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_47
        0x102002c -> :sswitch_4b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "IrisesEntry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 15

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v10, "IrisSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "=====onPreferenceChange : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "iris_samsung_account"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    if-nez v7, :cond_109

    const/16 v7, 0x2c4

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v9

    :cond_42
    const-string/jumbo v7, "iris_screen_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    if-eqz v2, :cond_151

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-eqz v7, :cond_14e

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    xor-int/lit8 v6, v7, 0x1

    :goto_7b
    if-eqz v2, :cond_173

    if-nez v3, :cond_81

    if-eqz v4, :cond_154

    :cond_81
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->showIrisUnlockTurnOnDialog(ZZ)V

    :goto_84
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02bd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_192

    :goto_95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_9c
    :goto_9c
    return v9

    :cond_9d
    const-string/jumbo v7, "iris_web_signin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    if-eqz v7, :cond_195

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_b8
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_19c

    :goto_c9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_9c

    :cond_d1
    const-string/jumbo v7, "use_iris_first_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    if-eqz v2, :cond_1b3

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x100

    invoke-virtual {v7, v11, v10}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v8, :cond_19f

    const/4 v1, 0x1

    :goto_eb
    if-ne v1, v8, :cond_1a2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V

    :goto_f0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_1c4

    :goto_101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_9c

    :cond_109
    if-eqz v2, :cond_112

    iput-boolean v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v7

    return v7

    :cond_112
    const/4 v7, 0x0

    :try_start_113
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v10, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v7, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_12c} :catch_147

    :goto_12c
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0b02b8

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v2, :cond_14c

    move v7, v8

    :goto_13e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_9c

    :catch_147
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12c

    :cond_14c
    move v7, v9

    goto :goto_13e

    :cond_14e
    const/4 v6, 0x1

    goto/16 :goto_7b

    :cond_151
    const/4 v6, 0x0

    goto/16 :goto_7b

    :cond_154
    if-eqz v6, :cond_15c

    const/16 v7, 0x2c5

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v9

    :cond_15c
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_84

    :cond_173
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f121d56

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_84

    :cond_192
    move v8, v9

    goto/16 :goto_95

    :cond_195
    const/16 v7, 0x2c3

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto/16 :goto_b8

    :cond_19c
    move v8, v9

    goto/16 :goto_c9

    :cond_19f
    const/4 v1, 0x0

    goto/16 :goto_eb

    :cond_1a2
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "use_iris_firstlock"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f0

    :cond_1b3
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "use_iris_firstlock"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f0

    :cond_1c4
    move v8, v9

    goto/16 :goto_101
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 14

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceTreeClick  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "register_irises"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock()V

    :cond_31
    :goto_31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_36
    const-string/jumbo v0, "iris_samsung_pay"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-nez v0, :cond_f7

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "There is no Registered Irises."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2c6

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto :goto_31

    :cond_58
    const-string/jumbo v0, "change_reset_password"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "com.android.settings"

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "changepassword"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    :cond_7a
    const-string/jumbo v0, "iris_preview_style"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisPreveiwStyleFragment"

    const v6, 0x7f120e51

    move-object v5, v3

    move-object v7, v3

    move v8, v4

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b029a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_31

    :cond_a9
    const-string/jumbo v0, "iris_samsung_pass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchSamsungpassFromIris()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02b9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_31

    :cond_c9
    const-string/jumbo v0, "tips_for_iris"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchTipNTutorial()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_31

    :cond_e9
    const-string/jumbo v0, "registered_iris"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    goto/16 :goto_31

    :cond_f7
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "There is Registered Irises. Launch the SamsungPay"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.spay"

    const-string/jumbo v1, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "IrisSettings"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_117
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_11a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_117 .. :try_end_11a} :catch_12e

    :goto_11a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_31

    :catch_12e
    move-exception v9

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_11a
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ffe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->buildPreferenceForCOM()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "IrisesEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected removeIris()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    :cond_3b
    return-void
.end method

.method public selecFirstlockDialog()V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121d55

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121d54

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121b80

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$6;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$7;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .registers 11

    const/4 v9, 0x1

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "startDisclaimerFromSamsungAccount"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_59

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v7, "com.osp.app.signin"

    invoke-virtual {v3, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    array-length v5, v6

    if-nez v5, :cond_53

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "mypackage"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "OSP_VER"

    const-string/jumbo v8, "OSP_02"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "MODE"

    const-string/jumbo v8, "ADD_ACCOUNT"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v7, 0x2c0

    :try_start_50
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_50 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return v9

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_53

    :cond_59
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "client_id"

    const-string/jumbo v8, "s5d189ajvs"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "client_secret"

    const-string/jumbo v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    if-eqz v7, :cond_9a

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is true."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :try_start_87
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_95

    :goto_8a
    const/16 v7, 0x2c1

    :try_start_8c
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_53

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_53

    :catch_95
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8a

    :cond_9a
    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is false."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_a4
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_8a

    :catch_a8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8a
.end method
