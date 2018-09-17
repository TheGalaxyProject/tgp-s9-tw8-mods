.class public Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;,
        Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;
    }
.end annotation


# instance fields
.field private mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:I

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceGroup;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v0, 0x7f12179a

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a8

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_8e
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_a7
    return-void

    :cond_a8
    move v0, v2

    goto :goto_5a

    :cond_aa
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_8e
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_19

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1b

    return-void

    :cond_19
    move v0, v2

    goto :goto_12

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    goto :goto_3a

    :pswitch_45
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3a

    :pswitch_61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3a

    :pswitch_79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3a

    :pswitch_91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3a

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_45
        :pswitch_61
        :pswitch_79
        :pswitch_91
    .end packed-switch
.end method

.method private updateWFSNBigdata(ZZ)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_18

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    :goto_12
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_18
    iput v2, v0, Landroid/os/Message;->arg2:I

    goto :goto_12

    :cond_1b
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_12
.end method


# virtual methods
.method public onRadioButtonClicked(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v2, :cond_3c

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string/jumbo v2, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v3, "Agg on pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v4, :cond_63

    :goto_34
    int-to-long v0, v0

    const v4, 0x7f120a7b

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void

    :cond_3c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v2, :cond_28

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string/jumbo v2, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v3, "Agg off pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_28

    :cond_63
    move v0, v1

    goto :goto_34
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 9

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    if-eqz p2, :cond_16

    const/4 v0, 0x1

    :goto_e
    int-to-long v4, v0

    const v0, 0x7f120a7f

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_2e
    return-void
.end method

.method public resume()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    const/4 v0, 0x1

    :goto_31
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void

    :cond_53
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3f

    move v0, v1

    :goto_12
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v2, "SNS On pressed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    move v0, v2

    goto :goto_12

    :cond_41
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_5f
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v1, "SNS Off pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public updateRadioGroup()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_39

    const/4 v0, 0x1

    :goto_12
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_38

    if-nez v0, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    :goto_26
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_38
    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_12

    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    goto :goto_26
.end method
