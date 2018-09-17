.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# instance fields
.field private mConfirmCredentialTheme:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    return-object v0

    :cond_15
    return-object v3
.end method


# virtual methods
.method public getConfirmCredentialTheme()Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2e

    const v3, 0x7f130247

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    sget-object v3, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    :cond_2e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v6, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->INTERNAL:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v3, v6, :cond_43

    const v3, 0x7f0a01c2

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    :cond_43
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x2000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_9e

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    :goto_5a
    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    iget-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v3, :cond_76

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x80000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_76
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_98

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_98
    if-eqz p1, :cond_a6

    move v3, v4

    :goto_9b
    iput-boolean v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    return-void

    :cond_9e
    const-string/jumbo v3, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_5a

    :cond_a6
    move v3, v5

    goto :goto_9b
.end method

.method public onEnterAnimationComplete()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_d
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    :cond_22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "STATE_IS_KEYGUARD_LOCKED"

    iget-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public prepareEnterAnimation()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    return-void
.end method

.method public startEnterAnimation()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    return-void
.end method
