.class public Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AutoWifiPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mIsSupprotAutoWifi:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mIsSupprotAutoWifi:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private updateAutoWifiVisible()V
    .registers 10

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Auto Wi-Fi Current DB Value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sem_auto_wifi_control_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sem_auto_wifi_control_enabled"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_62

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v4, "ConfigureWifiSettings"

    const-string/jumbo v5, "No previous value of Auto Wi-Fi & Smart Network Switch. set value 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sem_auto_wifi_control_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    :cond_62
    :goto_62
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v1, v2, :cond_8d

    :goto_66
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_69
    return-void

    :cond_6a
    const-string/jumbo v4, "ConfigureWifiSettings"

    const-string/jumbo v5, "No previous value of Auto Wi-Fi. set Smart Network Switch value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sem_auto_wifi_control_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_62

    :cond_8d
    move v2, v3

    goto :goto_66
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "auto_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "ConfigureWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSupprotAutoWifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mIsSupprotAutoWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->updateAutoWifiVisible()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auto_wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auto_wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sem_auto_wifi_control_enabled"

    if-eqz v0, :cond_52

    move v2, v3

    :goto_21
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Auto Wi-Fi PreferenceChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    if-eqz v0, :cond_47

    move v4, v3

    :cond_47
    int-to-long v4, v4

    const v6, 0x7f12179b

    const v7, 0x7f120a21

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return v3

    :cond_52
    move v2, v4

    goto :goto_21

    :cond_54
    return v4
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mIsSupprotAutoWifi:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_18

    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->mAutoWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_18

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method
