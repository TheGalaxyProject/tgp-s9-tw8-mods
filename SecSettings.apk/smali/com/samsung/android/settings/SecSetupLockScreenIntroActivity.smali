.class public Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.super Landroid/app/Activity;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;,
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;,
        Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;
    }
.end annotation


# instance fields
.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mResultCode:I

.field private nextButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mResultCode:I

    iput-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;-><init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private updateView(Z)V
    .registers 14

    const v11, 0x7f0a04d7

    const v10, 0x7f0a04d5

    const/16 v9, 0x8

    const v7, 0x7f0a0851

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    const v7, 0x7f0a04d3

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v7, 0x7f0a0237

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v7, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$2;-><init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a04da

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_9b

    const v7, 0x7f0a0236

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f1218f2

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v9}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_63
    :goto_63
    const v7, 0x7f0a04d9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v7, 0x7f0a04cf

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_109

    if-eqz v3, :cond_93

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1219a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_93
    :goto_93
    if-eqz v3, :cond_9a

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9a
    return-void

    :cond_9b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v7

    if-eqz v7, :cond_fb

    if-eqz p1, :cond_fb

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v11}, Landroid/widget/RadioGroup;->check(I)V

    :cond_a8
    :goto_a8
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v7

    if-nez v7, :cond_c2

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_c2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_d4

    const v7, 0x7f0a04d8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_d4
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e7

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_e7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v7

    if-nez v7, :cond_63

    const v7, 0x7f0a04d4

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_63

    :cond_fb
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v7

    if-nez v7, :cond_a8

    if-eqz p1, :cond_a8

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v10}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_a8

    :cond_109
    if-eqz v3, :cond_93

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121290

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_93
.end method


# virtual methods
.method public hasMultipleUsers()Z
    .registers 3

    const/4 v1, 0x1

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public nextAction(I)V
    .registers 5

    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nextAction resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x2735

    if-ne p1, v0, :cond_18

    if-eqz p3, :cond_18

    const-string/jumbo v0, ":settings:password_quality"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    return-void

    :cond_18
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_10
    const v0, 0x7f0d02cd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 8

    const/4 v3, 0x1

    const-string/jumbo v4, "SetupLockScreenIntroActivity"

    const-string/jumbo v5, "onDestroy"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_14
    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v3, :cond_59

    const/4 v1, 0x1

    :goto_27
    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/16 v6, 0x1000

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v3, :cond_5b

    const/4 v2, 0x1

    :goto_3a
    if-eqz v0, :cond_53

    if-nez v1, :cond_5d

    :goto_3e
    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_53

    const-string/jumbo v3, "SetupLockScreenIntroActivity"

    const-string/jumbo v4, "Remove all face template"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureUserID([B)Z

    :cond_53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_57
    const/4 v0, 0x0

    goto :goto_14

    :cond_59
    const/4 v1, 0x0

    goto :goto_27

    :cond_5b
    const/4 v2, 0x0

    goto :goto_3a

    :cond_5d
    move v2, v3

    goto :goto_3e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->finish()V

    return v2

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->updateView(Z)V

    return-void
.end method

.method protected startFirstRunActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    const-string/jumbo v0, "SetupLockScreenIntroActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting activity for result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hasMultipleUsers"

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->hasMultipleUsers()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "useImmersiveMode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
