.class public Lcom/samsung/android/settings/iris/UseIrisLockSettings;
.super Landroid/app/Activity;
.source "UseIrisLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFaceUnlock:Landroid/widget/CheckedTextView;

.field private mFaceUnlockBtnArea:Landroid/view/View;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisUnlock:Landroid/widget/CheckedTextView;

.field private mIrisUnlockBtnArea:Landroid/view/View;

.field private mLaterBtn:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeArea:Landroid/widget/RadioGroup;

.field private mOkBtn:Landroid/widget/Button;

.field private mOneBtnContainer:Landroid/widget/LinearLayout;

.field private mTurnOnBtn:Landroid/widget/Button;

.field private mTwoBtnContainer:Landroid/widget/LinearLayout;

.field private mUserId:I

.field private misFaceLockEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    return-void
.end method

.method private getCurrentLockType()Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v0, ""

    sparse-switch v1, :sswitch_data_62

    :goto_e
    return-object v0

    :sswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121cda

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121cd6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121cd8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_33
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121cd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121cd2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :sswitch_55
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120856

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_33
        0x10000 -> :sswitch_27
        0x10001 -> :sswitch_55
        0x20000 -> :sswitch_f
        0x30000 -> :sswitch_f
        0x40000 -> :sswitch_1b
        0x50000 -> :sswitch_1b
        0x60000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private setIrisLockDescription()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    if-eqz v1, :cond_e

    const v1, 0x7f120e71

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120932

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getCurrentLockType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120931

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getCurrentLockType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/16 v4, 0x100

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v3, :cond_45

    const/4 v0, 0x1

    :goto_f
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_47

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Turn on pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_33
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->finish()V

    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_f

    :cond_47
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_63

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Later pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_41

    :cond_63
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_93

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "OK pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_41

    :cond_80
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_41

    :cond_93
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v1, :cond_9b

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    if-ne p1, v1, :cond_af

    :cond_9b
    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Face unlock button enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_af
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v1, :cond_b7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    if-ne p1, v1, :cond_41

    :cond_b7
    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Iris unlock button enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const v0, 0x7f0d035a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFaceLockEnabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "knox_userId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    const-string/jumbo v0, "UseIrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "UseIrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0446

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setIrisLockDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0451

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a0450

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a05e1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a08f8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0481

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    const v0, 0x7f0a08ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    const v0, 0x7f0a05dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    if-eqz v0, :cond_161

    const v0, 0x7f120e72

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_101
    :goto_101
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    if-ne v0, v5, :cond_153

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_153
    iget v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_160
    return-void

    :cond_161
    const v0, 0x7f120930

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_170
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_101
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "UseIrisLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_18
    const-string/jumbo v0, "UseIrisLockSettings"

    const-string/jumbo v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->finish()V

    return-void

    :cond_25
    return-void
.end method
