.class public Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.super Landroid/app/Activity;
.source "UseAdditionalBiometrics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsSupportBioFace:Z


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private faceLayout:Landroid/widget/LinearLayout;

.field private faceSwitch:Landroid/widget/Switch;

.field private fingerprintLayout:Landroid/widget/LinearLayout;

.field private fingerprintSwitch:Landroid/widget/Switch;

.field private irisLayout:Landroid/widget/LinearLayout;

.field private irisSwitch:Landroid/widget/Switch;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mToken:[B

.field private mTokenFace:[B

.field private mtoken_2nd:[B

.field private okBtn:Landroid/widget/Button;

.field screenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "UseAdditionalBiometrics"

    sput-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    new-instance v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;-><init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initBiometricsSettings()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3c
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_4d
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_60
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_81
    return-void

    :cond_82
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3c

    :cond_88
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4d

    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_60

    :cond_94
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_81
.end method

.method private sendBioMetricsLogging()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v0, ""

    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v0, "Fingerprint_"

    :cond_36
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_58
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Face_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7a
    sparse-switch v1, :sswitch_data_ea

    const-string/jumbo v0, ""

    :goto_80
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_aa

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    return-void

    :sswitch_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :sswitch_c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :sswitch_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :sswitch_data_ea
    .sparse-switch
        0x10000 -> :sswitch_d5
        0x20000 -> :sswitch_ab
        0x30000 -> :sswitch_ab
        0x40000 -> :sswitch_c0
        0x50000 -> :sswitch_c0
        0x60000 -> :sswitch_c0
    .end sparse-switch
.end method

.method private setBiometricsDescription()Ljava/lang/String;
    .registers 7

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    const-string/jumbo v1, ""

    const v3, 0x7f120b90

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sparse-switch v2, :sswitch_data_64

    :goto_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const v5, 0x7f121d52

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_33
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cda

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :sswitch_3f
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :sswitch_4b
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :sswitch_57
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cb9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    nop

    :sswitch_data_64
    .sparse-switch
        0x10000 -> :sswitch_4b
        0x10001 -> :sswitch_57
        0x20000 -> :sswitch_33
        0x30000 -> :sswitch_33
        0x40000 -> :sswitch_3f
        0x50000 -> :sswitch_3f
        0x60000 -> :sswitch_3f
    .end sparse-switch
.end method

.method private startFaceLockSettings()V
    .registers 4

    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startFaceLockSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Face is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFingerprintLockSettings()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startIrisRegister()V
    .registers 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request_from_chooselock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_a8

    :goto_2a
    return-void

    :pswitch_2b
    if-eqz p2, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_36
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_2a

    :cond_4a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_2a

    :cond_5c
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    :cond_64
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_2a

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    :cond_7a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    :pswitch_7e
    if-eqz p2, :cond_88

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_88
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_2a

    :cond_94
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    :pswitch_98
    if-eqz p2, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_a3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_2a

    nop

    :pswitch_data_a8
    .packed-switch 0x7d0
        :pswitch_7e
        :pswitch_98
        :pswitch_2b
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_22
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_22

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2b

    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    goto :goto_7

    :sswitch_27
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFaceLockSettings()V

    goto :goto_7

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_7

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_7

    :sswitch_4b
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_7

    :sswitch_59
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_7

    :sswitch_67
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_7

    nop

    :sswitch_data_76
    .sparse-switch
        0x7f0a02fa -> :sswitch_67
        0x7f0a033e -> :sswitch_4b
        0x7f0a0445 -> :sswitch_59
        0x7f0a0481 -> :sswitch_8
        0x7f0a05dd -> :sswitch_27
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    :cond_3e
    sget-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_4a
    const v1, 0x7f121d51

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setTitle(I)V

    const v1, 0x7f0d0359

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setContentView(I)V

    const v1, 0x7f0a0481

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    const v1, 0x7f0a05dd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const v1, 0x7f0a00e0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f0a033e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0354

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    const v1, 0x7f0a0445

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a044d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    const v1, 0x7f0a02fa

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02ff

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setBiometricsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_108

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_e6
    sget-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_f4
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->initBiometricsSettings()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_108
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e6

    :cond_10e
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f4
.end method

.method protected onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->sendBioMetricsLogging()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    :cond_30
    return-void
.end method
