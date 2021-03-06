.class public Lcom/samsung/android/settings/TRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/TRoamingSettings$1;,
        Lcom/samsung/android/settings/TRoamingSettings$2;,
        Lcom/samsung/android/settings/TRoamingSettings$3;,
        Lcom/samsung/android/settings/TRoamingSettings$4;,
        Lcom/samsung/android/settings/TRoamingSettings$5;,
        Lcom/samsung/android/settings/TRoamingSettings$6;,
        Lcom/samsung/android/settings/TRoamingSettings$7;,
        Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

.field private mCustomerService:Landroid/support/v7/preference/Preference;

.field private mCustomerServicekt:Landroid/support/v7/preference/Preference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGuide:Landroid/support/v7/preference/Preference;

.field private mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJoinCancel:Landroid/support/v7/preference/Preference;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMobileTRoaming:Landroid/support/v7/preference/Preference;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRoamingAutoDial:Landroid/support/v7/preference/Preference;

.field private mSelection:Landroid/support/v7/preference/Preference;

.field private mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/TRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/TRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRestrictBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/TRoamingSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$3;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$4;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$5;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-void
.end method

.method private getNetworkStateAvailable()Z
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v2, :cond_4b

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_19
    if-nez v1, :cond_50

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_1d
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWifistate : networkState_wifi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  networkState_mobile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_4a

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_55

    :cond_4a
    return v9

    :cond_4b
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    goto :goto_19

    :cond_50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    goto :goto_1d

    :cond_55
    return v8
.end method

.method private isInDomestic()Z
    .registers 5

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private final isLTERoamingEnabled()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_roaming_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLTERoamingEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private final isNetworkRegistered()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string/jumbo v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4c

    const-string/jumbo v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v7

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v4, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rtsStatusValue Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_4a

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4b

    :cond_4a
    return v8

    :cond_4b
    return v7

    :cond_4c
    return v7
.end method

.method private final isRestrictBackgroundEnabled()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRestrictBackgroundEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private final isRoamingDataEnabled()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRoamingDataEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updateCurrentRoaming()V
    .registers 15

    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "key_roaming_current"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isNetworkRegistered()Z

    move-result v11

    if-eqz v11, :cond_111

    sget-object v11, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_111

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_72

    move-object v3, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6d

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6d
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "data_roaming"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "lte_roaming_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_roaming_enabled"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming dataRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming lteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming volteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "hd_voice_roaming_enabled"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v9, :cond_119

    :goto_102
    invoke-virtual {v11, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_111
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    :cond_119
    move v9, v10

    goto :goto_102
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->finish()V

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const v1, 0x7f150117

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "key_roaming_selection"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_use_data_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v1, "key_roaming_use_lte_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "key_roaming_background_data"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "key_roaming_hd_voice_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "key_roaming_auto_dial"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_guide"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_join_cancel"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_mobile_t"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_customer_service"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "key_roaming_customer_service_kt"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_13d

    :cond_a3
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f120f8f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_bb
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_14d

    :cond_e7
    const-string/jumbo v1, "TRoamingSettings"

    const-string/jumbo v2, "not support voice capable or open not support customer svc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_fa
    :goto_fa
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoDial()Z

    move-result v1

    if-nez v1, :cond_105

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_105
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_116

    :cond_111
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_116
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_12e

    :cond_129
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_12e
    if-eqz p1, :cond_13c

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "mUseDataRoaming"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_13c
    return-void

    :cond_13d
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f121c07

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_bb

    :cond_14d
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_159

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_fa

    :cond_159
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_fa
.end method

.method public onPause()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2a

    :try_start_23
    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2a} :catch_3e

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    :cond_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "key_roaming_use_data_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "data_roaming"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_42
    :goto_42
    return v4

    :cond_43
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v3

    :cond_51
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_roaming"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    :cond_5c
    const-string/jumbo v5, "key_roaming_use_lte_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseLTERoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-nez v5, :cond_a1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "lte_roaming_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    :cond_96
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    :cond_a1
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_af

    move v3, v4

    :cond_af
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_42

    :cond_b3
    const-string/jumbo v5, "key_roaming_background_data"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    const-string/jumbo v3, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange: mBackgroundData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->setRestrictBackground(Z)V

    goto/16 :goto_42

    :cond_df
    const-string/jumbo v5, "key_roaming_hd_voice_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mHDVoiceRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hd_voice_roaming_enabled"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_110

    move v3, v4

    :cond_110
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_42
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 12

    const/4 v9, 0x0

    if-nez p1, :cond_e

    const-string/jumbo v6, "TRoamingSettings"

    const-string/jumbo v7, "preference is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :try_start_16
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_21} :catch_26

    :cond_21
    :goto_21
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v6

    return v6

    :catch_26
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21

    :cond_2b
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto :goto_21

    :cond_3d
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v7, "com.android.phone.RoamingAutoDialSettings"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_53
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_21

    :catch_57
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21

    :cond_5c
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_73
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_21

    :catch_77
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21

    :cond_7c
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_93
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_96
    .catch Landroid/content/ActivityNotFoundException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_21

    :catch_97
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21

    :cond_9c
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getNetworkStateAvailable()Z

    move-result v6

    if-eqz v6, :cond_c4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://m.troaming.co.kr"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_b9
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_bc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_21

    :catch_be
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_21

    :cond_c4
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto/16 :goto_21

    :cond_c9
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fc

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v7, "tel"

    const-string/jumbo v8, "+82263439000"

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "SKTRADDialOption"

    const-string/jumbo v7, "abroad"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_f1
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_f4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_21

    :catch_f6
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_21

    :cond_fc
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120552

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f120553

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$8;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const v7, 0x7f12063d

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$9;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$10;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$10;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_21

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_21
.end method

.method public onResume()V
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lte_roaming_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_6a
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_6f
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_8e
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_99
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_ad

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v2

    if-eqz v2, :cond_bb

    :cond_ad
    const-string/jumbo v2, "TRoamingSettings"

    const-string/jumbo v3, "KKK onResume !isRoamingDataEnabled() || !isLTERoamingEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_bb
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/support/v7/preference/Preference;

    const v3, 0x7f121c0a

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v3, 0x7f1216a7

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setTitle(I)V

    :cond_d1
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_ed

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_ed
    :goto_ed
    return-void

    :cond_ee
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v3, "no_data_roaming"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_ed
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "mUseDataRoaming"

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v5, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120946

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_powersaving_mode"

    if-eqz p1, :cond_41

    :goto_30
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/TRoamingSettings$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/TRoamingSettings$11;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_41
    move v3, v4

    goto :goto_30
.end method
