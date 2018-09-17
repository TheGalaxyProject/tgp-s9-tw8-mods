.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$1;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$2;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$3;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$4;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACION_SETDIM_WIFI_ATT:Ljava/lang/String; = "action_wifi_qs_setdim_att"

.field private static final ACTION_IMS_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final ACTION_REFRESH_WIFI_ATT:Ljava/lang/String; = "action_wifi_qs_refresh_att"

.field private static final ALL_SLOT_VOWIFI_MENU_ENABLED:I = 0x3

.field private static final APN_ALREADY_ACTIVE:I = 0x0

.field private static final BASIC_GUI_TEST:Z = false

.field private static final CSC_RIL_CONFIGEPDGEXTRAFUNCTION:Ljava/lang/String;

.field private static final CSC_VOICECALL_CONFIGOPSTYLEFORWFC:Ljava/lang/String;

.field private static final EVENT_REQUEST_NETWORK:I = 0x65

.field private static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field private static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final LONG_KEYPRESS:I = 0x2

.field private static final SHORT_KEYPRESS:I = 0x1

.field private static final SLOT1_VOWIFI_MENU_ENABLED:I = 0x1

.field private static final SLOT2_VOWIFI_MENU_ENABLED:I = 0x2

.field private static final VOWIFI_MENU_DISABLED:I = 0x0

.field private static final VOWIFI_MENU_ENABLE:Ljava/lang/String; = "vowifi_menu_enable"

.field private static final WFC_DIALOG_SHOW_NEVER_AGAIN:Ljava/lang/String; = "wfc_dialog_show_never_again"

.field private static final WFC_LAUNCH_CONTENT_URI:Landroid/net/Uri;

.field private static final WFC_OPL_DONOT_SHOW_AGAIN:Ljava/lang/String; = "wfc_do_not_show_again_opl_dialog"

.field private static final WIFICALLING_SETTINGS:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;


# instance fields
.field private mActProcessATT:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mInCall:Z

.field private mInWifiCall:Z

.field private mIsWifiCallingMenuEnabled:Z

.field private mLegacyWfcPresent:Z

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimProvisioned:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnifiedWfcPresent:Z

.field private mWfcLaunchStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mWifiConnected:Z

.field private final mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->CSC_VOICECALL_CONFIGOPSTYLEFORWFC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->changeState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.callsettings.WifiCallActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v3, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.CallFeaturesSetting"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->CSC_VOICECALL_CONFIGOPSTYLEFORWFC:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->CSC_RIL_CONFIGEPDGEXTRAFUNCTION:Ljava/lang/String;

    const-string/jumbo v0, "content://com.sec.unifiedwfc.wfcprovider/wfc_fw_support"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_LAUNCH_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.unifiedwfc"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isAppPresentOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mUnifiedWfcPresent:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.nsdsvowifi"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isAppPresentOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mLegacyWfcPresent:Z

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile$4;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vowifi_menu_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_128

    :goto_61
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "vowifi_menu_enable"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v3, :cond_b3

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mUnifiedWfcPresent:Z

    if-eqz v3, :cond_12b

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mLegacyWfcPresent:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12b

    new-instance v3, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcLaunchStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_LAUNCH_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcLaunchStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b3
    :goto_b3
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v3, :cond_bd

    const-string/jumbo v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_bd
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v2, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_e6
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x800

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_f3
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v3, :cond_127

    const-class v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "wifi_calling_rogers_imsi"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_120

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_120

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    :cond_120
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_127
    return-void

    :cond_128
    move v3, v4

    goto/16 :goto_61

    :cond_12b
    const-string/jumbo v3, "action_wifi_qs_refresh_att"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "action_wifi_qs_setdim_att"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_b3
.end method

.method private changeState(Z)Z
    .registers 9

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120ba6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120ba7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x104000a

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    return v0

    :cond_3f
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_83

    if-eqz p1, :cond_83

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120ba6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120ba5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$1;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$2;-><init>(Ljava/lang/Object;)V

    const v3, 0x7f120101

    const/high16 v5, 0x1040000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    return v0

    :cond_83
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_OPV_POPUP:Z

    if-eqz v0, :cond_af

    if-eqz p1, :cond_af

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_do_not_show_again_opl_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_aa
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showWfcOPVDialog()V

    const/4 v0, 0x0

    return v0

    :cond_af
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLocationMenuNeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_102

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RJILWFC:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_dialog_show_never_again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_fc

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_FTM_POPUP:Z

    if-eqz v0, :cond_f8

    const v0, 0x7f120bab

    :goto_de
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$3;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$4;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const v3, 0x104000a

    const/high16 v5, 0x1040000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showLocationInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    return v0

    :cond_f8
    const v0, 0x7f120baa

    goto :goto_de

    :cond_fc
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    const/4 v0, 0x1

    return v0

    :cond_102
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method private getATTVoWifiIntent(I)Landroid/content/Intent;
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getATTVoWifiIntent() Launch provisioning!! keyPressType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getAttPackageNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "qs"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2
.end method

.method private getAttPackageNames(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mUnifiedWfcPresent:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mLegacyWfcPresent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "target device supports Unified VOWIFI: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.unifiedwfc"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.unifiedwfc.LaunchUnifiedActivity"

    aput-object v1, v0, v3

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "target device supports Legacy VOWIFI: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.nsdsvowifi"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    aput-object v1, v0, v3

    return-object v0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    if-gez v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAppPresentOnDevice(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    return v2

    :catch_b
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Wfc NameNotFoundException !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private isEnhanced4gLTEEnabled()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voicecall_type"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private isWfcEnabled()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v4, :cond_1d

    :goto_1c
    return v2

    :cond_1d
    move v2, v3

    goto :goto_1c

    :cond_1f
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v4, :cond_34

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    if-eqz v4, :cond_33

    if-ne v1, v2, :cond_33

    move v3, v2

    :cond_33
    return v3

    :cond_34
    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_menu_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_58

    move v4, v2

    :goto_48
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isEnhanced4gLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_57

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    if-eqz v4, :cond_57

    if-ne v1, v2, :cond_57

    move v3, v2

    :cond_57
    return v3

    :cond_58
    move v4, v3

    goto :goto_48

    :cond_5a
    if-ne v1, v2, :cond_5d

    :goto_5c
    return v2

    :cond_5d
    move v2, v3

    goto :goto_5c
.end method

.method private setMode(Z)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set mode TMO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz p1, :cond_49

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_31
    invoke-static {v6, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    :cond_34
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v3, :cond_67

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v1

    :try_start_3c
    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_48} :catch_4c

    :cond_48
    :goto_48
    return-void

    :cond_49
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_31

    :catch_4c
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_67
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi_call_enable"

    if-eqz p1, :cond_8c

    move v3, v4

    :goto_6f
    invoke-static {v6, v7, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RJILWFC:Z

    if-eqz v3, :cond_48

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "wifi_call_enable"

    if-eqz p1, :cond_8e

    :goto_83
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_48

    :cond_8c
    move v3, v5

    goto :goto_6f

    :cond_8e
    move v4, v5

    goto :goto_83
.end method

.method private showLocationInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 13

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0151

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0181

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_38

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_38
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_45

    if-eqz p4, :cond_45

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_45
    if-eqz p5, :cond_4c

    if-eqz p6, :cond_4c

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4c
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 10

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_19

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_19
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_23

    if-eqz p4, :cond_23

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_23
    if-eqz p5, :cond_2a

    if-eqz p6, :cond_2a

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWfcOPVDialog()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0152

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b50

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$5;-><init>(Ljava/lang/Object;)V

    const v3, 0x7f120b4f

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v3

    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLongClickIntent() mIsWifiCallingMenuEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2e
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_TMO:Landroid/content/Intent;

    return-object v0

    :cond_3d
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_47

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getATTVoWifiIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_47
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RJILWFC:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS_RJIL:Landroid/content/Intent;

    return-object v0

    :cond_4e
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WIFICALLING_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1390

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_ZVV_ICON:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120919

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_AMX_ICON:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120918

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_NON_TRANSLATABLE_WFC_TITLE:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12091a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120917

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick() value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", WifiCallingMenuEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ", mSimProvisioned:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSimProvisioned:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mWifiConnected:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiCallingTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_7b

    return-void

    :cond_77
    const-string/jumbo v0, ""

    goto :goto_5d

    :cond_7b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-eqz v0, :cond_8d

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8e

    :cond_8d
    return-void

    :cond_8e
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->changeState(Z)Z

    return-void
.end method

.method protected handleDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3a
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mUnifiedWfcPresent:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mLegacyWfcPresent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcLaunchStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5a
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiSignalCallback:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_65
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_ZVV_ICON:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120919

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    :goto_16
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_ICON:Z

    if-eqz v0, :cond_5f

    const v0, 0x7f080529

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_23
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->supportWFCStateUpdate()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_93

    const/4 v0, 0x2

    :goto_2e
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :goto_30
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    return-void

    :cond_33
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_AMX_ICON:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120918

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_16

    :cond_43
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_NON_TRANSLATABLE_WFC_TITLE:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12091a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_16

    :cond_53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120917

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_16

    :cond_5f
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_MTR_ICON:Z

    if-eqz v0, :cond_6d

    const v0, 0x7f080516

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_23

    :cond_6d
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_ICON:Z

    if-eqz v0, :cond_7b

    const v0, 0x7f08052e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_23

    :cond_7b
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_ZVV_ICON:Z

    if-eqz v0, :cond_89

    const v0, 0x7f08052b

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_23

    :cond_89
    const v0, 0x7f08052f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_23

    :cond_93
    move v0, v1

    goto :goto_2e

    :cond_95
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_30
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v3

    :cond_e
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RJILWFC:Z

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v2

    return v2

    :cond_17
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_US_OMC_WFC_CONCEPT:Z

    if-eqz v2, :cond_41

    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.csc.omcnw_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    return v3

    :cond_41
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DYNAMIC_WIFICALLING_TILE_VISIBILITY_CHANGING:Z

    if-nez v2, :cond_49

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WFC_REFRESH_BY_SIM:Z

    if-eqz v2, :cond_7f

    :cond_49
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "vowifi_menu_enable"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    :goto_59
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAvailable : mIsWifiCallingMenuEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WIFICALLING:Z

    if-eqz v2, :cond_7c

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    :cond_7c
    return v3

    :cond_7d
    move v2, v3

    goto :goto_59

    :cond_7f
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WIFICALLING:Z

    return v2
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_16606(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_17176(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "302720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rogers SIM Card inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://www.rogers.com/AndroidWiFi/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_30
    return-void

    :cond_31
    const-string/jumbo v2, "3023700"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "fido SIM Card inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://www.fido.com/AndroidWiFi/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_30

    :cond_5d
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "only rogers/fido SIM accepted :ERROR  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_18645(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_19541(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_19648(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_dialog_show_never_again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_27886(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_do_not_show_again_opl_dialog"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_28167(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_28959(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wfc_dialog_show_never_again"

    if-eqz p3, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_29818(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile_30810(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 7

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mListening:Z

    if-eqz p1, :cond_3f

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_24
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_3e
.end method

.method public supportWFCStateUpdate()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vowifi_menu_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInWifiCall:Z

    if-eqz v0, :cond_1f

    return v2

    :cond_1d
    move v0, v2

    goto :goto_12

    :cond_1f
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mActProcessATT:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_24
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TMOWFC:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mInCall:Z

    if-eqz v0, :cond_35

    return v2

    :cond_35
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RJILWFC:Z

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isRJIOSimInserted()Z

    move-result v0

    return v0

    :cond_3e
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROGERSWFC:Z

    if-eqz v0, :cond_43

    return v1

    :cond_43
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWifiCallingMenuEnabled:Z

    return v0
.end method
