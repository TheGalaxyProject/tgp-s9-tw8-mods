.class public Lcom/samsung/android/settings/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFromBixbySUW:Z

.field private mHasEnrolledFaces:Z

.field private mIdentifyFace:Z

.field private mIrisLockEnabled:Z

.field private mIsAfw:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mSmartScanLockEnabled:Z

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceLockSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceLockSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceLockSettings;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceLockSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method private closeSessionAndFinish()V
    .registers 4

    const-string/jumbo v0, "FcstFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeSessionAndFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the Face session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_56

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Close Face Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_56
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    goto :goto_3a
.end method

.method private initFaceLockSettings()V
    .registers 7

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    const-string/jumbo v3, "identifyFace"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    const-string/jumbo v3, "FcstFaceLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreviousStage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_83

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, ":settings:fragment_args_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, ":settings:fragment_args_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    :cond_83
    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_8e

    const/4 v1, 0x0

    :cond_8e
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    :cond_9a
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    :cond_a8
    const-string/jumbo v3, "FcstFaceLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHasEnrolledFaces : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "setupwizard_face"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v3, :cond_e1

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    xor-int/lit8 v2, v2, 0x1

    :cond_e1
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    const-string/jumbo v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFromBixbySUW : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    const-string/jumbo v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIrisLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-eqz v2, :cond_139

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    :cond_139
    const-string/jumbo v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSmartScanLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private launchChooseLock()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_43
    const-string/jumbo v2, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string/jumbo v2, "FaceSettings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string/jumbo v2, "FaceSettings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_64
    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6a
    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_78
    const-string/jumbo v2, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a5

    :cond_95
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b3

    :cond_a5
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b3
    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c4
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "faceAuthNotNeed"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_ce
    const/16 v2, 0x11

    :try_start_d0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d0 .. :try_end_d7} :catch_d8

    :goto_d7
    return-void

    :catch_d8
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_d7
.end method

.method private launchConfirmLock()V
    .registers 11

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "launchConfirmLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v8, 0x0

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_2f

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "initFaceLockSettings : preEnroll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    :cond_2f
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const v0, 0x7f12192d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    const/16 v2, 0x3eb

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v9, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_5d
    return-void
.end method

.method private processFaceRegistrationResult(I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "processFaceRegistrationResult"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    if-ne p1, v5, :cond_54

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureUserID([B)Z

    :cond_24
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v2, :cond_47

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    if-eqz v0, :cond_43

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "Wrong case! This case couldn\'t be exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_3a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_3f
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_3a

    :cond_47
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto :goto_3a

    :cond_54
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_5f

    move v0, v1

    :cond_5f
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_3f

    :cond_68
    const-string/jumbo v2, "FaceSettings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    if-ne p1, v5, :cond_a8

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_8c
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_94
    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_42

    :cond_9a
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_8f

    :cond_a8
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v2, :cond_af

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_af
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v2, :cond_c3

    move v2, v1

    :goto_ba
    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_94

    :cond_c3
    move v2, v0

    goto :goto_ba

    :cond_c5
    const-string/jumbo v2, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12f

    if-ne p1, v5, :cond_110

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v2, :cond_fd

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_f1
    :goto_f1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42

    :cond_fd
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_f1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_f1

    :cond_110
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_11b

    move v0, v1

    :cond_11b
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_125

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_125
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42

    :cond_12f
    const-string/jumbo v2, "FaceSettings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_197

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    if-ne p1, v5, :cond_17c

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    if-eqz v1, :cond_155

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_155
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    if-eqz v1, :cond_162

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_162
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_172

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_172
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_177
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42

    :cond_17c
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_187

    move v0, v1

    :cond_187
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_191

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_191
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_177

    :cond_197
    const-string/jumbo v2, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    if-ne p1, v5, :cond_1d8

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    if-eqz v1, :cond_1b1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1b1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    if-eqz v1, :cond_1be

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1be
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1ce

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_1ce
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_1d3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42

    :cond_1d8
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_1e3

    move v0, v1

    :cond_1e3
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1ed

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_1ed
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1d3

    :cond_1f3
    const-string/jumbo v0, "lock_screen_pin_pattern_password_biometrics"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_222

    if-ne p1, v5, :cond_213

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :goto_20e
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42

    :cond_213
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_20e

    :cond_222
    const-string/jumbo v0, "face_register_external"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_234

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_234
    if-ne p1, v5, :cond_250

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_24b

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    :cond_24b
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :cond_250
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_42
.end method

.method private showCurrentLockTypeToast()V
    .registers 7

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v2, 0x0

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_3c

    const-string/jumbo v3, "FcstFaceLockSettings"

    const-string/jumbo v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    if-eqz v0, :cond_2e

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_2e
    return-void

    :sswitch_2f
    const v0, 0x7f120b3c

    goto :goto_23

    :sswitch_33
    const v0, 0x7f120b38

    goto :goto_23

    :sswitch_37
    const v0, 0x7f120b3a

    goto :goto_23

    nop

    :sswitch_data_3c
    .sparse-switch
        0x10000 -> :sswitch_37
        0x20000 -> :sswitch_2f
        0x30000 -> :sswitch_2f
        0x40000 -> :sswitch_33
        0x50000 -> :sswitch_33
        0x60000 -> :sswitch_33
    .end sparse-switch
.end method

.method private showFaceRetryDialog()V
    .registers 5

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "showFaceRetryDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ab8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ab5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ab4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceLockSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/face/FaceLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFaceTurnOnDialog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_16

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FaceLockSettings_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2f
    const/16 v2, 0x11

    :try_start_31
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_38
.end method

.method private startFaceRegister(Z)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v6, "FcstFaceLockSettings"

    const-string/jumbo v7, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "key_face_settings_entry"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "always_finish_activities"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_90

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const v8, 0x7f120dc4

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f120b73

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f120b2c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/face/FaceLockSettings$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/settings/face/FaceLockSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_8f
    return-void

    :cond_90
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_a8

    const v6, 0x7f120b6d

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_8f

    :cond_a8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    const-string/jumbo v7, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "hw_auth_token"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v6, "face_enroll_retry"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    iget v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "setupwizard_face"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    const-string/jumbo v6, "fromSetupwizard"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e2
    iget-boolean v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    if-eqz v6, :cond_ec

    const-string/jumbo v6, "fromBixbySetupwizard"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_ec
    iget v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_f7

    const/4 v5, 0x0

    :cond_f7
    const/16 v6, 0x11

    :try_start_f9
    iput v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v7, 0x3ec

    invoke-virtual {p0, v3, v7, v6}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_105
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f9 .. :try_end_105} :catch_106

    :goto_105
    return-void

    :catch_106
    move-exception v1

    const-string/jumbo v6, "FcstFaceLockSettings"

    const-string/jumbo v7, "runRegister : Activity Not Found !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_105
.end method

.method private startFaceSettings(Landroid/content/Context;Z)V
    .registers 13

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p1

    if-nez p1, :cond_16

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2f
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "needTurnOnCheck"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v2, "com.samsung.android.settings.face.FaceSettings"

    const/4 v1, 0x0

    const v4, 0x7f12037e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_15

    :cond_73
    const-string/jumbo v2, "com.samsung.android.settings.face.FaceSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f12037e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    goto :goto_15
.end method

.method private startFasterRecognition()V
    .registers 5

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "Run FasterRecognition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceFasterRecognition"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_31
    const/16 v2, 0x11

    :try_start_33
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ee

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_3a} :catch_3b

    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startFasterRecognition : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_3a
.end method

.method private startRedactionInterstitial()V
    .registers 4

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "startRedactionInterstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string/jumbo v1, "setupwizard_face"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "fromSetupWizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_28
    return-void
.end method

.method private startUseFaceLockSettings()V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "com.samsung.android.settings.face.UseFaceLockSettingsDialog"

    :goto_11
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "tokenFromLock"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isSecured"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_3c
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_3f} :catch_44

    :goto_3f
    return-void

    :cond_40
    const-string/jumbo v2, "com.samsung.android.settings.face.UseFaceLockSettings"

    goto :goto_11

    :catch_44
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startUseFaceLockSettings : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_3f
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const v6, 0x7f0b020f

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v3, "FcstFaceLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " data is NULL : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_ad

    move v0, v1

    :goto_31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x1002

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_56
    if-eqz p3, :cond_a0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v3, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_7c

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_af

    const-string/jumbo v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :goto_72
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_7c
    const-string/jumbo v3, "FcstFaceLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: tokenFace="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    packed-switch p1, :pswitch_data_2f6

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "default : Not consider this case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ac
    return-void

    :cond_ad
    move v0, v2

    goto :goto_31

    :cond_af
    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    goto :goto_72

    :cond_b9
    const-string/jumbo v0, "NULL"

    goto :goto_95

    :pswitch_bd
    if-ne p2, v1, :cond_220

    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromBixbySUW:Z

    if-nez v0, :cond_d8

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_df

    :cond_d8
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto :goto_ac

    :cond_df
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    if-eqz v0, :cond_f6

    :cond_e7
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog(Z)V

    :cond_f2
    :goto_f2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_ac

    :cond_f6
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_f2

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_f2

    :cond_107
    const-string/jumbo v0, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong case! Couldn\'t be exist!(Unsecure, Face exist)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_ac

    :cond_127
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_ac

    :cond_12f
    const-string/jumbo v0, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    if-nez v0, :cond_14a

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    if-eqz v0, :cond_15a

    :cond_14a
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceTurnOnDialog(Z)V

    :cond_155
    :goto_155
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :cond_15a
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_155

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_155

    :cond_16b
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_ac

    :cond_17c
    const-string/jumbo v0, "face_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_19d

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is worng case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :cond_19d
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_ac

    :cond_1a5
    const-string/jumbo v0, "FaceSettings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_1d7

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d7

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :cond_1d7
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_ac

    :cond_1e8
    const-string/jumbo v0, "FaceSettings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_212

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_20a

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :cond_20a
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_ac

    :cond_212
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong case! Couldn\'t be exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :cond_220
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :pswitch_233
    const/4 v0, -0x2

    if-ne p2, v0, :cond_23b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceRetryDialog()V

    goto/16 :goto_ac

    :cond_23b
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    const-string/jumbo v0, "setupwizard_face"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_298

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :goto_273
    if-ne p2, v5, :cond_286

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v5, :cond_286

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_286
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    if-eqz v0, :cond_2b8

    if-ne p2, v5, :cond_2b8

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFasterRecognition()V

    goto/16 :goto_ac

    :cond_298
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_273

    :cond_2b8
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_ac

    :pswitch_2bd
    if-ne p2, v5, :cond_2c4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_ac

    :cond_2c4
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :pswitch_2c9
    if-ne p2, v5, :cond_2d9

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_ac

    :cond_2d9
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_ac

    :pswitch_2e7
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_ac

    :pswitch_2ec
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_ac

    :pswitch_2f1
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_ac

    :pswitch_data_2f6
    .packed-switch 0x3ea
        :pswitch_bd
        :pswitch_2bd
        :pswitch_233
        :pswitch_2c9
        :pswitch_2e7
        :pswitch_2ec
        :pswitch_2f1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FcstFaceLockSettings"

    const v1, 0x7f12037e

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_29
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->initFaceLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "setupwizard_face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_ef

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    :goto_5c
    return-void

    :cond_5d
    const-string/jumbo v1, "key_face_settings_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_14a

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14a

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_5c

    :cond_7d
    const-string/jumbo v1, "FaceSettings_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    :cond_86
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_170

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_5c

    :cond_97
    const-string/jumbo v1, "FaceSettings_unlock_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string/jumbo v1, "lock_screen_face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_199

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_5c

    :cond_ba
    const-string/jumbo v1, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1c2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_5c

    :cond_d4
    const-string/jumbo v1, "face_register_external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1eb

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_5c

    :cond_ef
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_101

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_101
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_10f
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_121

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_5c

    :cond_121
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_13c

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_13c
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_14a
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-nez v0, :cond_15c

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_15c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    goto/16 :goto_5c

    :cond_16b
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_170
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_18b

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_18b
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_199
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_1b4

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_1b4
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_1c2
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_1dd

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_1dd
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_1eb
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_206

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5c

    :cond_206
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5c

    :cond_214
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5c
.end method

.method protected onDestroy()V
    .registers 3

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public turnOffFaceLock()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->overridePendingTransition(II)V

    :cond_18
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method public turnOnFaceLock()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->overridePendingTransition(II)V

    :cond_18
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method
