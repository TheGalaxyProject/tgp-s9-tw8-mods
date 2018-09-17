.class public Lcom/android/settings/development/TelephonyMonitorPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "TelephonyMonitorPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "telephony_monitor_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "persist.radio.enable_tel_mon"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_21
    return-void
.end method

.method public enablePreference(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "telephony_monitor_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x1

    const-string/jumbo v1, "telephony_monitor_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "persist.radio.enable_tel_mon"

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "true"

    :goto_1d
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121bb7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    :cond_2d
    const-string/jumbo v1, "false"

    goto :goto_1d

    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x1

    goto :goto_2d

    :cond_30
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public updatePreference()Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    const-string/jumbo v1, "persist.radio.enable_tel_mon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->updatePreference()Z

    return-void
.end method
