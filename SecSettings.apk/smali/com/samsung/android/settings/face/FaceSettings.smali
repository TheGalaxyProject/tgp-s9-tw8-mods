.class public Lcom/samsung/android/settings/face/FaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceSettings$1;,
        Lcom/samsung/android/settings/face/FaceSettings$2;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z


# instance fields
.field private SCREEN_ID_REMOVE:I

.field private isRunRegister:Z

.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedTurnOnCheck:Z

.field private mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

.field private mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mUserId:I

.field private mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/FaceSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/FaceSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/face/FaceSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelAndSessionEnd()V
    .registers 3

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->stopFaceSettings()V

    sget-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finishFaceSettings()V

    goto :goto_13
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_12
    const v1, 0x7f1500fe

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->setFaceSettingsPreference()V

    return-object v0
.end method

.method private deleteFace()Z
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "deleteFace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ac5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ac4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/face/FaceSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceSettings$5;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const v2, 0x7f120609

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/face/FaceSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceSettings$6;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/face/FaceSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceSettings$7;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x1

    return v1
.end method

.method private runRegister(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "FcstFaceSettings"

    const v4, 0x7f12037e

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "identifyFace"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_3d
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister already called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e8

    :try_start_7f
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_82
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return-void

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_82
.end method

.method private setFaceSettingsPreference()V
    .registers 16

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-string/jumbo v8, "register_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "feature_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "unlock_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "key_facelock_register"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v8, "key_facelock_remove"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v8, "key_facelock_password"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v8, :cond_73

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v8, v11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setFaceSettingsPreference : hasEnrolledFace["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v1, :cond_1fd

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

    :goto_79
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "biometrics_backup_type"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v8, :cond_201

    if-nez v5, :cond_9d

    if-nez v5, :cond_201

    if-ne v0, v9, :cond_201

    :cond_9d
    :goto_9d
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v11, "setFaceSettingsPreference : Remove Change Backup Password"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    const-string/jumbo v8, "key_facelock_unlock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v12, 0x100

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v8

    if-ne v8, v9, :cond_207

    const/4 v2, 0x1

    :goto_c5
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v12, 0x1000

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v8

    if-ne v8, v9, :cond_20a

    const/4 v3, 0x1

    :goto_d2
    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isFaceScreenLock : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isIBScreenLock : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_125

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_125

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_125
    const-string/jumbo v8, "key_facelock_samsung_pass"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_14c

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_20d

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v8, :cond_20d

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v11, "setFaceSettingsPreference : Remove the SamsungPass"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14c
    :goto_14c
    const-string/jumbo v8, "key_facelock_without_swipe_to_unlock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1a1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v7

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "withoutSwipeToUnlockValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_230

    move v8, v9

    :goto_184
    invoke-virtual {v11, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_233

    if-eqz v2, :cond_233

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    :goto_199
    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1a1
    const-string/jumbo v8, "key_facelock_recognition_speed_up"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1eb

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFaceFasterRecognition()Z

    move-result v8

    if-eqz v8, :cond_238

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v9}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v4

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isRecognitionSpeedUp : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_236

    :goto_1e3
    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1eb
    :goto_1eb
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    :cond_1fd
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

    goto/16 :goto_79

    :cond_201
    xor-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_ad

    goto/16 :goto_9d

    :cond_207
    const/4 v2, 0x0

    goto/16 :goto_c5

    :cond_20a
    const/4 v3, 0x0

    goto/16 :goto_d2

    :cond_20d
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f120add

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120bc7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_14c

    :cond_230
    move v8, v10

    goto/16 :goto_184

    :cond_233
    move v8, v10

    goto/16 :goto_199

    :cond_236
    move v2, v10

    goto :goto_1e3

    :cond_238
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v8, :cond_1eb

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v9, "setFaceSettingsPreference : Remove Faster Recognition"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v10, v9}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v14, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_1eb
.end method

.method private showDisclaimerDialog()V
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_55

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10302d2

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12087e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/face/FaceSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/FaceSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_54
    :goto_54
    return-void

    :cond_55
    const-string/jumbo v3, "FcstFaceSettings"

    const-string/jumbo v4, "showDisclaimerDialog : innerView is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method private showFaceTurnOnDialog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_16

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FaceSettings_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .registers 7

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_30
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_34
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_34
.end method

.method private stopFaceSettings()V
    .registers 3

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "stopFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .registers 3

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "finishFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2e
    return-void

    :cond_2f
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1c
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120cfd

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x20d0

    return v0
.end method

.method public makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;
    .registers 17

    const/4 v2, 0x0

    if-eqz p1, :cond_c6

    move-object/from16 v12, p1

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0d02b2

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c6

    const v12, 0x7f0a026e

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120ab0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    const v12, 0x7f0a026f

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_5b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120ab1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5b
    const v12, 0x7f0a0271

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aac

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_74
    const v12, 0x7f0a0273

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_ad

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aaf

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ad
    const v12, 0x7f0a0274

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_c6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aae

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c6
    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_7a

    :cond_2f
    :goto_2f
    return-void

    :sswitch_30
    if-eqz p3, :cond_42

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    const-string/jumbo v1, "previousStage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_42
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_52

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_52
    if-eq p2, v4, :cond_2f

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :sswitch_5e
    if-ne p2, v4, :cond_75

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2f

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_2f

    :cond_75
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    goto :goto_2f

    nop

    :sswitch_data_7a
    .sparse-switch
        0xc9 -> :sswitch_5e
        0x3e8 -> :sswitch_30
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "FcstFaceSettings"

    const v4, 0x7f12037e

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    return-void

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c4

    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "identifyFace"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    const-string/jumbo v2, "isAfw"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v2, "needTurnOnCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needTurnOnCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c4

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_c4
    if-eqz p1, :cond_cf

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_cf
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->setHasOptionsMenu(Z)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f120b6a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_19

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_44

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    :cond_28
    if-gez v0, :cond_44

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_54

    :goto_25
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->showDisclaimerDialog()V

    goto :goto_25

    :sswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_25

    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_2a
        0x102002c -> :sswitch_40
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_39

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_39

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "FaceEntry"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_38
    return-void

    :cond_39
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_2c

    :cond_3d
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_56

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_2c

    :cond_56
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_2c
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====onPreferenceChange : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0217

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v2, v3

    :goto_45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_cd

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_71

    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return v1

    :cond_6f
    move v2, v4

    goto :goto_45

    :cond_71
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_8d

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_8d
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/FaceSettings;->showFaceTurnOnDialog(Z)V

    return v4

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4, v5, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_a5
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6e

    :cond_af
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6e

    :cond_cd
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_f5

    :cond_f1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->showFaceTurnOnDialog(Z)V

    :goto_f4
    return v4

    :cond_f5
    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_f4

    :cond_fc
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0215

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_134

    :goto_11c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto/16 :goto_6e

    :cond_134
    move v3, v4

    goto :goto_11c

    :cond_136
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v5, v2, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b020b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16e

    :goto_165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6e

    :cond_16e
    move v3, v4

    goto :goto_165

    :cond_170
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceTreeClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "key_facelock_register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "FaceSettings_register"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_2e
    return v2

    :cond_2f
    const-string/jumbo v3, "key_facelock_remove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0211

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    goto :goto_2e

    :cond_57
    const-string/jumbo v3, "key_facelock_password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-class v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "changepassword"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_7e
    const-string/jumbo v3, "key_facelock_samsung_pass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "biometricType"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_2e

    :cond_9d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "=====onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_29
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    :cond_3b
    return-void

    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "Enroll session close."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_84

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "Session closed! Token must be null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_84
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_af

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0218

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_113

    move v0, v1

    :goto_a8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_af
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_da

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0216

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_115

    move v0, v1

    :goto_d3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_da
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_104

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_117

    :goto_fd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_104
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FaceEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_113
    move v0, v2

    goto :goto_a8

    :cond_115
    move v0, v2

    goto :goto_d3

    :cond_117
    move v1, v2

    goto :goto_fd
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public turnOffFaceLock()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_25
    return-void
.end method

.method public turnOnFaceLock()V
    .registers 4

    const/4 v2, 0x1

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "No registered face! runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FaceSettings_unlock_switch"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Face already registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_45
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_29
.end method
