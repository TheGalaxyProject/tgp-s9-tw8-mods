.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private customView:Landroid/view/View;

.field private customViewWifi:Landroid/view/View;

.field private extra_type:I

.field private isAirplaneMode:Z

.field private isHotspotOnWifiEnableWarningDoNotShowAgain:Z

.field private isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private key_compare:I

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field private mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mCb:Landroid/widget/CheckBox;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDialogType:I

.field private mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private mProvisionType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiEnableCheck:Z

.field private mWifiEnableWarnMessage:Landroid/widget/TextView;

.field private mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

.field private mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mprov:[Ljava/lang/String;

.field private nevershowagain:Z

.field private req_type:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->turnOnExtender()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->key_compare:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private afterAttentionDialog()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_12
.end method

.method private afterBatteryDialog()V
    .registers 4

    const/4 v0, 0x1

    const-string/jumbo v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v0, 0x0

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_56
    if-eqz v0, :cond_5b

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    :cond_5b
    return-void
.end method

.method private disableWifiDialog()V
    .registers 12

    const/16 v10, 0x1f

    const/16 v9, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "wifi_display_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1b

    const/16 v5, 0x22

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v5, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    const-string/jumbo v5, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    :cond_31
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4f

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_1a

    :cond_4f
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_62

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "WiFi p2p is connected. Create dailog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_1a

    :cond_62
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_1a

    :cond_66
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v2, 0x0

    if-eq v4, v6, :cond_d4

    if-eqz v4, :cond_d4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_d4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d4

    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_bf

    move v5, v6

    :goto_9e
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-eqz v5, :cond_c6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "wifi_saved_state"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v8, 0x258

    :try_start_b7
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_c1

    :goto_ba
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1a

    :cond_bf
    move v5, v7

    goto :goto_9e

    :catch_c1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ba

    :cond_c6
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-nez v5, :cond_1a

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1a

    :cond_cf
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1a

    :cond_d4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pEnabled()Z

    move-result v5

    if-eqz v5, :cond_fe

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "WifiApWarning WiFi p2p is connected. Create dailog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v5

    if-eqz v5, :cond_f9

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_f4

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1a

    :cond_f4
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1a

    :cond_f9
    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1a

    :cond_fe
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1a
.end method

.method private dismissProgressDialog(I)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissProgressDialog, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_36

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const/16 v1, 0xb

    if-ne p1, v1, :cond_7a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_35

    :cond_51
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_35

    :cond_7a
    const/16 v1, 0x23

    if-ne p1, v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_35

    :cond_95
    const/16 v1, 0x25

    if-ne p1, v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_35
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v2, "MHSNoProvisionPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBooleanFromSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPwd()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private getRvfMode()I
    .registers 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private getSecurityType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const-string/jumbo v6, "WifiApWarning"

    const-string/jumbo v7, "getSecurityType"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_96

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string/jumbo v6, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wSec : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto :goto_1a

    :cond_53
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_68

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->removeSquareBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\]\\["

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_68
    sget-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v6, :cond_8b

    if-eqz v5, :cond_8c

    const-string/jumbo v6, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smallString[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    return-object v5

    :cond_8c
    const-string/jumbo v6, "WifiApWarning"

    const-string/jumbo v7, "smallString is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_96
    return-object v8
.end method

.method private handleWifiApStateChanged(I)V
    .registers 10

    const/16 v7, 0xa

    const/16 v6, 0xb

    const/4 v5, 0x1

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received intent to disable pop up and state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_29

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_41

    :cond_29
    const/16 v2, 0xc

    if-ne p1, v2, :cond_39

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const/16 v2, 0xd

    if-ne p1, v2, :cond_38

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_38

    :cond_41
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_80

    if-ne p1, v6, :cond_38

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_38

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v2, :cond_74

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_74

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v2, :cond_78

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v2, v5, :cond_78

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_71
    :goto_71
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    :cond_74
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_38

    :cond_78
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_71

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    goto :goto_71

    :cond_80
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_38

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Received intent to disable pop up DIALOG_WIFI_P2P_ENABLE_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_38

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_38

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "WIFI AP State disabled and p2p enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.WIFI_P2P_LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_df

    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :goto_cd
    if-eqz v1, :cond_da

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_da

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_da
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_38

    :cond_df
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_cd
.end method

.method private isLTEMode()Z
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMetroPCS()Z
    .registers 2

    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileApON()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_f

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

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

.method private isP2pConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_40

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    const/4 v1, 0x1

    :goto_1d
    if-eqz v1, :cond_42

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageExists | package is enabled ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return v1

    :cond_3e
    const/4 v1, 0x0

    goto :goto_1d

    :cond_40
    const/4 v1, 0x0

    goto :goto_1d

    :cond_42
    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "isPackageExists | package is not system app or not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_3d

    :catch_4c
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private isProvisioningCheck()Z
    .registers 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "Provisioning.disable"

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

.method private isSimCheck()Z
    .registers 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

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

.method public static isTMO()Z
    .registers 2

    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiSharingEnabled()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1b

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_33} :catch_34

    return v4

    :catch_34
    move-exception v0

    const-string/jumbo v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return v4
.end method

.method private preProvisioning()V
    .registers 8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isLTEMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4b

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_4a
    return-void

    :cond_4b
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7b

    const-string/jumbo v3, "READY"

    const-string/jumbo v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7b

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_75

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_4a

    :cond_75
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_4a

    :cond_7b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_a3

    if-eqz v0, :cond_a3

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a3

    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_4a

    :cond_a3
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_4a
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    const-string/jumbo v2, "MHSNoProvisionPreferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeSquareBrackets(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_25
    return-object p1
.end method

.method private secSetSoftapEnabled(Z)V
    .registers 5

    const/16 v2, 0xa

    if-eqz p1, :cond_47

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DisableMobileApWifiConcurrency"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_52

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_first_time_wifi_sharing_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    goto :goto_47

    :cond_4c
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_47

    :cond_52
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    goto :goto_47
.end method

.method private sendBroadcastCancelEnablingWifi()V
    .registers 4

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "sendBroadcastCancelEnablingWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRvfMode(I)V
    .registers 5

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSoftapEnabled(Z)V
    .registers 12

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-eqz p1, :cond_25

    const/16 v4, 0xc

    if-eq v3, v4, :cond_13

    const/16 v4, 0xd

    if-ne v3, v4, :cond_25

    :cond_13
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_21

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "provisioning sucess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_25
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_60

    move v4, v5

    :goto_35
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    const-string/jumbo v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_62

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v4, :cond_62

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_60
    move v4, v6

    goto :goto_35

    :cond_62
    if-eqz p1, :cond_76

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_76

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v7, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    const-string/jumbo v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSoftapEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_de

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v4, :cond_a1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_a1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "PROVISIONING_RESULT"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value of provisioning result is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "PROVISIONING_RESULT"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "setting the value of provision result to 1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v9, p1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    if-eqz p1, :cond_ea

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_ea
    return-void
.end method

.method private setWpaPwd()Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getPwd()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    if-eqz v2, :cond_1a

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    aget-object v3, v1, v7

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v3, :cond_38

    const-string/jumbo v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pwd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return v7

    :cond_4e
    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Cannot setWPA password for Extender!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private showFirstTimePoup(Landroid/content/Context;)V
    .registers 10

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0393

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0a0984

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a0985

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    const v5, 0x7f0a0998

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f120c0b

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v6, 0x7f1208a6

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v6, 0x7f12089f

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f120c08

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;
    .registers 28

    const-string/jumbo v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-eqz v15, :cond_5d

    const-string/jumbo v23, "html/%y%z/tethering_help.html"

    const-string/jumbo v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, "%z"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    :cond_5d
    const/16 v22, 0x1

    const/4 v14, 0x0

    :try_start_60
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_13f
    .catchall {:try_start_60 .. :try_end_65} :catchall_144

    move-result-object v14

    if-eqz v14, :cond_6b

    :try_start_68
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_13c

    :cond_6b
    :goto_6b
    if-eqz v15, :cond_b1

    const-string/jumbo v23, "html/%y%z/tethering_%xhelp.html"

    const-string/jumbo v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v24, "%z"

    if-eqz v22, :cond_146

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_a7
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :cond_b1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_15d

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_15d

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_14b

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :goto_d5
    const-string/jumbo v23, "WifiApWarning"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Tethering Help url : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :try_start_f4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v4, v0, [B

    :goto_10f
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c7

    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_12f} :catch_130
    .catchall {:try_start_f4 .. :try_end_12f} :catchall_25d

    goto :goto_10f

    :catch_130
    move-exception v9

    :try_start_131
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_25d

    const/16 v23, 0x0

    if-eqz v13, :cond_13b

    :try_start_138
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_25a

    :cond_13b
    :goto_13b
    return-object v23

    :catch_13c
    move-exception v11

    goto/16 :goto_6b

    :catch_13f
    move-exception v11

    const/16 v22, 0x0

    goto/16 :goto_6b

    :catchall_144
    move-exception v23

    throw v23

    :cond_146
    const-string/jumbo v23, ""

    goto/16 :goto_a7

    :cond_14b
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d5

    :cond_15d
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_17d

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_17d

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "wifi_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d5

    :cond_17d
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_1b5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_1b5

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_1a3

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d5

    :cond_1a3
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d5

    :cond_1b5
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d5

    :cond_1c7
    :try_start_1c7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_130
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_25d

    move-result-object v10

    if-eqz v13, :cond_1d0

    :try_start_1cd
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_257

    :cond_1d0
    :goto_1d0
    const-string/jumbo v23, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v23, 0x7f0d00e0

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v23, 0x7f0a0287

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v23, 0x7f0a051a

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f120cf5

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v25, 0x104000a

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$59;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$59;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    return-object v23

    :catch_257
    move-exception v11

    goto/16 :goto_1d0

    :catch_25a
    move-exception v11

    goto/16 :goto_13b

    :catchall_25d
    move-exception v23

    if-eqz v13, :cond_263

    :try_start_260
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_263} :catch_264

    :cond_263
    :goto_263
    throw v23

    :catch_264
    move-exception v11

    goto :goto_263
.end method

.method private showNextHotspotDialog(I)V
    .registers 49

    packed-switch p1, :pswitch_data_8e6

    :cond_3
    :goto_3
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_6

    :pswitch_e
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v33, Landroid/widget/TextView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v43, 0x7f121eee

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v43, v0

    if-nez v43, :cond_52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v43, v0

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    const v44, 0x7f060249

    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getColor(I)I

    move-result v43

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_52
    const/high16 v43, 0x41800000    # 16.0f

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v43, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v44

    const/16 v45, 0x1

    move/from16 v0, v45

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v43

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v43, 0x1e

    const/16 v44, 0x1e

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v43

    move/from16 v3, v30

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v43, 0x40000000    # 2.0f

    const/high16 v44, 0x3f800000    # 1.0f

    move-object/from16 v0, v33

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1203e0

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_e6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x7f1221a4

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f1211b8

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_130
    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v43

    if-eqz v43, :cond_180

    const v43, 0x7f1211b1

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_149
    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v26

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f1221aa

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f1221a5

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_149

    :pswitch_195
    new-instance v28, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const-string/jumbo v45, "$20.48"

    const/16 v46, 0x0

    aput-object v45, v44, v46

    const v45, 0x7f121fb4

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f121099

    move-object/from16 v0, v28

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f121fb5

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_1fe
    const-string/jumbo v8, "file:///android_asset/html/%y/tethering_attention.html"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    new-instance v9, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    if-eqz v24, :cond_232

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, "ja"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_287

    const-string/jumbo v23, "ja"

    :goto_222
    const-string/jumbo v43, "%y"

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_232
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v43, 0x1040014

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :cond_287
    const-string/jumbo v23, "en"

    goto :goto_222

    :pswitch_28b
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f12081d

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f1211b8

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_2f2
    const-string/jumbo v43, "WifiApWarning"

    const-string/jumbo v44, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v43, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v43, v0

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v43 .. v44}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->show()V

    goto/16 :goto_6

    :pswitch_347
    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x7f121f92

    move-object/from16 v0, v27

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v45, 0x7f1208ab

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v45, 0x7f12089f

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v43 .. v44}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    const v44, 0x7f121f95

    invoke-virtual/range {v43 .. v44}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    :pswitch_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_3c4

    new-instance v43, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const v45, 0x103012b

    invoke-direct/range {v43 .. v45}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :cond_3c4
    const v43, 0x7f130173

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    new-instance v35, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v43, "VZW"

    sget-object v44, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_4a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f0d0395

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v43, v0

    const v44, 0x7f0a099a

    invoke-virtual/range {v43 .. v44}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v43, v0

    const v44, 0x7f0a0999

    invoke-virtual/range {v43 .. v44}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/CheckBox;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v43, v0

    const v44, 0x7f0a0983

    invoke-virtual/range {v43 .. v44}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121fbb

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v43, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_451
    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121fc0

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :cond_4a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121fbb

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_451

    :pswitch_4bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const-string/jumbo v44, "dontshowmemhsfirsttime"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_4f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v43

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_4f2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v43, v0

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_4f2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_4f2
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_6

    :pswitch_500
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    :pswitch_50f
    new-instance v37, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121fc5

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v37

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f121fc8

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v37 .. v37}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v37 .. v37}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_578
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x7f120d4b

    move-object/from16 v0, v34

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12201f

    move-object/from16 v0, v34

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v34

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_5cd
    new-instance v36, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f0d0399

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v43, 0x7f0a099b

    move/from16 v0, v43

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    const v43, 0x7f121fd5

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v36

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v36 .. v36}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v36 .. v36}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_62e
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x7f121ef1

    move-object/from16 v0, v20

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f121ef0

    move-object/from16 v0, v20

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v20

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v20

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_68d
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v43

    if-nez v43, :cond_6e8

    const v43, 0x7f121fbb

    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6a6
    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v19

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v19

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :cond_6e8
    const v43, 0x7f121fb8

    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f121fb7

    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6a6

    :pswitch_6fd
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v43, 0x7f12201e

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v43, 0x7f121ef2

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v21

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v44, 0x7f12089f

    move-object/from16 v0, v21

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_75c
    new-instance v42, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const-string/jumbo v44, "layout_inflater"

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    const v43, 0x7f0d0398

    const/16 v44, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v43, 0x7f0a09c8

    move/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121ebf

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;Landroid/content/ContentResolver;)V

    const v44, 0x7f1208a6

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    const v44, 0x7f12055d

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v43, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v42 .. v42}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v42 .. v42}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    :pswitch_7eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v31, 0x2

    :try_start_7f7
    const-string/jumbo v43, "WifiApWarning"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Wifi Sharing provider value"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "wifi_ap_wifi_sharing"

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v43, "wifi_ap_wifi_sharing"

    move-object/from16 v0, v43

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_826
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7f7 .. :try_end_826} :catch_8c2

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_831

    const/16 v31, 0x1

    :cond_831
    :goto_831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    const v44, 0x7f030131

    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v40

    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f121ebf

    invoke-static/range {v43 .. v44}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    move/from16 v2, v31

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    const v45, 0x7f12055d

    move-object/from16 v0, v43

    move/from16 v1, v45

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v43

    new-instance v44, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v43 .. v44}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f0d0397

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v25

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    :catch_8c2
    move-exception v18

    const-string/jumbo v43, "WifiApWarning"

    const-string/jumbo v44, "Wifi Sharing Provider is not defined"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_831

    :pswitch_8ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v43, v0

    if-eqz v43, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x1

    invoke-virtual/range {v43 .. v45}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_3

    nop

    :pswitch_data_8e6
    .packed-switch 0x7
        :pswitch_5cd
        :pswitch_62e
        :pswitch_68d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7eb
        :pswitch_4bc
        :pswitch_500
        :pswitch_3
        :pswitch_75c
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_e6
        :pswitch_130
        :pswitch_195
        :pswitch_1fe
        :pswitch_28b
        :pswitch_2f2
        :pswitch_3a4
        :pswitch_50f
        :pswitch_8ce
        :pswitch_578
        :pswitch_347
        :pswitch_3
        :pswitch_6fd
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .registers 7

    const/4 v4, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_31

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_10

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f121fad

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const/16 v1, 0xb

    if-ne p1, v1, :cond_61

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_40

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_40
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f121fa8

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_30

    :cond_61
    const/16 v1, 0x23

    if-ne p1, v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_70

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    :cond_70
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121fba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_30

    :cond_95
    const/16 v1, 0x25

    if-ne p1, v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_a4

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_a4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121fb9    # 1.94232E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_30
.end method

.method private startProvisioningIfNecessary(I)V
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4} :catch_b8

    move-result v4

    if-eqz v4, :cond_c9

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_77

    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " disabled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f121328

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_73
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_72} :catch_b8

    return-void

    :catch_73
    move-exception v1

    :try_start_74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_77
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "startActivityForResult"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_a5} :catch_b8

    const/4 v4, 0x0

    :try_start_a6
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a6 .. :try_end_a9} :catch_aa

    :goto_a9
    return-void

    :catch_aa
    move-exception v2

    :try_start_ab
    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_b7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ab .. :try_end_b7} :catch_b8

    goto :goto_a9

    :catch_b8
    move-exception v0

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "received exception provision failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_a9

    :cond_c9
    :try_start_c9
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v4

    if-nez v4, :cond_d5

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v4

    if-eqz v4, :cond_db

    :cond_d5
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_a9

    :cond_db
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_e2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_e2} :catch_b8

    goto :goto_a9
.end method

.method private startProvisioningIfNecessary(II)V
    .registers 12

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4} :catch_b3

    move-result v4

    if-eqz v4, :cond_c4

    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_77

    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mprov:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " disabled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f121328

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_73
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_72} :catch_b3

    return-void

    :catch_73
    move-exception v1

    :try_start_74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_77
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "startActivityForResult"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_a0} :catch_b3

    const/4 v4, 0x0

    :try_start_a1
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a1 .. :try_end_a4} :catch_a5

    :goto_a4
    return-void

    :catch_a5
    move-exception v2

    :try_start_a6
    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_b2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a6 .. :try_end_b2} :catch_b3

    goto :goto_a4

    :catch_b3
    move-exception v0

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "received exception provision failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_a4

    :cond_c4
    :try_start_c4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v4

    if-nez v4, :cond_d0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v4

    if-eqz v4, :cond_d6

    :cond_d0
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_a4

    :cond_d6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_dd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c4 .. :try_end_dd} :catch_b3

    goto :goto_a4
.end method

.method private turnOnExtender()V
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getSecurityType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    aget-object v5, v2, v7

    if-nez v5, :cond_40

    :cond_36
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Invalid Security mode!! Wi-Fi Extender cannot be activated!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    aget-object v5, v2, v7

    if-eqz v5, :cond_6b

    aget-object v5, v2, v7

    const-string/jumbo v6, "WPA2-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_eb

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setWpaPwd()Z

    move-result v5

    if-nez v5, :cond_5e

    return-void

    :cond_5e
    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_6b

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    array-length v5, v2

    if-le v5, v8, :cond_bc

    aget-object v5, v2, v8

    if-eqz v5, :cond_bc

    aget-object v5, v2, v8

    const-string/jumbo v6, "WPA2-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bc

    aget-object v5, v2, v8

    const-string/jumbo v6, "TKIP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_9c

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2 TKIP in WPA/WPA2 mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    aget-object v5, v2, v8

    const-string/jumbo v6, "CCMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bc

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_bc

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2 CCMP in WPA/WPA2 mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_f4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    :goto_c8
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xc5

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v8, v3, Landroid/os/Message;->arg1:I

    iput v9, v3, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    if-nez v4, :cond_102

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Start Extender mode in Reset AP cmd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ea
    return-void

    :cond_eb
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_6b

    :cond_f4
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Setting Extender Config to channel 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput v7, v5, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    goto :goto_c8

    :cond_102
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "CMD_RESET_AP failure. Extender Mode cannot be started!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setExtenderMode(I)Z

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    goto :goto_ea
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .registers 5

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_35
    const-string/jumbo v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    if-nez v1, :cond_43

    :cond_42
    return v0

    :cond_43
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    return v0

    :cond_51
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_74
    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_83

    const/4 v0, 0x1

    :cond_83
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, p1, :cond_19

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    if-nez p1, :cond_18

    const/4 v2, -0x1

    if-ne p2, v2, :cond_5e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Setting provision success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_44

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Dismissing Progress Dialog DIALOG_PROGRESS_ENABLE_HOTSPOT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_44
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Wifi Sharing Mobile Ap already ON so return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_57
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_18

    :cond_5e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Setting provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_83

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_83
    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v2

    if-nez v2, :cond_99

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_99
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_9d
    const/4 v1, 0x0

    :try_start_9e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_aa
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9e .. :try_end_aa} :catch_e9

    move-result v1

    :goto_ab
    if-ne v1, v4, :cond_be

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_be
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e1

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "WifiAp is disabled: provisioning fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_dd

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto/16 :goto_18

    :cond_dd
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_e1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_18

    :catch_e9
    move-exception v0

    goto :goto_ab
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0986

    if-ne v0, v1, :cond_27

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    const-string/jumbo v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v9, "wifip2p"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "com.samsung.android.net.wifi.WIFI_EXTENDER_STATE_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_92

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9f

    :cond_92
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "Error: this activity may be started only with intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_9f
    const-string/jumbo v9, "wifiap_warning_dialog_type"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const-string/jumbo v9, "req_type"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const-string/jumbo v9, "extra_type"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const-string/jumbo v9, "wifiap_provision_dialog_type"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    if-eqz p1, :cond_d2

    const-string/jumbo v9, "wifi_enablewarning_check_mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    :cond_d2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    sparse-switch v9, :sswitch_data_4e6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :sswitch_dd
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_e6
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "DIALOG_NAI_MISMATCH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_ef
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "DIALOG_TETHERING_DENIED"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f1220a9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_151

    const v9, 0x7f1220aa

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_11d
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_132

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_132

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v10, 0x7f12089f

    invoke-virtual {v0, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_132
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v10, 0x104000a

    invoke-virtual {v0, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    :cond_150
    :goto_150
    return-void

    :cond_151
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15d

    const v9, 0x7f1220a7

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_11d

    :cond_15d
    const v9, 0x7f1220a8

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_11d

    :sswitch_164
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, "Received intent to show DIALOG_WIFI_P2P_ENABLE_WARNING "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_16d
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_181

    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v9, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :cond_181
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setVisible(Z)V

    move-object v1, p0

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v9, :cond_285

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_285

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_278

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0396

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f12205b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v10, 0x7f122056

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a0986

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v9, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_208
    :goto_208
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v10, 0x104000a

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3ef

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v9, :cond_37c

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_37c

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "SAMSUNG_HOTSPOT"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_364

    const/4 v9, 0x1

    :goto_253
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v9, :cond_367

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v10, 0x7f1211a6

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/16 v9, 0xb

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_150

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_150

    :cond_278
    const v9, 0x7f12205b

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f122056

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_208

    :cond_285
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_29f

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_29f

    const v9, 0x7f1220d4

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f1220d3

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_29f
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2a9

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/16 v10, 0xb

    :cond_2a9
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2bb

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2bb

    const v9, 0x7f12141e

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_2bb
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v9, :cond_2cc

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2cc

    const v9, 0x7f122057

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_2cc
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2dd

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v9, :cond_2dd

    const v9, 0x7f12141f

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_2dd
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v9, :cond_208

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_208

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_350

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0396

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f12205d

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a099d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v10, 0x7f1220c0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v10, 0x7f0a0986

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v9, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_350
    const v9, 0x7f12205d

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v10, 0x7f121fbb

    invoke-static {v9, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_208

    :cond_364
    const/4 v9, 0x0

    goto/16 :goto_253

    :cond_367
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v9, :cond_150

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_150

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_150

    :cond_37c
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v9, :cond_3de

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3de

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "SAMSUNG_HOTSPOT"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3c2

    const/4 v9, 0x1

    :goto_39f
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v9, :cond_3c9

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v9, :cond_3af

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_3af
    const-wide/16 v10, 0x258

    :try_start_3b1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b4
    .catch Ljava/lang/InterruptedException; {:try_start_3b1 .. :try_end_3b4} :catch_3c4

    :goto_3b4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_3be

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3be
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_3c2
    const/4 v9, 0x0

    goto :goto_39f

    :catch_3c4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3b4

    :cond_3c9
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v9, :cond_150

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_150

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_150

    :cond_3de
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_150

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_150

    :cond_3ef
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_150

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_150

    :sswitch_400
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_447

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    const/16 v9, 0xc

    if-eq v7, v9, :cond_412

    const/16 v9, 0xa

    if-ne v7, v9, :cond_41d

    :cond_412
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, " ing, do nothing "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_150

    :cond_41d
    const/16 v9, 0xd

    if-ne v7, v9, :cond_436

    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, " Enabled, trun off "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_150

    :cond_436
    const/16 v9, 0xb

    if-eq v7, v9, :cond_43e

    const/16 v9, 0xe

    if-ne v7, v9, :cond_447

    :cond_43e
    const-string/jumbo v9, "WifiApWarning"

    const-string/jumbo v10, " Disabled, try to turn on"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_447
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const-string/jumbo v9, "USC"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_462

    const/16 v9, 0x17

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_150

    :cond_462
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_150

    :sswitch_467
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v9, v10, :cond_47e

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    const/4 v10, 0x0

    invoke-direct {p0, v10, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(II)V

    goto/16 :goto_150

    :cond_47e
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_150

    :sswitch_484
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_150

    const/4 v9, 0x7

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_150

    :sswitch_49e
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v9

    if-nez v9, :cond_4be

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v9

    if-eqz v9, :cond_4be

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_150

    :cond_4be
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->turnOnExtender()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_150

    :sswitch_4c6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const/16 v9, 0x24

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_150

    :sswitch_4d6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v9, 0x7f130173

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_150

    :sswitch_data_4e6
    .sparse-switch
        0x1 -> :sswitch_dd
        0x2 -> :sswitch_e6
        0x3 -> :sswitch_ef
        0x4 -> :sswitch_16d
        0x5 -> :sswitch_400
        0x6 -> :sswitch_467
        0x7 -> :sswitch_484
        0x8 -> :sswitch_49e
        0x9 -> :sswitch_4d6
        0x24 -> :sswitch_4c6
        0x32 -> :sswitch_164
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    :cond_12
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_1a
    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_1d
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_22

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_22
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v0, v2, :cond_40

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v0, :cond_41

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    :goto_1c
    const-string/jumbo v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_enablewarning_check_mode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_40
    return-void

    :cond_41
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v0, :cond_40

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v0, v2, :cond_40

    goto :goto_1c
.end method

.method protected onUserLeaveHint()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "sendBroadcastCancelEnablingWifi when user click HOME key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_18
    return-void
.end method

.method public saveIsShowPassword()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_12
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method
