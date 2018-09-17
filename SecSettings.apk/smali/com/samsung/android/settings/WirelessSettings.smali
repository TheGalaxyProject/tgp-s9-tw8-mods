.class public Lcom/samsung/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/WirelessSettings$1;,
        Lcom/samsung/android/settings/WirelessSettings$2;,
        Lcom/samsung/android/settings/WirelessSettings$3;,
        Lcom/samsung/android/settings/WirelessSettings$4;,
        Lcom/samsung/android/settings/WirelessSettings$5;,
        Lcom/samsung/android/settings/WirelessSettings$6;,
        Lcom/samsung/android/settings/WirelessSettings$7;,
        Lcom/samsung/android/settings/WirelessSettings$8;,
        Lcom/samsung/android/settings/WirelessSettings$9;
    }
.end annotation


# static fields
.field private static final ALLSHARE_FRAMEWORK:Z

.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mTetheredDataML:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private isWfcServiceInstalled:Z

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonWfc:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataUsage:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mHdmiModeEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

.field private mHotspot:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mMPTCPObserver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSharingObserver:Landroid/database/ContentObserver;

.field private mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartBonding:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVerizonEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

.field private mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private ps:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/WirelessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModeEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/WirelessSettings;Landroid/support/v7/preference/SecPreferenceScreen;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object p1
.end method

.method static synthetic -set2(I)I
    .registers 1

    sput p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/WirelessSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->updateWfcRegStateSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    const-string/jumbo v2, "DMC_ONLY"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/WirelessSettings$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "DeX mode"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Mirroring mode"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModeEntry:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$1;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$2;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$3;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$4;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$5;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$6;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$7;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$9;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private canRemoveVzwDataPlanPreference()Z
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " Check whether the Verizon Data plan preference can be removed? "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_ConfigPco"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW_PREPAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string/jumbo v1, "VZW_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_26
    if-nez v1, :cond_2b

    return v2

    :cond_29
    move v1, v2

    goto :goto_26

    :cond_2b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " User account don\'t show Data Plan "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3b
    return v4
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadBoosterSupported(Landroid/content/Context;)Z
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    :try_start_2
    const-string/jumbo v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "getService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "sb_service"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_31

    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "sServiceManager is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string/jumbo v8, "com.samsung.android.smartbonding.ISmartBondingService$Stub"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v2, 0x0

    :goto_3d
    array-length v8, v3

    if-ge v2, v8, :cond_4f

    aget-object v8, v3, v2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "asInterface"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    :cond_4f
    aget-object v8, v3, v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6b

    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "smartbondingservice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_6b
    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "smartbondingservice is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_74} :catch_75

    return v13

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v12
.end method

.method public static isEnabledWifiCallingActivity(Landroid/content/Context;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v7, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_53

    :try_start_11
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_37

    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wificalling activity is not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_36} :catch_58

    const/4 v5, 0x1

    :cond_37
    move-object v0, v1

    :goto_38
    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabledWifiCallingActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_53
    move-exception v3

    :goto_54
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38

    :catch_58
    move-exception v3

    move-object v0, v1

    goto :goto_54
.end method

.method private isHotspotTestMode()Z
    .registers 14

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string/jumbo v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_59

    const/4 v8, 0x1

    :goto_1c
    sget-boolean v11, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    if-eqz v11, :cond_62

    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_27
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_6a
    .catchall {:try_start_27 .. :try_end_31} :catchall_79

    :cond_31
    :goto_31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_31

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_54} :catch_8a
    .catchall {:try_start_31 .. :try_end_54} :catchall_87

    move-result v11

    if-ne v11, v10, :cond_5b

    const/4 v6, 0x1

    goto :goto_31

    :cond_59
    const/4 v8, 0x0

    goto :goto_1c

    :cond_5b
    const/4 v6, 0x0

    goto :goto_31

    :cond_5d
    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65

    :cond_62
    :goto_62
    if-nez v6, :cond_85

    :goto_64
    return v8

    :catch_65
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :catch_6a
    move-exception v4

    :goto_6b
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_79

    if-eqz v1, :cond_62

    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_62

    :catch_74
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :catchall_79
    move-exception v10

    :goto_7a
    if-eqz v1, :cond_7f

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    :cond_7f
    :goto_7f
    throw v10

    :catch_80
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    :cond_85
    move v8, v10

    goto :goto_64

    :catchall_87
    move-exception v10

    move-object v1, v2

    goto :goto_7a

    :catch_8a
    move-exception v4

    move-object v1, v2

    goto :goto_6b
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerForObserver()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/WirelessSettings;->isWfcServiceInstalled:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_30
    return-void
.end method

.method private unregisterForObserver()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/WirelessSettings;->isWfcServiceInstalled:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1f
    return-void
.end method

.method private updateWfcRegStateSummary()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationSummary(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public callRcsDefaultSms()V
    .registers 7

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "package"

    const-string/jumbo v4, "com.samsung.android.messaging"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x3e8

    :try_start_19
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1c} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catch_3d
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public callRcsSettings(Landroid/support/v7/preference/Preference;)V
    .registers 8

    const-string/jumbo v3, "rcs_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v3, :cond_66

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.ServicesSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_22
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_25} :catch_46
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catch_46
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_66
    const-string/jumbo v3, "rcs_settings_partial_branded"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v3, :cond_ce

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_88
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_8b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_88 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_8b} :catch_ad

    goto :goto_25

    :catch_8c
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :catch_ad
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_ce
    const-string/jumbo v3, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v3, :cond_25

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED_CPR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesCPRSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_f0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_f3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f0 .. :try_end_f3} :catch_f5
    .catch Ljava/lang/IllegalStateException; {:try_start_f0 .. :try_end_f3} :catch_116

    goto/16 :goto_25

    :catch_f5
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :catch_116
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120d11

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-string/jumbo v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_4a

    :cond_1d
    :goto_1d
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_21
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :sswitch_3c
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1d

    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v2, "RESULT_OK : -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_21
        0x3e8 -> :sswitch_3c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 42

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const-string/jumbo v36, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    :cond_16
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v36, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v36, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v36, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v36, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const v36, 0x7f1500dd

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-eqz v21, :cond_7e2

    const/16 v18, 0x1

    :goto_c1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v36, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v36, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    const/16 v24, 0x0

    if-eqz v18, :cond_7e6

    const-string/jumbo v36, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v36, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_105
    const-string/jumbo v36, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    if-eqz v7, :cond_85e

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v36

    if-nez v36, :cond_85e

    const/16 v28, 0x0

    const-string/jumbo v36, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    if-eqz v36, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    const v37, 0x7f121b7d

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    const v37, 0x7f121b7d

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_14f
    :goto_14f
    const/4 v7, 0x0

    const-string/jumbo v36, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDataUsage:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v36, "mobile_network_settings_for_C"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    if-nez v36, :cond_190

    const-string/jumbo v36, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v36, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string/jumbo v37, "android.hardware.nfc"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_1a7

    const-string/jumbo v36, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_1a7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    if-eqz v36, :cond_1b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_1d0

    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_1d0
    const-string/jumbo v36, "network_management"

    invoke-static/range {v36 .. v36}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v23

    :try_start_1db
    invoke-interface/range {v23 .. v23}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v36

    if-nez v36, :cond_1eb

    const-string/jumbo v36, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1eb} :catch_a3b

    :cond_1eb
    :goto_1eb
    const-string/jumbo v36, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mHotspot:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    if-eqz v36, :cond_212

    if-nez v18, :cond_212

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_21c

    :cond_212
    const-string/jumbo v36, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_21c
    const-string/jumbo v36, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v36, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    if-eqz v36, :cond_267

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_267
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v36

    sput-object v36, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "airplane_mode_toggleable_radios"

    invoke-static/range {v36 .. v37}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    if-eqz v36, :cond_28d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_28d
    if-nez v18, :cond_2b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_2b0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v36

    if-nez v36, :cond_2b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    const-string/jumbo v37, "no_config_vpn"

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2c4

    :cond_2b0
    const-string/jumbo v36, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v36, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_2c4
    if-eqz v33, :cond_2d3

    const-string/jumbo v36, "bluetooth"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    :cond_2d3
    if-eqz v15, :cond_2f2

    if-nez v18, :cond_2f2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_2f2

    const-string/jumbo v36, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v37

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v4, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_2fc

    :cond_2f2
    const-string/jumbo v36, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_2fc
    const-string/jumbo v36, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v36, "VZW"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_31d

    sget-boolean v36, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_33f

    :cond_31d
    const-string/jumbo v36, "media_share_category_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v36, "nearby_setting_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_33f
    if-nez v18, :cond_87e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_87e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_872

    const-string/jumbo v36, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v36, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    :goto_37d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->canRemoveVzwDataPlanPreference()Z

    move-result v36

    if-eqz v36, :cond_39b

    const-string/jumbo v36, "data_plan_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v6, :cond_39b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_39b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    const-string/jumbo v37, "android.hardware.type.television"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3b2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_3bc

    :cond_3b2
    const-string/jumbo v36, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_3bc
    const-string/jumbo v36, "persist.sys.tether_data"

    const/16 v37, -0x1

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v36, v0

    sput v36, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v16, 0x0

    const/16 v32, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v36

    const-string/jumbo v37, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_411

    const-string/jumbo v36, "persist.sys.tether_data_usb"

    const/16 v37, -0x1

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v32

    const-string/jumbo v36, "persist.sys.tether_data_bt"

    const/16 v37, -0x1

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    const-string/jumbo v36, "persist.sys.tether_data_wifi"

    const/16 v37, -0x1

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v31

    const/16 v36, -0x1

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_40f

    const/16 v36, -0x1

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_88a

    :cond_40f
    :goto_40f
    const/16 v16, 0x1

    :cond_411
    const-string/jumbo v36, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v36, "connectivity"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    if-nez v18, :cond_448

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-nez v36, :cond_448

    const-string/jumbo v36, "SBM"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_894

    :cond_448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_45d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_45d
    :goto_45d
    const-string/jumbo v36, "SBM"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_47f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_47f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_47f
    const-string/jumbo v36, "WirelessSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "KEY_TETHER_SETTINGS isSecondaryUser: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " cm:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " wifi:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " mTetherdData"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "com.ipsec.vpnclient"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8f6

    const-string/jumbo v36, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_4e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "com.samsung.tmowfc.wfccontroller"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_902

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v36

    const-string/jumbo v37, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    :goto_4ff
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/WirelessSettings;->isWfcServiceInstalled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    const-string/jumbo v37, "wfc_settings_holder_key"

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/WirelessSettings;->isWfcServiceInstalled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_58c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v36

    const-string/jumbo v37, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-nez v18, :cond_58c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_58c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_58c

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_552

    const-string/jumbo v36, "Global"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_58c

    :cond_552
    const/16 v35, 0x0

    :try_start_554
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    const v38, 0x7f150135

    const/16 v39, 0x0

    invoke-virtual/range {v36 .. v39}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v35

    const-string/jumbo v36, "wfc_settings_key"

    invoke-virtual/range {v35 .. v36}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_58c
    .catch Ljava/lang/RuntimeException; {:try_start_554 .. :try_end_58c} :catch_906

    :cond_58c
    :goto_58c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    new-instance v36, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const-string/jumbo v37, "com.samsung.rcs"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_916

    const-string/jumbo v36, "WirelessSettings"

    const-string/jumbo v37, "RCS application is not installed"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    :cond_5e9
    :goto_5e9
    const-string/jumbo v36, "MTR"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_608

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    const-string/jumbo v37, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_608
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string/jumbo v37, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    :try_start_613
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string/jumbo v37, "com.samsung.android.app.mirrorlink"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_61f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_613 .. :try_end_61f} :catch_929
    .catchall {:try_start_613 .. :try_end_61f} :catchall_947

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    if-nez v19, :cond_62f

    const-string/jumbo v36, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_62f
    :goto_62f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v36

    if-nez v36, :cond_959

    const-string/jumbo v36, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    if-eqz v36, :cond_654

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v36

    const-string/jumbo v37, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_654
    :goto_654
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v36

    if-eqz v36, :cond_668

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_9b0

    :cond_668
    const-string/jumbo v36, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_672
    :goto_672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_691

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    const-string/jumbo v37, "no_config_vpn"

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6a5

    :cond_691
    const-string/jumbo v36, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v36, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_6a5
    if-nez v18, :cond_6b6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v36

    const-string/jumbo v37, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_6c0

    :cond_6b6
    const-string/jumbo v36, "network_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_6c0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v36

    if-eqz v36, :cond_6eb

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v36

    if-nez v36, :cond_6d4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-nez v36, :cond_6eb

    :cond_6d4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v36

    if-eqz v36, :cond_6e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "com.lguplus.lgusetting"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6eb

    :cond_6e9
    if-eqz v18, :cond_a06

    :cond_6eb
    const-string/jumbo v36, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_6f5
    :goto_6f5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    if-eqz v36, :cond_710

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v37, v0

    new-instance v38, Landroid/content/IntentFilter;

    const-string/jumbo v39, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct/range {v38 .. v39}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v38}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_710
    const-string/jumbo v36, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mVerizonEmergencyAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_737

    const-string/jumbo v36, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_737
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "hdmi_mode"

    const/16 v38, -0x1

    invoke-static/range {v36 .. v38}, Lcom/android/settings/Utils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v36

    if-eqz v36, :cond_a2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string/jumbo v37, "com.sec.android.app.desktoplauncher"

    invoke-static/range {v36 .. v37}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_a2f

    const/16 v36, -0x1

    move/from16 v0, v36

    if-le v14, v0, :cond_a2f

    const-string/jumbo v36, "hdmi_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v36, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_78c
    const-string/jumbo v36, "network_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_7b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_7d6

    :cond_7b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_7d6
    new-instance v36, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v36 .. v36}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_7e2
    const/16 v18, 0x0

    goto/16 :goto_c1

    :cond_7e6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v36

    if-nez v36, :cond_825

    new-instance v37, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v36, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    const-string/jumbo v36, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_105

    :cond_825
    new-instance v37, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v36, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    const-string/jumbo v36, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_105

    :cond_85e
    const-string/jumbo v36, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    goto/16 :goto_14f

    :cond_872
    const-string/jumbo v36, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_37d

    :cond_87e
    const-string/jumbo v36, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_37d

    :cond_88a
    const/16 v36, -0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-eq v0, v1, :cond_411

    goto/16 :goto_40f

    :cond_894
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->isHotspotTestMode()Z

    move-result v36

    if-eqz v36, :cond_8b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    const v37, 0x7f121bcf

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    const v37, 0x7f121bc4

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto/16 :goto_45d

    :cond_8b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v29

    const/16 v36, -0x1

    move/from16 v0, v29

    move/from16 v1, v36

    if-eq v0, v1, :cond_8d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    :cond_8d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    const v37, 0x7f121bd2

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v37

    xor-int/lit8 v37, v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_45d

    :cond_8f6
    const-string/jumbo v36, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4e5

    :cond_902
    const/16 v36, 0x0

    goto/16 :goto_4ff

    :catch_906
    move-exception v11

    const-string/jumbo v36, "WirelessSettings"

    const-string/jumbo v37, "cannot add WfcSwitchPreference"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58c

    :cond_916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_5e9

    :catch_929
    move-exception v8

    :try_start_92a
    const-string/jumbo v36, "WirelessSettings"

    const-string/jumbo v37, "MirrorLink application is not installed"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_933
    .catchall {:try_start_92a .. :try_end_933} :catchall_947

    const/16 v19, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    if-nez v19, :cond_62f

    const-string/jumbo v36, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_62f

    :catchall_947
    move-exception v36

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    if-nez v19, :cond_958

    const-string/jumbo v37, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_958
    throw v36

    :cond_959
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "eth_device_conn"

    const/16 v38, 0x0

    const/16 v39, -0x2

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const-string/jumbo v36, "WirelessSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ETH_DEVICE_CONNECTED: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    if-eqz v36, :cond_654

    const-string/jumbo v36, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v37

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v10, v0, :cond_9ad

    const/16 v36, 0x1

    :goto_9a4
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_654

    :cond_9ad
    const/16 v36, 0x0

    goto :goto_9a4

    :cond_9b0
    const-string/jumbo v36, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v36, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v38, v0

    invoke-direct/range {v36 .. v38}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz p1, :cond_672

    const-string/jumbo v36, "notificationDialogShown"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_672

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v36, v0

    if-eqz v36, :cond_672

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isChecked()Z

    move-result v37

    xor-int/lit8 v37, v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    goto/16 :goto_672

    :cond_a06
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v36

    if-eqz v36, :cond_6f5

    const-string/jumbo v36, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreferenceScreen;

    const v36, 0x7f12030b

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    const-string/jumbo v36, "com.samsung.android.settings.GigaLteSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_6f5

    :cond_a2f
    const-string/jumbo v36, "hdmi_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_78c

    :catch_a3b
    move-exception v9

    goto/16 :goto_1eb
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_44

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_1f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/WirelessSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/WirelessSettings$10;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_32
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->unregisterForObserver()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const v6, 0x7f120cdb

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "hdmi_mode"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mirroring_switch_disabled"

    invoke-static {v0, v1, v4}, Lcom/android/settings/Utils;->getBooleanFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120cdc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v5

    :cond_75
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hdmi_mode"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_94
    return v5
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick: preference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v2, :cond_45

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_29
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_36} :catch_37

    :goto_36
    return v5

    :catch_37
    move-exception v0

    const-string/jumbo v2, "WirelessSettings"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_36

    :cond_45
    const-string/jumbo v2, "rcs_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eq p1, v2, :cond_5b

    const-string/jumbo v2, "rcs_settings_partial_branded"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v2, :cond_70

    :cond_5b
    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_97

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    :cond_6b
    :goto_6b
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_70
    const-string/jumbo v2, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eq p1, v2, :cond_5b

    const-string/jumbo v2, "ethernet_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne p1, v2, :cond_6b

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_6b

    :cond_97
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->callRcsSettings(Landroid/support/v7/preference/Preference;)V

    goto :goto_6b
.end method

.method public onResume()V
    .registers 25

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-eqz v19, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no_config_tethering"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4b

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v19, "WirelessSettings"

    const-string/jumbo v20, "onresume remove mMobileNetworkForC"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f1221ec

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_ad
    :goto_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v21, "isVpnAllowed"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_2d5

    const/16 v19, 0x1

    :goto_c5
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_10d

    const-string/jumbo v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_ee

    const-string/jumbo v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_ee
    const-string/jumbo v19, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_10d

    const-string/jumbo v19, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_10d} :catch_2d9

    :cond_10d
    :goto_10d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/WirelessSettings;->isWfcServiceInstalled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_120

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->updateWfcRegStateSummary()V

    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "com.samsung.rcs"

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2df

    const-string/jumbo v19, "WirelessSettings"

    const-string/jumbo v20, "RCS application is not installed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    :cond_14b
    :goto_14b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v19

    if-eqz v19, :cond_1c5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "eth_device_conn"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "eth_device_conn"

    const/16 v21, 0x0

    const/16 v22, -0x2

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const-string/jumbo v19, "WirelessSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onResume() ETH_DEVICE_CONNECTED: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_1c5

    const-string/jumbo v19, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v9, v0, :cond_2f2

    const/16 v19, 0x1

    :goto_1be
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1e3

    const-string/jumbo v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_212

    :cond_1e3
    const-string/jumbo v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v21, "airplane_mode_on"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_2f6

    const/16 v19, 0x1

    :goto_20b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_223
    const-string/jumbo v19, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    if-eqz v7, :cond_24f

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v19

    if-nez v19, :cond_24f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f121b7d

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_24e
    const/4 v7, 0x0

    :cond_24f
    const-string/jumbo v19, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v14, :cond_275

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "mptcp_value"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_2fa

    const v19, 0x7f121b7e

    :goto_270
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_275
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->registerForObserver()V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v19, "false"

    const/16 v20, 0x0

    aput-object v19, v16, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v21, "isWifiEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v21, "isCellularDataAllowed"

    invoke-static/range {v19 .. v21}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_2ff

    if-nez v13, :cond_2ff

    :cond_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    :cond_2c6
    return-void

    :cond_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    const v20, 0x7f1221eb

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_ad

    :cond_2d5
    const/16 v19, 0x0

    goto/16 :goto_c5

    :catch_2d9
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10d

    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_14b

    :cond_2f2
    const/16 v19, 0x0

    goto/16 :goto_1be

    :cond_2f6
    const/16 v19, 0x0

    goto/16 :goto_20b

    :cond_2fa
    const v19, 0x7f121b7d

    goto/16 :goto_270

    :cond_2ff
    if-eqz v11, :cond_2b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_312

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    :cond_312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_32a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_352

    :cond_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v19, v0

    if-eqz v19, :cond_352

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNetUnlock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v19, "WirelessSettings"

    const-string/jumbo v20, "onresume remove mNetUnlock"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_37e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "hdmi_mode"

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Lcom/android/settings/Utils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3d0

    const-string/jumbo v19, "network_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_3b5

    const-string/jumbo v19, "network_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_3b5
    new-instance v15, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    new-instance v19, Lcom/samsung/android/settings/WirelessSettings$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings$11;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V

    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v21, v0

    const-string/jumbo v22, "MoreConnectionSettings"

    invoke-virtual/range {v19 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string/jumbo v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_32
    return-void
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
