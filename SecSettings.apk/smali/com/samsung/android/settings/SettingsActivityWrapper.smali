.class public Lcom/samsung/android/settings/SettingsActivityWrapper;
.super Lcom/android/settings/SettingsActivity;
.source "SettingsActivityWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onIsHidingHeaders()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_24
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
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->openSearchView()V

    const/4 v0, 0x1

    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_80

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    :pswitch_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_76

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_76

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_76

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "Settings$ConnectionsSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string/jumbo v6, "Settings$CloudAccountSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string/jumbo v6, "Settings$GeneralDeviceSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string/jumbo v6, "Settings$DeviceMaintenanceSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    :cond_5b
    const/4 v3, 0x1

    :cond_5c
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-nez v6, :cond_68

    if-eqz v3, :cond_73

    :cond_68
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.android.settings.Settings"

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_73
    :try_start_73
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SettingsActivityWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_76} :catch_7b

    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->finish()V

    const/4 v6, 0x1

    return v6

    :catch_7b
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_76

    :pswitch_data_80
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
