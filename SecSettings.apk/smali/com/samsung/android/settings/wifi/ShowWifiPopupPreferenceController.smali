.class public Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "ShowWifiPopupPreferenceController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DBG:Z


# instance fields
.field private final mInSetupWizard:Z

.field private mIsAvailable:Z

.field private mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mIsAvailable:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mInSetupWizard:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "show_wifi_popup"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mInSetupWizard:Z

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3c

    move v0, v1

    :goto_38
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    move v0, v2

    goto :goto_38

    :cond_3e
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mIsAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    goto :goto_3b
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "show_wifi_popup"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_wifi_popup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_offload_network_notify"

    if-eqz v0, :cond_38

    move v2, v3

    :goto_21
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    if-eqz v0, :cond_2d

    move v4, v3

    :cond_2d
    int-to-long v4, v4

    const v6, 0x7f12179b

    const v7, 0x7f120a1d

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return v3

    :cond_38
    move v2, v4

    goto :goto_21

    :cond_3a
    return v4
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v1, "show_wifi_popup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_offload_network_notify"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mShowWifiPopup:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_offload_network_notify"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1a

    :goto_16
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
