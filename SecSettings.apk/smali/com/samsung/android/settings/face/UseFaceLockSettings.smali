.class public Lcom/samsung/android/settings/face/UseFaceLockSettings;
.super Landroid/app/Activity;
.source "UseFaceLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFaceUnlock:Landroid/widget/CheckedTextView;

.field private mFaceUnlockBtnArea:Landroid/view/View;

.field private mIrisUnlock:Landroid/widget/CheckedTextView;

.field private mIrisUnlockBtnArea:Landroid/view/View;

.field private mIsIrisLockEnabled:Z

.field private mIsSecured:Z

.field private mLaterBtn:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeArea:Landroid/widget/RadioGroup;

.field private mOkBtn:Landroid/widget/Button;

.field private mOneBtnContainer:Landroid/widget/LinearLayout;

.field private mTurnOnBtn:Landroid/widget/Button;

.field private mTwoBtnContainer:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    return-void
.end method

.method private getFaceLockDescription()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsIrisLockEnabled:Z

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120ae5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_c4

    const-string/jumbo v3, "FcstUseFaceLockSettings"

    const-string/jumbo v4, "Wrong case!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const v5, 0x7f120ae3

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const v5, 0x7f120ae4

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_52
    const-string/jumbo v3, "FcstUseFaceLockSettings"

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

    :sswitch_6d
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cda

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :sswitch_79
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :sswitch_85
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :sswitch_91
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_a9
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121cd2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    :sswitch_b6
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120856

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    nop

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_91
        0x10000 -> :sswitch_85
        0x10001 -> :sswitch_b6
        0x20000 -> :sswitch_6d
        0x30000 -> :sswitch_6d
        0x40000 -> :sswitch_79
        0x50000 -> :sswitch_79
        0x60000 -> :sswitch_79
    .end sparse-switch
.end method

.method private showFaceTurnOnDialog(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_16

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "UseFaceLockSettings_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_3a

    const-string/jumbo v2, "FcstUseFaceLockSettings"

    const-string/jumbo v3, "Turn on pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->showFaceTurnOnDialog(Z)V

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->finish()V

    return-void

    :cond_3a
    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLaterBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_57

    const-string/jumbo v2, "FcstUseFaceLockSettings"

    const-string/jumbo v3, "Later pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsSecured:Z

    if-eqz v5, :cond_55

    :goto_51
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto :goto_36

    :cond_55
    move v0, v1

    goto :goto_51

    :cond_57
    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOkBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_92

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v2, "OK pressed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_88

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v2, "Change to face unlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    goto :goto_36

    :cond_88
    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v1, "Keep iris unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_92
    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v2, :cond_9a

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    if-ne p1, v2, :cond_ae

    :cond_9a
    const-string/jumbo v2, "FcstUseFaceLockSettings"

    const-string/jumbo v3, "Face unlock button enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_ae
    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v2, :cond_b6

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    if-ne p1, v2, :cond_36

    :cond_b6
    const-string/jumbo v2, "FcstUseFaceLockSettings"

    const-string/jumbo v3, "Iris unlock button enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const v1, 0x7f12037e

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->finish()V

    return-void

    :cond_18
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const v0, 0x7f0d02bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isSecured"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsSecured:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsIrisLockEnabled:Z

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Iris is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsIrisLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getFaceLockDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0451

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a0450

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a05e1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a08f8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0481

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLaterBtn:Landroid/widget/Button;

    const v0, 0x7f0a08ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    const v0, 0x7f0a05dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOkBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIsIrisLockEnabled:Z

    if-eqz v0, :cond_149

    const v0, 0x7f120ae8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_102
    :goto_102
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLaterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_148

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_148
    return-void

    :cond_149
    const v0, 0x7f120ae7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_158
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_102
.end method

.method public turnOffFaceLock()V
    .registers 3

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->finish()V

    return-void
.end method

.method public turnOnFaceLock()V
    .registers 3

    const-string/jumbo v0, "FcstUseFaceLockSettings"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettings;->finish()V

    return-void
.end method
