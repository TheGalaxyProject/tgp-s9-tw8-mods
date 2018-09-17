.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private bDisableMifi:Z

.field private bShowAttentionDialogVzw:Z

.field private customView:Landroid/view/View;

.field private intentReceiver:Landroid/content/Intent;

.field private isSetChecked:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private mActivity:Ljava/lang/Object;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private mCalledByBixby:Z

.field private mCb:Landroid/widget/CheckBox;

.field private mChangeState:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneMode:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mTetherRunnable:Ljava/lang/Runnable;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field private mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private mWifiApSettingActivity:Landroid/app/Activity;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mprov:[Ljava/lang/String;

.field private nevershowagain:Z

.field private warnWifiDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApSettingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchbar()V

    return-void
.end method

.method private afterAttentionDialog()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    goto :goto_11
.end method

.method private afterSsidDialog()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_c
    const/4 v0, 0x1

    const-string/jumbo v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v0, 0x0

    const-string/jumbo v1, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_56
    if-eqz v0, :cond_61

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_61

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    :cond_61
    return-void
.end method

.method private disableWifiDialog()V
    .registers 14

    const/16 v12, 0xa

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "SPRINT"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v7, "usb_tethering_enabled"

    invoke-static {v1, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "bluetooth_tethering_enabled"

    invoke-static {v1, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_24
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "wifi_display_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_39

    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string/jumbo v7, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string/jumbo v7, "NEWCO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    :cond_4f
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_75

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_71

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_38

    :cond_71
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto :goto_38

    :cond_75
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v7

    if-eqz v7, :cond_92

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_8c

    const-string/jumbo v7, "WifiApSwitchEnabler"

    const-string/jumbo v8, "WiFi p2p is connected. Create dailog"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_38

    :cond_8c
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_38

    :cond_92
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_38

    :cond_96
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    if-eq v6, v8, :cond_118

    if-eqz v6, :cond_118

    const/4 v7, 0x4

    if-eq v6, v7, :cond_118

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_118

    const-string/jumbo v7, "VZW"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "SAMSUNG_HOTSPOT"

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_f1

    move v7, v8

    :goto_cd
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-eqz v7, :cond_f8

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "wifi_saved_state"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v10, 0x258

    :try_start_e9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ec
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ec} :catch_f3

    :goto_ec
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_38

    :cond_f1
    move v7, v9

    goto :goto_cd

    :catch_f3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ec

    :cond_f8
    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-nez v7, :cond_38

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_105

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_38

    :cond_105
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto/16 :goto_38

    :cond_10a
    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_113

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_38

    :cond_113
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabledForBixbyWithoutPopup()V

    goto/16 :goto_38

    :cond_118
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v7

    if-eqz v7, :cond_158

    const-string/jumbo v7, "WifiApSwitchEnabler"

    const-string/jumbo v8, "WiFi p2p on. Create dailog"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v7

    if-eqz v7, :cond_148

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v7

    if-eqz v7, :cond_143

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_13c

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_38

    :cond_13c
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_38

    :cond_143
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_38

    :cond_148
    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    if-nez v7, :cond_151

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_38

    :cond_151
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_38

    :cond_158
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_38
.end method

.method private enableWifiCheckBox()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    const-string/jumbo v0, "MTR"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v0, v2

    goto :goto_12

    :cond_2f
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_4e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_4a

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_2c

    :cond_4a
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_2c

    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    goto :goto_2c
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v2, "MHSNoProvisionPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "WifiApSwitchEnabler"

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

.method private getRvfMode()I
    .registers 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .registers 8

    const-wide/16 v4, 0x1b58

    const v0, 0x7f122061

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_b6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f121f98

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_14

    :pswitch_2a
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_48
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_14

    :cond_4e
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_48

    :pswitch_5f
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f121f9c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_14

    :pswitch_71
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v0, :cond_99

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_8f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto/16 :goto_14

    :cond_99
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_8f

    :pswitch_a4
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto/16 :goto_14

    nop

    :pswitch_data_b6
    .packed-switch 0xa
        :pswitch_5f
        :pswitch_71
        :pswitch_15
        :pswitch_2a
        :pswitch_a4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApSettingActivity:Landroid/app/Activity;

    const-string/jumbo v0, "MTR"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const-string/jumbo v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f12219c

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    :cond_aa
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    return-void
.end method

.method private isDualModeSlot()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private isDualSlotAllOff()Z
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_62

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    const-string/jumbo v5, "gsm.sim.currentcardstatus"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v7, :cond_44

    const-string/jumbo v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_61

    :cond_44
    array-length v5, v1

    if-le v5, v7, :cond_62

    const-string/jumbo v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_62

    const-string/jumbo v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_62

    :cond_61
    const/4 v2, 0x1

    :cond_62
    :goto_62
    return v2

    :cond_63
    array-length v5, v4

    if-ne v5, v7, :cond_73

    const-string/jumbo v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_90

    :cond_73
    array-length v5, v4

    if-le v5, v7, :cond_62

    const-string/jumbo v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_62

    const-string/jumbo v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_62

    :cond_90
    const/4 v2, 0x1

    goto :goto_62
.end method

.method private isDualSlotAndSLot1Off()Z
    .registers 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string/jumbo v5, "gsm.sim.currentcardstatus"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    :goto_3f
    return v2

    :cond_40
    const-string/jumbo v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 v2, 0x1

    goto :goto_3f
.end method

.method private isLTEMode()Z
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WifiApSwitchEnabler"

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

.method private isP2pConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

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

    const-string/jumbo v4, "WifiApSwitchEnabler"

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
    const-string/jumbo v4, "WifiApSwitchEnabler"

    const-string/jumbo v5, "isPackageExists | package is not system app or not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_3d

    :catch_4c
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v4, "WifiApSwitchEnabler"

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
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Skip isProvisioningCheck"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_4a

    invoke-virtual {v6, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_3d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_3d
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Skip isProvisioningCheck - DPM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4a
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_a6

    :try_start_62
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_71
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "isOpenWifiApAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Skip isProvisioningCheck - Wifi Policy"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_62 .. :try_end_9f} :catchall_a7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v8

    :cond_a3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a6
    return v9

    :catchall_a7
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isSimCheck()Z
    .registers 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

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

.method private isWifiApBlocked()Z
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-nez v7, :cond_39

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiTetheringEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_39

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiTetheringEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_4e

    move-result v0

    if-eqz v0, :cond_36

    const/4 v7, 0x1

    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_39
    if-nez v7, :cond_53

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_44
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4d
    :goto_4d
    return v7

    :catchall_4e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_4d
.end method

.method private isWifiSharingEnabled()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1b

    const-string/jumbo v1, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_33} :catch_34

    return v4

    :catch_34
    move-exception v0

    const-string/jumbo v1, "WifiApSwitchEnabler"

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
    .registers 10

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getExtenderMode() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getExtenderMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_86

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_ae

    :cond_86
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_9e

    const-string/jumbo v3, "READY"

    const-string/jumbo v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ae

    :cond_9e
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-eqz v3, :cond_ad

    :cond_aa
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_ad

    :cond_b2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_c4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_e4

    :cond_c4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e0

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_ad

    :cond_e0
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_ad

    :cond_e4
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne v3, v8, :cond_108

    if-eqz v0, :cond_108

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_108

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_ad

    :cond_108
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getExtenderMode()I

    move-result v3

    if-ne v3, v6, :cond_116

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_ad

    :cond_116
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_ad
.end method

.method private procHelpCtrl(Z)V
    .registers 5

    const-string/jumbo v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;->show(Z)V

    return-void
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

    const-string/jumbo v2, "WifiApSwitchEnabler"

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

.method private secSetSoftapEnabledForBixbyWithoutPopup()V
    .registers 9

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v5, :cond_e

    if-ne v2, v7, :cond_37

    :cond_e
    :goto_e
    if-eq v2, v5, :cond_12

    if-ne v2, v7, :cond_1e

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    :cond_27
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x258

    :try_start_2e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_40

    :cond_31
    :goto_31
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCalledByBixby:Z

    return-void

    :cond_37
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_e

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_31
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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSummary(I)V
    .registers 2

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method private showFirstTimePoup()V
    .registers 9

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

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

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    const v5, 0x7f0a0998

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f120c0b

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v6, 0x7f1208a6

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v6, 0x7f12089f

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f120c08

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-eqz v15, :cond_65

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

    :cond_65
    const/16 v22, 0x1

    const/4 v14, 0x0

    :try_start_68
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_14d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_152

    move-result-object v14

    if-eqz v14, :cond_73

    :try_start_70
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_14a

    :cond_73
    :goto_73
    if-eqz v15, :cond_b9

    const-string/jumbo v23, "html/%y%z/tethering_%xhelp.html"

    const-string/jumbo v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v24, "%z"

    if-eqz v22, :cond_154

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

    :goto_af
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :cond_b9
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_16b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_16b

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_159

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :goto_dd
    const-string/jumbo v23, "WifiApSwitchEnabler"

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

    :try_start_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    :goto_11d
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d5

    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_13d} :catch_13e
    .catchall {:try_start_fc .. :try_end_13d} :catchall_261

    goto :goto_11d

    :catch_13e
    move-exception v9

    :try_start_13f
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_261

    const/16 v23, 0x0

    if-eqz v13, :cond_149

    :try_start_146
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_25e

    :cond_149
    :goto_149
    return-object v23

    :catch_14a
    move-exception v11

    goto/16 :goto_73

    :catch_14d
    move-exception v11

    const/16 v22, 0x0

    goto/16 :goto_73

    :catchall_152
    move-exception v23

    throw v23

    :cond_154
    const-string/jumbo v23, ""

    goto/16 :goto_af

    :cond_159
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_dd

    :cond_16b
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_18b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_18b

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "wifi_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_dd

    :cond_18b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_1c3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_1c3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_1b1

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_dd

    :cond_1b1
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_dd

    :cond_1c3
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_dd

    :cond_1d5
    :try_start_1d5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_13e
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_261

    move-result-object v10

    if-eqz v13, :cond_1de

    :try_start_1db
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1de} :catch_25c

    :cond_1de
    :goto_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f120cf5

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v25, 0x104000a

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    return-object v23

    :catch_25c
    move-exception v11

    goto :goto_1de

    :catch_25e
    move-exception v11

    goto/16 :goto_149

    :catchall_261
    move-exception v23

    if-eqz v13, :cond_267

    :try_start_264
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_267} :catch_268

    :cond_267
    :goto_267
    throw v23

    :catch_268
    move-exception v11

    goto :goto_267
.end method

.method private showProgress(Z)V
    .registers 5

    const-string/jumbo v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showProgress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_23
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_30

    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2c
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v4

    if-eqz v4, :cond_105

    :try_start_36
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b5

    const-string/jumbo v4, "WifiApSwitchEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package mprov : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mprov:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " disabled. mProvisionApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f121328

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_b0} :catch_b1

    return-void

    :catch_b1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b5
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_d3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_e2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v4, Landroid/preference/PreferenceActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_e1
    :goto_e1
    return-void

    :cond_e2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v4, :cond_f6

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d3 .. :try_end_f0} :catch_f1

    goto :goto_e1

    :catch_f1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_e1

    :cond_f6
    :try_start_f6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/settings/RestrictedSettingsFragment;

    if-eqz v4, :cond_e1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v4, Lcom/android/settings/RestrictedSettingsFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_104
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f6 .. :try_end_104} :catch_f1

    goto :goto_e1

    :cond_105
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isTMO()Z

    move-result v4

    if-nez v4, :cond_111

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v4

    if-eqz v4, :cond_117

    :cond_111
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_e1

    :cond_117
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_e1
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 16

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_22

    aget-object v0, p2, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_10
    if-ge v6, v10, :cond_1e

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v5, 0x1

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1e
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    :cond_22
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_25
    if-ge v7, v8, :cond_42

    aget-object v0, p3, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_30
    if-ge v6, v10, :cond_3e

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_3e
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_25

    :cond_42
    if-eqz v5, :cond_52

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_52

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    if-eqz v4, :cond_51

    const v6, 0x7f122061

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_51
.end method


# virtual methods
.method public DialogShowing(I)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_24

    :pswitch_5
    return v3

    :pswitch_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    return v4

    :cond_14
    return v3

    :pswitch_15
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    return v4

    :cond_23
    return v3

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method

.method public dismissDialog(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_60

    :cond_5
    :goto_5
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_1d
    return-void

    :pswitch_1e
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_5

    :pswitch_22
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_5

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_34
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    goto :goto_5

    :pswitch_48
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    goto :goto_5

    :pswitch_54
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    goto :goto_5

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_34
        :pswitch_1e
        :pswitch_48
        :pswitch_5
        :pswitch_22
        :pswitch_5
        :pswitch_5
        :pswitch_54
    .end packed-switch
.end method

.method public getStaNum()I
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string/jumbo v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public initSwitchbar()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method isProvisioningNeeded()Z
    .registers 5

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

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

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    if-nez v1, :cond_43

    :cond_42
    return v0

    :cond_43
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    return v0

    :cond_51
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string/jumbo v1, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_74
    const-string/jumbo v1, "WifiApSwitchEnabler"

    const-string/jumbo v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_83

    const/4 v0, 0x1

    :cond_83
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckedChanged() setwifiap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_25
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v3

    if-eqz p2, :cond_44

    move v0, v1

    :goto_33
    int-to-long v4, v0

    const v0, 0x7f12179e

    const v6, 0x7f120a4d

    invoke-virtual {v3, v0, v6, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    :cond_44
    move v0, v2

    goto :goto_33

    :cond_46
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_75

    :goto_5a
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz p2, :cond_77

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f120c20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return-void

    :cond_75
    move v1, v2

    goto :goto_5a

    :cond_77
    if-eqz p2, :cond_8e

    const-string/jumbo v0, "USC"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_89
    return-void

    :cond_8a
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_89

    :cond_8e
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_89
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_7

    return v2

    :cond_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_1a

    return v3

    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_24
    if-eqz v0, :cond_3b

    const-string/jumbo v1, "USC"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_36
    return v3

    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_36

    :cond_3b
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_36
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    return-void
.end method

.method public pause()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intentReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_34} :catch_59

    :goto_34
    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_58
    return-void

    :catch_59
    move-exception v0

    goto :goto_34
.end method

.method public resume()V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_29
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    :cond_41
    return-void
.end method

.method public saveIsShowPassword()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

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

.method public secSetSoftapEnabled(Z)V
    .registers 6

    const/16 v3, 0xa

    const/4 v2, 0x1

    if-eqz p1, :cond_61

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DisableMobileApWifiConcurrency"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bShowAttentionDialogVzw:Z

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    goto :goto_49

    :cond_4e
    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v1, " Check secSetSoftapEnabled non Verizon device "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_49

    :cond_5d
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    goto :goto_49

    :cond_61
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_49

    :cond_6c
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_49
.end method

.method public sendSetChecked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_c
.end method

.method public setChecked(Z)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_20

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4c

    :cond_46
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_4b
.end method

.method public setEnabled(Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_31
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3a
    return-void
.end method

.method public setInformation(Lcom/android/settings/RestrictedSettingsFragment;)V
    .registers 4

    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v1, "setInformation: RestrictedSettingsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 4

    const-string/jumbo v0, "WifiApSwitchEnabler"

    const-string/jumbo v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_10

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v3, :cond_10

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return v6

    :cond_10
    if-eqz p1, :cond_38

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v3

    if-lez v3, :cond_38

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setRvfMode(I)V

    const-string/jumbo v3, "WifiApSwitchEnabler"

    const-string/jumbo v4, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v8, v6}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v4, 0x258

    :try_start_35
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_61

    :cond_38
    :goto_38
    const-string/jumbo v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Check airplane mode once again: on ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_66

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v3, :cond_66

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    return v6

    :catch_61
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_38

    :cond_66
    const-string/jumbo v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSoftapEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v3

    if-eqz v3, :cond_93

    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string/jumbo v3, "WifiApSwitchEnabler"

    const-string/jumbo v4, "Provisioning succeeded."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    if-eqz p1, :cond_9e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :cond_9e
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v8, p1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :goto_a9
    if-eqz p1, :cond_ce

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_ce

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v3, :cond_c3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_c3
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    return v6

    :cond_c7
    const v3, 0x7f122061

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_a9

    :cond_ce
    return v7
.end method

.method public showDialog(I)V
    .registers 48

    const/16 v41, 0x12

    move/from16 v0, p1

    move/from16 v1, v41

    if-eq v0, v1, :cond_11

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    :cond_11
    packed-switch p1, :pswitch_data_9aa

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v41, 0x7f121eee

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    move/from16 v41, v0

    if-nez v41, :cond_106

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    move/from16 v41, v0

    xor-int/lit8 v41, v41, 0x1

    if-eqz v41, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f060249

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getColor(I)I

    move-result v41

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_65
    const/high16 v41, 0x41800000    # 16.0f

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v41, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    const/16 v43, 0x1

    move/from16 v0, v43

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v41, 0x1e

    const/16 v42, 0x1e

    move-object/from16 v0, v30

    move/from16 v1, v26

    move/from16 v2, v41

    move/from16 v3, v26

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v41, 0x40000000    # 2.0f

    const/high16 v42, 0x3f800000    # 1.0f

    move-object/from16 v0, v30

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v41

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f1203e0

    move/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f12089f

    move/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f060058

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getColor(I)I

    move-result v41

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_65

    :pswitch_120
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v41

    if-eqz v41, :cond_179

    const v41, 0x7f1211b1

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_13b
    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f1208a6

    move/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v41, 0x7f1221aa

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :cond_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f1221a5

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_13b

    :pswitch_18c
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v41, 0x7f1221a4

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f1208a6

    move/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f1211b8

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_14

    :pswitch_1dc
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    new-instance v41, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const-string/jumbo v44, "$20.48"

    const/16 v45, 0x0

    aput-object v44, v43, v45

    const v44, 0x7f121fb4

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f121099

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    const v42, 0x7f121fb5

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_275
    const/16 v41, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto/16 :goto_14

    :pswitch_289
    const-string/jumbo v41, "WifiApSwitchEnabler"

    const-string/jumbo v42, "CASE DIALOG_WARN_SMARTVIEW_DISABLE"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v41, 0x7f121f92

    move-object/from16 v0, v23

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208ab

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f121f95

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_2f5
    new-instance v33, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v41, "VZW"

    sget-object v42, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f0d0395

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0a099a

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0a0999

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/CheckBox;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0a0983

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121fbb

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v41, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_37e
    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f1208a6

    move-object/from16 v0, v33

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f12089f

    move-object/from16 v0, v33

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121fc0

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v33 .. v33}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :cond_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121fbb

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_37e

    :pswitch_3f6
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121ef3

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f121bd6

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_45c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f0d03c4

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    const/16 v18, 0x0

    const/16 v20, 0x0

    if-eqz v21, :cond_4c8

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "ja"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_574

    const-string/jumbo v18, "ja"

    :goto_493
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ".html\">"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const v42, 0x7f121bd4

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "</a>"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :cond_4c8
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ".html"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const v41, 0x7f0a00af

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x1040014

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :cond_574
    const-string/jumbo v18, "en"

    goto/16 :goto_493

    :pswitch_579
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f12081d

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const v43, 0x7f1211b8

    invoke-static/range {v42 .. v43}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_5ec
    new-instance v29, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v41, 0x7f120824

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f121bd3

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_64f
    const-string/jumbo v41, "WifiApSwitchEnabler"

    const-string/jumbo v42, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v41, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v44, v0

    invoke-direct/range {v41 .. v44}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v41, v0

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->show()V

    goto/16 :goto_14

    :pswitch_6a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string/jumbo v42, "dontshowmemhsfirsttime"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_6d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v41

    xor-int/lit8 v41, v41, 0x1

    if-eqz v41, :cond_6d4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    move/from16 v41, v0

    xor-int/lit8 v41, v41, 0x1

    if-eqz v41, :cond_6d4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V

    goto/16 :goto_14

    :cond_6d4
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_14

    :pswitch_6df
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_14

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_6ea
    new-instance v40, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string/jumbo v42, "layout_inflater"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v41, 0x7f0d0398

    const/16 v42, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v41, 0x7f0a09c8

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121ebf

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/widget/CheckBox;Landroid/content/ContentResolver;)V

    const v42, 0x7f1208a6

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    const v42, 0x7f12055d

    move-object/from16 v0, v40

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v40 .. v41}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v40 .. v40}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v40 .. v40}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_14

    :pswitch_77b
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v41

    if-nez v41, :cond_7dc

    const v41, 0x7f121fbb

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_79a
    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f1208a6

    move-object/from16 v0, v38

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v42, 0x7f12089f

    move-object/from16 v0, v38

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v41, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_14

    :cond_7dc
    const v41, 0x7f121fb8

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v41, 0x7f121fb7

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_79a

    :pswitch_7f1
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121fc5

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f121fc8

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_85e
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v41, 0x7f120d4b

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f1208a6

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    const v43, 0x7f12089f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f121bd6

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :pswitch_8c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v28, 0x2

    :try_start_8cd
    const-string/jumbo v41, "WifiApSwitchEnabler"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Wifi Sharing provider value"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "wifi_ap_wifi_sharing"

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "wifi_ap_wifi_sharing"

    move-object/from16 v0, v41

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8fc
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8cd .. :try_end_8fc} :catch_99e

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_907

    const/16 v28, 0x1

    :cond_907
    :goto_907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f030131

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v37

    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f121ebf

    invoke-static/range {v41 .. v42}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move/from16 v2, v28

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    const v43, 0x7f12055d

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f0d0397

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v22

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_14

    :catch_99e
    move-exception v16

    const-string/jumbo v41, "WifiApSwitchEnabler"

    const-string/jumbo v42, "Wifi Sharing Provider is not defined"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_907

    :pswitch_data_9aa
    .packed-switch 0x1
        :pswitch_120
        :pswitch_275
        :pswitch_2f5
        :pswitch_3f6
        :pswitch_1dc
        :pswitch_45c
        :pswitch_579
        :pswitch_15
        :pswitch_64f
        :pswitch_7f1
        :pswitch_18c
        :pswitch_5ec
        :pswitch_85e
        :pswitch_8c1
        :pswitch_6a2
        :pswitch_6df
        :pswitch_289
        :pswitch_6ea
        :pswitch_77b
    .end packed-switch
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040ba5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f1221b1

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_26

    :goto_1b
    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_26
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1b
.end method
