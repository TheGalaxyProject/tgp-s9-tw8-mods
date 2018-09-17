.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$1;,
        Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;
    }
.end annotation


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z

.field private mSAScreenId:I

.field private mStateMachineEvent:Z

.field private final mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Landroid/support/v14/preference/SecSwitchPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Landroid/support/v14/preference/SecSwitchPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    const v0, 0x7f1217a6

    iput v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSAScreenId:I

    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    :cond_28
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->initSwitch(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_64

    :goto_60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchController()V

    return-void

    :cond_64
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    goto :goto_60
.end method

.method private checkAndShowToastMessage()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_restriction_on_sprintdm"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2e

    const-string/jumbo v2, "WifiEnabler"

    const-string/jumbo v3, "WiFi restricted by Sprint Device Management."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "info_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string/jumbo v2, "WifiEnabler"

    const-string/jumbo v3, "checkAndShowToastMessage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 5

    if-eqz p1, :cond_27

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_27
.end method

.method private handleWifiStateChanged(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_26
    packed-switch p1, :pswitch_data_4a

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    :goto_32
    return-void

    :pswitch_33
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_32

    :pswitch_37
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_32

    :pswitch_3e
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_32

    :pswitch_42
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_32

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_42
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method private initSwitch(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_16

    :cond_21
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    if-nez p1, :cond_16

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_16
.end method

.method private isWifiBlocked()Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiStateChange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2b

    const/4 v2, 0x1

    :goto_15
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    const/4 v1, 0x1

    :cond_19
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    const/4 v0, 0x1

    :cond_25
    if-eqz v0, :cond_2d

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    move v2, v3

    goto :goto_15

    :cond_2d
    if-eqz v1, :cond_2a

    invoke-direct {p0, v3, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_2a
.end method

.method private isWifiBlockedBy3lm(Z)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiChange3lm(Z)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    const/4 v0, 0x1

    return v0

    :cond_f
    return v1
.end method

.method private onSwitchChanged(Z)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "WifiEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    xor-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_30

    :cond_29
    if-eq v0, v6, :cond_2e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a2

    :cond_2e
    if-eqz p1, :cond_a2

    :cond_30
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_35

    return v6

    :cond_35
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v1

    if-eqz v1, :cond_3c

    return v5

    :cond_3c
    if-eqz p1, :cond_5b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f122080

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    return v5

    :cond_5b
    if-eqz p1, :cond_80

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    new-array v3, v5, [Landroid/util/Pair;

    const/16 v4, 0x8b

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_6c
    :goto_6c
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_98

    if-eqz p1, :cond_94

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :goto_7c
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    return v5

    :cond_80
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/16 v4, 0x8a

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    goto :goto_6c

    :cond_94
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    goto :goto_7c

    :cond_98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-interface {v1, p1}, Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;->onSwitchChanged(Z)V

    :cond_a1
    return v6

    :cond_a2
    return v5
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1f

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1f

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1f
    return-object p0
.end method

.method private setSwitchBarChecked(Z)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz p1, :cond_2a

    :goto_1a
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz p1, :cond_2c

    const v0, 0x7f121b7e

    :goto_24
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_27
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void

    :cond_2a
    move v0, v1

    goto :goto_1a

    :cond_2c
    const v0, 0x7f122189

    goto :goto_24
.end method

.method private setSwitchBarEnabled(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    return-void
.end method

.method private setSwitchBarEnabled(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_9
    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public isSwitchBarChecked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    xor-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1b

    :cond_13
    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    const/4 v2, 0x4

    if-ne v1, v2, :cond_20

    :cond_19
    if-eqz v0, :cond_20

    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result v2

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method public onSwitchToggled(Z)Z
    .registers 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSAScreenId:I

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_b
    int-to-long v4, v0

    const v0, 0x7f120a7a

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiEnabler"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    :cond_32
    return-void
.end method

.method public resume()V
    .registers 3

    const-string/jumbo v0, "WifiEnabler"

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_19
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_22
    return-void
.end method

.method public setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    return-void
.end method

.method public setScreenIdForSA(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSAScreenId:I

    return-void
.end method

.method public setupSwitchController()V
    .registers 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_19
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    :cond_1e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v1

    if-eqz v1, :cond_26

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v1

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const-string/jumbo v0, "WifiEnabler"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/settings/Utils;->SPRINT_EXTENSIONS:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkAndShowToastMessage()V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    return-void
.end method

.method public stop()V
    .registers 3

    const-string/jumbo v0, "WifiEnabler"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegisteredReceiver:Z

    :cond_17
    return-void
.end method

.method public teardownSwitchController()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    :cond_15
    return-void
.end method
