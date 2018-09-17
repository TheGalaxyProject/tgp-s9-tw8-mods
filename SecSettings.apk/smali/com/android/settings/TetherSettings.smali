.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$1;,
        Lcom/android/settings/TetherSettings$2;,
        Lcom/android/settings/TetherSettings$3;,
        Lcom/android/settings/TetherSettings$4;,
        Lcom/android/settings/TetherSettings$5;,
        Lcom/android/settings/TetherSettings$6;,
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$SummaryProvider;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private final TETHER_HELP_REQUEST:I

.field private bDisableMifi:Z

.field private mActivity:Landroid/app/Activity;

.field mAlertDlg:Landroid/app/AlertDialog;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCreateNetwork:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDivider:Lcom/samsung/android/settings/UnclickablePreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsRaceCondition:Z

.field private mMassStorageActive:Z

.field private mNcmEnabled:Z

.field mOnHelpDialogDismissListner:Landroid/content/DialogInterface$OnDismissListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheredData:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

.field private mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/TetherSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/TetherSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/TetherSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/TetherSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->bDisableMifi:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/TetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->goToTetheringHelp()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->handleWifiApState(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setBluetoothTethering(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/TetherSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/TetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/TetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothSubText()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/TetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBrandingForMobileAp"

    const-string/jumbo v2, "ALL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->TETHER_HELP_REQUEST:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mOnHelpDialogDismissListner:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method static execCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2f} :catch_41

    :goto_2f
    if-eqz v3, :cond_37

    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-eqz v5, :cond_40

    :cond_37
    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "ifc is null or ifc.waitFor is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_40} :catch_46

    :cond_40
    :goto_40
    return-object v4

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catch_46
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_40
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    array-length v5, p0

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_1b

    aget-object v0, p0, v4

    array-length v6, p1

    move v2, v3

    :goto_9
    if-ge v2, v6, :cond_17

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    return-object v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method private goToTetheringHelp()V
    .registers 9

    const/16 v7, 0x8

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_50

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v4

    if-nez v4, :cond_38

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "tethering_tmo"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_34
    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V

    :goto_37
    return-void

    :cond_38
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "tethering_mtr"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_34

    :catch_42
    move-exception v1

    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "Exception!! help NameNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_37

    :cond_50
    if-eqz v2, :cond_6c

    :try_start_52
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6c

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "tethering"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    :cond_6c
    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "help == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->showDialog(I)V
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_7a} :catch_42

    goto :goto_37
.end method

.method private handleWifiApState(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    move-result v0

    packed-switch p1, :pswitch_data_7c

    :goto_9
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_12

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_12

    :pswitch_26
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_12

    :pswitch_42
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_12

    :pswitch_51
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_12

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const v2, 0x7f121b7d

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_12

    :pswitch_71
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "WIFI_AP_STATE_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    nop

    :pswitch_data_7c
    .packed-switch 0xa
        :pswitch_42
        :pswitch_51
        :pswitch_13
        :pswitch_26
        :pswitch_71
    .end packed-switch
.end method

.method private initWifiTethering()V
    .registers 3

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->generateDefaultSSID()V

    :cond_41
    return-void
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_12

    return v4

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_32

    :goto_31
    return v3

    :cond_32
    move v3, v4

    goto :goto_31
.end method

.method public static isMetroPCS()Z
    .registers 4

    const/4 v3, 0x0

    const-string/jumbo v1, "getprop ro.build.product"

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return v3

    :cond_b
    const-string/jumbo v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "mtr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_2a
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Detected MetroPCS device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_35
    return v3
.end method

.method private isMobileApON()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_f

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    const/16 v1, 0xd

    if-eq v0, v1, :cond_25

    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    :cond_25
    const/4 v1, 0x1

    return v1

    :cond_27
    return v3
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isSimCheck()Z
    .registers 3

    sget-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static isTAConnected(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_24
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    const/4 v2, 0x1

    return v2

    :cond_29
    const/4 v2, 0x0

    return v2
.end method

.method public static isTMO()Z
    .registers 2

    const-string/jumbo v0, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiSharingEnabled()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1b

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Wifi Sharing is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Wifi Sharing is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_33} :catch_34

    return v3

    :catch_34
    move-exception v0

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Error in getting provider value for WIFI_AP_WIFI_SHARING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return v3
.end method

.method private setBluetoothTethering(Z)V
    .registers 6

    const-string/jumbo v1, "TetheringSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothTethering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    :cond_28
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "setBluetoothTethering - adapter is null or BT is off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/TetherSettings$18;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/TetherSettings$18;-><init>(Lcom/android/settings/TetherSettings;ZLandroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private setUsbTethering(Z)V
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v3, "usb"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz p1, :cond_1b

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    :cond_1b
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f121d30

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void

    :cond_38
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "usb_tethering_enabled"

    if-eqz p1, :cond_76

    const/4 v3, 0x1

    :goto_4a
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_59

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "enable_mtp_settings"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_59
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_65
    move v1, p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/TetherSettings$21;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/TetherSettings$21;-><init>(Lcom/android/settings/TetherSettings;Z)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_75
    return-void

    :cond_76
    move v3, v4

    goto :goto_4a
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .registers 24

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v20, "html/%y%z/tethering_help.html"

    const-string/jumbo v21, "%y"

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "%z"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x5f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    const/4 v13, 0x0

    :try_start_49
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_132
    .catchall {:try_start_49 .. :try_end_4e} :catchall_137

    move-result-object v13

    if-eqz v13, :cond_54

    :try_start_51
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_12f

    :cond_54
    :goto_54
    const-string/jumbo v20, "html/%y%z/tethering_%xhelp.html"

    const-string/jumbo v21, "%y"

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "%z"

    if-eqz v19, :cond_139

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x5f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_8e
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_150

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_150

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v20

    if-eqz v20, :cond_13e

    const-string/jumbo v20, "%x"

    const-string/jumbo v21, "usb_mtr_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    :goto_c8
    const-string/jumbo v20, "TetheringSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Tethering Help url : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :try_start_e7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v4, v0, [B

    :goto_106
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_1d2

    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_122} :catch_123
    .catchall {:try_start_e7 .. :try_end_122} :catchall_25a

    goto :goto_106

    :catch_123
    move-exception v8

    :try_start_124
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_25a

    const/16 v20, 0x0

    if-eqz v12, :cond_12e

    :try_start_12b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_257

    :cond_12e
    :goto_12e
    return-object v20

    :catch_12f
    move-exception v10

    goto/16 :goto_54

    :catch_132
    move-exception v10

    const/16 v19, 0x0

    goto/16 :goto_54

    :catchall_137
    move-exception v20

    throw v20

    :cond_139
    const-string/jumbo v20, ""

    goto/16 :goto_8e

    :cond_13e
    const-string/jumbo v20, "%x"

    const-string/jumbo v21, "usb_tmo_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c8

    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_17c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_17c

    const-string/jumbo v20, "%x"

    const-string/jumbo v21, "wifi_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c8

    :cond_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_1c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_1c0

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v20

    if-eqz v20, :cond_1ae

    const-string/jumbo v20, "%x"

    const-string/jumbo v21, "usb_wifi_mtr_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c8

    :cond_1ae
    const-string/jumbo v20, "%x"

    const-string/jumbo v21, "usb_wifi_tmo_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c8

    :cond_1c0
    const-string/jumbo v20, "%x"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c8

    :cond_1d2
    :try_start_1d2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_123
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_25a

    move-result-object v9

    if-eqz v12, :cond_1db

    :try_start_1d8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1db} :catch_255

    :cond_1db
    :goto_1db
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string/jumbo v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v20, 0x7f0d00e0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v20, 0x7f0a0287

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v20, 0x7f0a051a

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v20, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f120cf5

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    new-instance v21, Lcom/android/settings/TetherSettings$20;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$20;-><init>(Lcom/android/settings/TetherSettings;)V

    const v22, 0x104000a

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    return-object v20

    :catch_255
    move-exception v10

    goto :goto_1db

    :catch_257
    move-exception v10

    goto/16 :goto_12e

    :catchall_25a
    move-exception v20

    if-eqz v12, :cond_260

    :try_start_25d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_260} :catch_261

    :cond_260
    :goto_260
    throw v20

    :catch_261
    move-exception v10

    goto :goto_260
.end method

.method private startProvisioningIfNecessary(I)V
    .registers 7

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TETHER_TYPE"

    iget v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_2a
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2d

    :cond_3c
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_2d
.end method

.method private startTethering(I)V
    .registers 11

    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_62

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_41

    const-string/jumbo v4, "TetherSettings"

    const-string/jumbo v5, "wifi is connected, so tethering blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f121823

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5c

    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "startTethering - turn on BT for enabling tethering"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    if-ne v1, v8, :cond_5b

    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->setBluetoothTethering(Z)V

    goto :goto_5b

    :cond_62
    if-ne p1, v6, :cond_6c

    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v4, :cond_6b

    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    :cond_6b
    return-void

    :cond_6c
    if-nez p1, :cond_6b

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v4, :cond_73

    return-void

    :cond_73
    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "Setting provision success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isMobileApON()Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    if-ne v4, v8, :cond_97

    sput-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    :cond_97
    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "Wifi Sharing Mobile Ap already ON so return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    return-void
.end method

.method private updateBluetoothState()V
    .registers 14

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    array-length v9, v3

    move v8, v7

    :goto_a
    if-ge v8, v9, :cond_24

    aget-object v6, v3, v8

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v11, v10

    :goto_12
    if-ge v7, v11, :cond_20

    aget-object v5, v10, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_20
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_a

    :cond_24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v7, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    const/16 v7, 0xc

    if-ne v2, v7, :cond_63

    if-eqz v4, :cond_63

    if-nez v1, :cond_62

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v7

    const/16 v8, 0x17

    if-eq v7, v8, :cond_62

    const/16 v7, 0x17

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v7, "TetheringSettings"

    const-string/jumbo v8, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return-void

    :cond_63
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v7

    const/16 v8, 0x15

    if-eq v7, v8, :cond_62

    const/16 v7, 0x15

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v7, "TetheringSettings"

    const-string/jumbo v8, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method private updateBluetoothSubText()V
    .registers 13

    const v11, 0x7f1204ff

    const v10, 0x7f1204fe

    const-string/jumbo v8, "TetheringSettings"

    const-string/jumbo v9, "updateBluetoothSubText"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v8, 0xa

    if-ne v2, v8, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_28
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2e
    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    :cond_33
    const/16 v8, 0xd

    if-ne v2, v8, :cond_44

    const v8, 0x7f120502

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_44
    const/16 v8, 0xb

    if-ne v2, v8, :cond_55

    const v8, 0x7f120503

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_55
    const/16 v8, 0xc

    if-ne v2, v8, :cond_91

    const-string/jumbo v8, "bluetooth.pan.tether_on"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_92

    const/4 v4, 0x0

    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_86

    const v8, 0x7f1204fb

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_86
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/settings/TetherSettings$19;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/TetherSettings$19;-><init>(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v10, 0x5

    invoke-virtual {v0, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_91
    return-void

    :cond_92
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_9c
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_a2
    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9c
.end method

.method private updateState()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "getActivity() is null, updateState() is skipped."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v6, "isUsbTetheringEnabled"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4c

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_1b
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string/jumbo v6, "isBluetoothEnabled"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v6, "isBluetoothTetheringEnabled"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_50

    :cond_41
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_4b
    return-void

    :cond_4c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1b

    :cond_50
    if-eqz v1, :cond_41

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    goto :goto_4b
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 21

    const-string/jumbo v10, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v10, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    xor-int/lit8 v5, v10, 0x1

    :goto_17
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    move v11, v10

    :goto_1d
    if-ge v11, v12, :cond_44

    aget-object v3, p1, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_27
    if-ge v10, v14, :cond_40

    aget-object v2, v13, v10

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3b

    if-nez v6, :cond_3b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v3}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_3e
    const/4 v5, 0x0

    goto :goto_17

    :cond_40
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_1d

    :cond_44
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    move v11, v10

    :goto_4a
    if-ge v11, v12, :cond_af

    aget-object v3, p2, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_54
    if-ge v10, v14, :cond_ab

    aget-object v2, v13, v10

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_67

    const-string/jumbo v15, "usb"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_76

    :cond_67
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7a

    const-string/jumbo v15, "rndis"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7a

    :cond_76
    const/4 v8, 0x1

    :cond_77
    :goto_77
    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    :cond_7a
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_77

    const-string/jumbo v15, "ncm"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_77

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v16, 0x7f121d2e

    invoke-virtual/range {v15 .. v16}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_77

    :cond_ab
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_4a

    :cond_af
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    move v11, v10

    :goto_b5
    if-ge v11, v12, :cond_d1

    aget-object v3, p3, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_bf
    if-ge v10, v14, :cond_cd

    aget-object v2, v13, v10

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ca

    const/4 v7, 0x1

    :cond_ca
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    :cond_cd
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_b5

    :cond_d1
    const-string/jumbo v10, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14a

    const/4 v9, 0x1

    :goto_ec
    if-eqz v8, :cond_16c

    if-nez v9, :cond_104

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "USB tethering is already turned ON , but value didn\'t update yet "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v10

    if-nez v10, :cond_110

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v10

    if-eqz v10, :cond_14c

    :cond_110
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_131

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d28

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_131
    :goto_131
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_149

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2b7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    :cond_149
    :goto_149
    return-void

    :cond_14a
    const/4 v9, 0x0

    goto :goto_ec

    :cond_14c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d27

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_131

    :cond_16c
    if-eqz v5, :cond_1f4

    if-eqz v9, :cond_184

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_184
    if-nez v6, :cond_1e9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v10, :cond_1b0

    const-string/jumbo v10, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a6

    const-string/jumbo v10, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cd

    :cond_1a6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d2c

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    if-nez v10, :cond_131

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_131

    :cond_1cd
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1de

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d2b

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_1b0

    :cond_1de
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d2a

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_1b0

    :cond_1e9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d30

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_1b0

    :cond_1f4
    if-eqz v7, :cond_228

    if-eqz v9, :cond_20c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d30

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_131

    :cond_228
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v10, :cond_260

    if-eqz v9, :cond_244

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d31

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_131

    :cond_260
    if-eqz v9, :cond_276

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "usb_tethering_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "USB tethering condition value is not synced with real condition So make it sync !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_276
    const-string/jumbo v10, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_290

    const-string/jumbo v10, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2ac

    :cond_290
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d34

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_29a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_131

    :cond_2ac
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121d33

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_29a

    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_149
.end method


# virtual methods
.method public generateDefaultSSID()V
    .registers 21

    const/4 v10, 0x0

    const-string/jumbo v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    :cond_14
    if-nez v10, :cond_19

    const-string/jumbo v10, ""

    :cond_19
    const-string/jumbo v15, ""

    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_118

    const v16, 0x7f1221a2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_3c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_12b

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    :goto_5d
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f5

    :cond_9c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_e8
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    :goto_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    return-void

    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_3c

    :cond_12b
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5d

    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_e8

    :cond_1ac
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_1b2
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_e8

    const-string/jumbo v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1da

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b2

    :cond_1da
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_108

    :cond_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_108
.end method

.method public getDialogMetricsCategory(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/16 v0, 0x246

    return v0

    :cond_6
    const/16 v0, 0x5a

    return v0
.end method

.method public getHelpResource()I
    .registers 2

    const v0, 0x7f120d16

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    const-string/jumbo v2, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "nosimwarningdialog"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_15
    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_21
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_2d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "TetheringSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PROVISION Result /requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/mTetherChoice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_d7

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-ne v2, v7, :cond_40

    iput v5, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    :cond_40
    if-ne p2, v7, :cond_4c

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    :cond_47
    :goto_47
    iput v7, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    :cond_49
    :goto_49
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    return-void

    :cond_4c
    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_e6

    goto :goto_47

    :pswitch_52
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v2, :cond_73

    return-void

    :pswitch_57
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Bluetooth Tethering on failed by Provision result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    const-string/jumbo v3, "bluetooth.pan.tether_on"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_47

    :pswitch_6d
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_47

    :cond_73
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Setting provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isMobileApON()Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :cond_a9
    return-void

    :cond_aa
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    const/4 v1, 0x0

    :try_start_b5
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b5 .. :try_end_c1} :catch_e4

    move-result v1

    :goto_c2
    if-ne v1, v6, :cond_47

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_47

    :cond_d7
    if-ne p1, v6, :cond_49

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_49

    :catch_e4
    move-exception v0

    goto :goto_c2

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_52
        :pswitch_6d
        :pswitch_57
    .end packed-switch
.end method

.method public onBlacklistStatusChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3e

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3f

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_31
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    :cond_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_31
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26

    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mActivity:Landroid/app/Activity;

    const v18, 0x7f15011a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setHasOptionsMenu(Z)V

    new-instance v18, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    const-string/jumbo v18, "disabled_on_data_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/settings/UnclickablePreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v18, "disabled_on_data_saver_divider"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/settings/UnclickablePreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mDivider:Lcom/samsung/android/settings/UnclickablePreference;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isUiRestricted()Z

    move-result v18

    if-eqz v18, :cond_d5

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    new-instance v18, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v18, "TetheringSettings"

    const-string/jumbo v19, "onCreate: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-eqz v18, :cond_cd

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->finishFragment()V

    :goto_cc
    return-void

    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finish()V

    goto :goto_cc

    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-nez v18, :cond_f5

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    if-eqz v18, :cond_f5

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v18

    if-eqz v18, :cond_303

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f121bd2

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_f5
    :goto_f5
    const-string/jumbo v18, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f1211b8

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SecSettingsSwitchPreference;->setTitle(I)V

    const-string/jumbo v18, "usb_tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v18, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/settings/SettingsActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isMobileApON()Z

    move-result v18

    if-eqz v18, :cond_30f

    const/16 v18, 0x1

    :goto_182
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v18, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const-string/jumbo v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v18, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    const-string/jumbo v18, "MTR"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_204

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    const/16 v18, 0xd

    move/from16 v0, v18

    if-eq v9, v0, :cond_204

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->bDisableMifi:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_313

    const/16 v16, 0x1

    :goto_243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_317

    const/16 v17, 0x1

    :goto_252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_31b

    const/4 v4, 0x1

    :goto_260
    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWifiRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mUsbRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mBluetoothRegexs.length : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_2dc
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_31e

    aget-object v11, v19, v18

    const-string/jumbo v21, "TetheringSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "debug : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v18, v18, 0x1

    goto :goto_2dc

    :cond_303
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const v19, 0x7f121bcf

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_f5

    :cond_30f
    const/16 v18, 0x0

    goto/16 :goto_182

    :cond_313
    const/16 v16, 0x0

    goto/16 :goto_243

    :cond_317
    const/16 v17, 0x0

    goto/16 :goto_252

    :cond_31b
    const/4 v4, 0x0

    goto/16 :goto_260

    :cond_31e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3ac

    const-string/jumbo v18, "persist.sys.tether_data"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TetherSettings;->mTetheredData:I

    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mTetheredData : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_36a

    const/16 v16, 0x0

    :cond_36a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_379

    const/4 v4, 0x0

    :cond_379
    const-string/jumbo v18, "persist.sys.tether_data_usb"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v18, "persist.sys.tether_data_bt"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v18, "persist.sys.tether_data_wifi"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v6, 0x0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_3a1

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_490

    :cond_3a1
    :goto_3a1
    if-lez v14, :cond_498

    const/16 v16, 0x1

    :goto_3a5
    if-lez v12, :cond_49c

    const/4 v4, 0x1

    :goto_3a8
    if-lez v13, :cond_49f

    const/16 v17, 0x1

    :cond_3ac
    :goto_3ac
    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ">>> wifiAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ">>> usbAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "TetheringSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ">>> bluetoothAvailable : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_40c

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-eqz v18, :cond_419

    :cond_40c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_419
    if-eqz v17, :cond_4a3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_4a3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    :goto_426
    if-nez v4, :cond_435

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_435
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x107005c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v7

    if-eqz v7, :cond_451

    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v8

    :cond_451
    and-int/lit8 v18, v8, 0x1

    if-eqz v18, :cond_462

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_462
    and-int/lit8 v18, v8, 0x2

    if-eqz v18, :cond_473

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    new-instance v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_490
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_3ac

    goto/16 :goto_3a1

    :cond_498
    const/16 v16, 0x0

    goto/16 :goto_3a5

    :cond_49c
    const/4 v4, 0x0

    goto/16 :goto_3a8

    :cond_49f
    const/16 v17, 0x0

    goto/16 :goto_3ac

    :cond_4a3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_426
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 16

    const/4 v10, 0x1

    if-ne p1, v10, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10, v0, p0, v11}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v10, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v10

    :cond_13
    const/4 v10, 0x2

    if-ne p1, v10, :cond_81

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f120825

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v10, 0x1e

    const/16 v11, 0x1e

    const/16 v12, 0x1e

    const/16 v13, 0x1e

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v10, Lcom/android/settings/TetherSettings$7;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    const v11, 0x7f120822

    invoke-virtual {v8, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/settings/TetherSettings$8;

    invoke-direct {v10, p0}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v8, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_81
    const/4 v10, 0x3

    if-ne p1, v10, :cond_b0

    const v10, 0x7f1221a5

    invoke-static {v10}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v5

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$9;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f1208a6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f121bd1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_b0
    const/4 v10, 0x4

    if-ne p1, v10, :cond_db

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f121d26

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$10;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$10;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f1208a6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f121bd6

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_db
    const/4 v10, 0x5

    if-ne p1, v10, :cond_125

    const v5, 0x7f121fbb

    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v10

    if-eqz v10, :cond_11b

    const v5, 0x7f121fc3

    :cond_ea
    :goto_ea
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$11;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$11;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f1208a6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$12;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$12;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f12089f

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f121bd6

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_11b
    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v10

    if-eqz v10, :cond_ea

    const v5, 0x7f121fbe

    goto :goto_ea

    :cond_125
    const/4 v10, 0x6

    if-ne p1, v10, :cond_156

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f1221a5

    invoke-static {v11, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$13;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$13;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f1208a6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f121bd0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_156
    const/4 v10, 0x7

    if-ne p1, v10, :cond_1d6

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "TetherPref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v10, 0x7f0d00e0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v10, 0x7f0a0287

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v10, 0x7f0a051a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120c0a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mOnHelpDialogDismissListner:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f120c07

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$14;

    invoke-direct {v11, p0, v3, v2}, Lcom/android/settings/TetherSettings$14;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    const v12, 0x104000a

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$15;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$15;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f12055d

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_1d6
    const/16 v10, 0x8

    if-ne p1, v10, :cond_1df

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_1df
    const/16 v10, 0x9

    if-ne p1, v10, :cond_25b

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "TetherPref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v10, 0x7f0d00e0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v10, 0x7f0a0287

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v10, 0x7f0a051a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f121d4f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f121d50

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$16;

    invoke-direct {v11, p0, v3, v2}, Lcom/android/settings/TetherSettings$16;-><init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    const v12, 0x7f1208a6

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/TetherSettings$17;

    invoke-direct {v11, p0}, Lcom/android/settings/TetherSettings$17;-><init>(Lcom/android/settings/TetherSettings;)V

    const v12, 0x7f12089f

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    :cond_25b
    const/4 v10, 0x0

    return-object v10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f0e000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_23
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .registers 7

    const v3, 0x7f121bcf

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_29

    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setBluetoothTethering(Z)V

    :cond_29
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f121bc3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_53
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDivider:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f121bc2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_83
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDivider:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_65
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    :cond_8
    :goto_8
    return v6

    :pswitch_9
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_50

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_50

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_vzw"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3d
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_40} :catch_41

    goto :goto_8

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8

    :cond_46
    :try_start_46
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3d

    :cond_50
    if-eqz v1, :cond_8

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_6d} :catch_41

    goto :goto_8

    :pswitch_data_6e
    .packed-switch 0x7f0a0896
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    const/16 v2, 0x15

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-eq v1, v2, :cond_23

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    :cond_2c
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "MobileHotspotAndTethering"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v10, "TetheringSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPreferenceChange()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v10, :cond_3c

    const-string/jumbo v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_3c
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    const-string/jumbo v10, "wifi_ap_settings"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    if-eqz v5, :cond_c5

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    :cond_62
    :goto_62
    const-string/jumbo v10, "enable_bluetooth_tethering"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0111

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    if-eqz v5, :cond_d2

    const/16 v10, 0x3e8

    :goto_7e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11, v12, v10}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v10, "device_policy"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v1, :cond_9d

    const/4 v10, 0x2

    if-eq v0, v10, :cond_d4

    :cond_9d
    const-string/jumbo v10, "TetheringSettings"

    const-string/jumbo v11, "Internet Sharing is restricted by MDM."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x10402c8

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x0

    return v10

    :cond_c5
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_62

    :cond_d2
    const/4 v10, 0x0

    goto :goto_7e

    :cond_d4
    const-string/jumbo v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_f4

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v10, 0x0

    return v10

    :cond_f4
    if-eqz v5, :cond_ff

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    :cond_fa
    :goto_fa
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    const/4 v10, 0x0

    return v10

    :cond_ff
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_111

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_111
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->setBluetoothTethering(Z)V

    goto :goto_fa

    :cond_116
    const-string/jumbo v10, "usb_tether_settings"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fa

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b04cc

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    if-eqz v5, :cond_175

    const/16 v10, 0x3e8

    :goto_132
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11, v12, v10}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v10, "device_policy"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v5, :cond_177

    xor-int/lit8 v10, v1, 0x1

    if-eqz v10, :cond_177

    const-string/jumbo v10, "TetherSettings"

    const-string/jumbo v11, "Internet Sharing is restricted by MDM."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x10402c8

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x0

    return v10

    :cond_175
    const/4 v10, 0x0

    goto :goto_132

    :cond_177
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v10

    if-nez v10, :cond_190

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v10

    if-nez v10, :cond_190

    const-string/jumbo v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a3

    :cond_190
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_1a3

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v10, 0x0

    return v10

    :cond_1a3
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v10

    if-nez v10, :cond_1af

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v10

    if-eqz v10, :cond_1c3

    :cond_1af
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1c3

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    const/4 v10, 0x0

    return v10

    :cond_1c3
    if-eqz v5, :cond_28e

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "THER"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e3

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_fa

    :cond_1e3
    const-string/jumbo v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_234

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1fc

    const/4 v10, 0x3

    if-ne v9, v10, :cond_22e

    :cond_1fc
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "TetherPref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v10, "pref_dns_usb_tether_wifi_on"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_227

    const-string/jumbo v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_fa

    :cond_227
    const/16 v10, 0x9

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_fa

    :cond_22e
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_fa

    :cond_234
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v10

    if-nez v10, :cond_240

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v10

    if-eqz v10, :cond_288

    :cond_240
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_254

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_fa

    :cond_254
    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "TetherPref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v10, "pref_dns_first_usb_tether_dialog"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_27b

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.sec.tetheringprovision"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_27b

    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_fa

    :cond_27b
    iget-boolean v10, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    if-nez v10, :cond_fa

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_fa

    :cond_288
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_fa

    :cond_28e
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2a0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_2a0
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_fa
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 11

    const/16 v9, 0x17

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_15
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_tethering"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_6a

    :cond_34
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "onResume: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "no_config_tethering"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->finishFragment()V

    :goto_61
    return-void

    :cond_62
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_61

    :cond_6a
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/RestrictedSettingsFragment;)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    :cond_78
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothSubText()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string/jumbo v4, "bluetooth.pan.tether_on"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_ab

    if-eqz v3, :cond_ab

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v4

    if-eq v4, v9, :cond_ab

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v4, "TetheringSettings"

    const-string/jumbo v5, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v1

    :cond_17
    const-string/jumbo v2, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_25

    const-string/jumbo v2, "nosimwarningdialog"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_25
    return-void
.end method

.method public onStart()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f121bdb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_af
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_bb

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_bb
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method public onStop()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .registers 3

    return-void
.end method

.method public updateWifiApState()Z
    .registers 12

    const v10, 0x7f121b7d

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v8, "isWifiTetheringEnabled"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const-string/jumbo v6, "KOR"

    sget-object v7, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_REGION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isSimCheck()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_50

    const/4 v1, 0x1

    :cond_50
    const-string/jumbo v6, "TetheringSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAirplaneMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isWifiApBlocked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isNoSimBlocked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_c1

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_c1

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_c1

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v6, :cond_ae

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_b6

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_b6

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    const v7, 0x7f121b7e

    invoke-virtual {v6, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_ae
    :goto_ae
    if-nez v0, :cond_da

    if-nez v3, :cond_da

    :goto_b2
    return v1

    :cond_b3
    const/4 v0, 0x0

    goto/16 :goto_1b

    :cond_b6
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_ae

    :cond_c1
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v6, :cond_ae

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_ae

    :cond_da
    move v1, v5

    goto :goto_b2
.end method
