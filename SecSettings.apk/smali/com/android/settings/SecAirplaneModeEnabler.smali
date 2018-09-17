.class public Lcom/android/settings/SecAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "SecAirplaneModeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecAirplaneModeEnabler$1;,
        Lcom/android/settings/SecAirplaneModeEnabler$2;
    }
.end annotation


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/SecAirplaneModeEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/SecAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecAirplaneModeEnabler$1;-><init>(Lcom/android/settings/SecAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SecAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecAirplaneModeEnabler$2;-><init>(Lcom/android/settings/SecAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v6, "false"

    aput-object v6, v4, v10

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isAirplaneModeAllowed"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2b

    if-eq v3, v9, :cond_2b

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void

    :cond_2b
    const/4 v1, 0x1

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_56

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8d

    const/4 v0, 0x1

    :goto_43
    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_8f

    const/4 v2, 0x1

    :goto_53
    if-ne v0, v2, :cond_91

    const/4 v1, 0x1

    :cond_56
    :goto_56
    const-string/jumbo v6, "SecAirPlaneModeEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAirplaneModeChanged= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8c

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_93

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f121b7e

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    const/4 v0, 0x0

    goto :goto_43

    :cond_8f
    const/4 v2, 0x0

    goto :goto_53

    :cond_91
    const/4 v1, 0x0

    goto :goto_56

    :cond_93
    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a9

    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f12012a

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_a3
    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_8c

    :cond_a9
    iget-object v6, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f120128

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_a3
.end method

.method private setAirplaneModeOn(Z)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_6f

    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_79

    move v1, v2

    :goto_1f
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    const/16 v6, 0x3e8

    invoke-static {v1, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_49
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_7b

    :goto_67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_6f
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_79
    move v1, v3

    goto :goto_1f

    :cond_7b
    move v2, v3

    goto :goto_67
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_d
    const/4 v1, 0x1

    return v1

    :cond_f
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb1

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_d
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
