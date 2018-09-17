.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/SettingsActivity;
.source "SubSettings.java"


# instance fields
.field private fromSearch:Z

.field private isLaunched:Z

.field private needSearchMenuInSub:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    return-void
.end method


# virtual methods
.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string/jumbo v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string/jumbo v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    :cond_2e
    if-eqz v0, :cond_39

    const-string/jumbo v2, "needSearchMenuInSub"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    :cond_39
    if-eqz p1, :cond_4d

    const-string/jumbo v2, "isLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    const-string/jumbo v2, "fromSearch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    :cond_4d
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x54

    if-eq p1, v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x22

    if-ne p1, v0, :cond_13

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->openSearchView()V

    const/4 v0, 0x1

    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNavigateUp()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    return-void
.end method

.method protected onPostResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPostResume()V

    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->onBackPressed()V

    :cond_10
    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-nez v1, :cond_15

    return-void

    :cond_15
    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0654

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    const-class v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    :cond_40
    :goto_40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    goto :goto_40
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .registers 6

    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->registerAssistant()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "isLaunched"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "fromSearch"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_f

    sget-boolean v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->sIsRunningSearchFragment:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->registerAssistant()V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    goto :goto_e
.end method

.method public registerAssistant()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    return-void
.end method

.method public unregisterAssistant()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    return-void
.end method
