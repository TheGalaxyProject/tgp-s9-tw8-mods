.class public Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    const-string/jumbo v1, "enable_wifi_wakeup"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "enable_wifi_wakeup"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enable_wifi_wakeup"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    return v0

    :cond_10
    instance-of v2, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v2, :cond_15

    return v0

    :cond_15
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_wakeup_enabled"

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public isAvailable()Z
    .registers 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_wakeup_available"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_10
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_7

    return-void

    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_wakeup_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4c

    move v3, v4

    :goto_1a
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4e

    const/4 v2, 0x1

    :goto_2d
    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "network_recommendations_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_50

    const/4 v1, 0x1

    :goto_3d
    if-eqz v1, :cond_40

    move v5, v2

    :cond_40
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v2, :cond_52

    const v3, 0x7f1221c7

    :goto_48
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    return-void

    :cond_4c
    move v3, v5

    goto :goto_1a

    :cond_4e
    const/4 v2, 0x0

    goto :goto_2d

    :cond_50
    const/4 v1, 0x0

    goto :goto_3d

    :cond_52
    const v3, 0x7f1221c8

    goto :goto_48
.end method
