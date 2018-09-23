.class public Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "SmartNetworkSwitchPrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;,
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;
    }
.end annotation


# static fields
.field private static final mIsSupportAdaptiveWifi:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsAvailable:Z

.field private mIsSupportAdaptiveNaming:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveNaming:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_d6

    :cond_26
    :goto_26
    return-void

    :pswitch_27
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f1221d0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_26

    :pswitch_3a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f1221ce

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_26

    :pswitch_4d
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f1221cf

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_26

    :pswitch_60
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_a3

    const/4 v1, 0x1

    :goto_7d
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveNaming:Z

    if-nez v2, :cond_b6

    if-eqz v1, :cond_b6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_a5

    const/4 v0, 0x1

    :goto_93
    if-nez v0, :cond_a7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12219a

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_26

    :cond_a3
    const/4 v1, 0x0

    goto :goto_7d

    :cond_a5
    const/4 v0, 0x0

    goto :goto_93

    :cond_a7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12218f

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_26

    :cond_b6
    if-eqz v1, :cond_c7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f121b7e

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_26

    :cond_c7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122191

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_26

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_60
        :pswitch_27
        :pswitch_3a
        :pswitch_4d
    .end packed-switch
.end method

.method private updateSmartNetworkSwitchVisible()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_18

    move v0, v1

    :cond_18
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    :cond_23
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_poor_network_detection"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "ConfigureWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSupportAdaptiveWifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchVisible()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "wifi_poor_network_detection"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v4, 0x7f1221cd

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_47

    const-string/jumbo v0, "wifi_poor_network_detection"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    const-class v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_32
    const/4 v0, 0x1

    return v0

    :cond_34
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    const-class v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_32

    :cond_47
    return v7
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x131

    iput v3, v2, Landroid/os/Message;->what:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6d

    iput v4, v2, Landroid/os/Message;->arg2:I

    :goto_26
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v0, :cond_74

    move v3, v4

    :goto_4a
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "ConfigureWifiSettings"

    const-string/jumbo v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v3

    if-eqz v0, :cond_5f

    move v5, v4

    :cond_5f
    int-to-long v6, v5

    const v5, 0x7f12179b

    const v8, 0x7f120a24

    invoke-virtual {v3, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    return v4

    :cond_6d
    iput v5, v2, Landroid/os/Message;->arg2:I

    goto :goto_26

    :cond_70
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg2:I

    goto :goto_26

    :cond_74
    move v3, v5

    goto :goto_4a

    :cond_76
    return v5
.end method

.method public onResume()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_27

    :goto_20
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    :cond_26
    return-void

    :cond_27
    move v0, v1

    goto :goto_20
.end method
