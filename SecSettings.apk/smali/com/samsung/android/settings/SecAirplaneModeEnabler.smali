.class public Lcom/samsung/android/settings/SecAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "SecAirplaneModeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;,
        Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;
    }
.end annotation


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6f

    const/4 v0, 0x1

    :goto_25
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_71

    const/4 v2, 0x1

    :goto_35
    if-ne v0, v2, :cond_73

    const/4 v1, 0x1

    :cond_38
    :goto_38
    const-string/jumbo v4, "SecAirPlaneModeEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAirplaneModeChanged= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6e

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f121b7e

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    const/4 v0, 0x0

    goto :goto_25

    :cond_71
    const/4 v2, 0x0

    goto :goto_35

    :cond_73
    const/4 v1, 0x0

    goto :goto_38

    :cond_75
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f12012a

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_85
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v8}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_6e

    :cond_8b
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f120128

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_85
.end method

.method private setAirplaneModeOn(Z)V
    .registers 9

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p1, :cond_6f

    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_79

    const/4 v1, 0x1

    :goto_20
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    if-eqz p1, :cond_48

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_48
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_67

    move v2, v3

    :cond_67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_6f
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_79
    move v1, v2

    goto :goto_20
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isAirplaneModeAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    if-eq v0, v6, :cond_1b

    return v7

    :cond_1b
    const-string/jumbo v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    :goto_28
    return v6

    :cond_29
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xb1

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_28
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_5
.end method
