.class public Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BugReportInPowerPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private setBugreportStorageProviderStatus()V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_1f
    move v2, v3

    goto :goto_1b
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "bugreport_in_power"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    :cond_14
    return-void
.end method

.method public enablePreference(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "bugreport_in_power"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "bugreport_in_power"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bugreport_in_power_menu"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_22

    move v1, v2

    :cond_22
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->setBugreportStorageProviderStatus()V

    return v2

    :cond_29
    return v1
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public resetPreference()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    :cond_13
    return-void
.end method

.method public updateBugreportOptions()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->setBugreportStorageProviderStatus()V

    return-void
.end method

.method public updatePreference()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :goto_18
    iget-object v1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->updatePreference()Z

    return-void
.end method
