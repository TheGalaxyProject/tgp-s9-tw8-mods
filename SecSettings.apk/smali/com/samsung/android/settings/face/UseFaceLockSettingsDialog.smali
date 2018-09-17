.class public Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;
.super Landroid/app/Activity;
.source "UseFaceLockSettingsDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIsIrisLockEnabled:Z

.field private mIsSecured:Z

.field private mIsTurnOnClicked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsSecured:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    return-void
.end method

.method private getFaceLockDescription()Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120ae5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_ac

    const-string/jumbo v3, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v4, "Wrong case!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f120ae3

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FcstUseFaceLockSettingsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "description : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_58
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cda

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :sswitch_64
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :sswitch_70
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :sswitch_7c
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_94
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :sswitch_a0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120856

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :sswitch_data_ac
    .sparse-switch
        0x0 -> :sswitch_7c
        0x10000 -> :sswitch_70
        0x10001 -> :sswitch_a0
        0x20000 -> :sswitch_58
        0x30000 -> :sswitch_58
        0x40000 -> :sswitch_64
        0x50000 -> :sswitch_64
        0x60000 -> :sswitch_64
    .end sparse-switch
.end method

.method private showUseFaceLockSettingsDailog()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ae7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getFaceLockDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120390

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12038f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_53
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const v1, 0x7f12037e

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->finish()V

    return-void

    :cond_15
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const v0, 0x7f0d02bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isSecured"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsSecured:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Iris is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->showUseFaceLockSettingsDailog()V

    return-void
.end method
