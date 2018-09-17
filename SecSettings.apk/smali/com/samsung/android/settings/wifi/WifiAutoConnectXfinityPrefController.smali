.class public Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiAutoConnectXfinityPrefController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;,
        Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;,
        Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static mIsComcastWifiSupported:Z


# instance fields
.field private mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mIsNwdCmEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->updateXfinitySetting(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsNwdCmEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private sendBroadcastToNetwiseClient(Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.smithmicro.netwise.director.comcast.oem"

    const-string/jumbo v3, "com.smithmicro.mnd.SDKAPIReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateXfinitySetting(Z)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120280

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_3a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12027f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "auto_connect_xfinity_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1d

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->updateXfinitySetting(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mAutoConnectXfinityWifi:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    goto :goto_1d
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auto_connect_xfinity_wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "auto_connect_xfinity_wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v2, "com.smithmicro.mnd.action.RESUME_CM"

    :goto_1e
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v5

    if-eqz v0, :cond_39

    move v2, v3

    :goto_2a
    int-to-long v6, v2

    const v2, 0x7f12179b

    const v4, 0x7f120a18

    invoke-virtual {v5, v2, v4, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return v3

    :cond_35
    const-string/jumbo v2, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    goto :goto_1e

    :cond_39
    move v2, v4

    goto :goto_2a

    :cond_3b
    return v4
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->mIsComcastWifiSupported:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "auto_connect_xfinity_wifi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "com.smithmicro.mnd.action.RESUME_CM"

    :goto_17
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->sendBroadcastToNetwiseClient(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    const-string/jumbo v0, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    goto :goto_17
.end method
