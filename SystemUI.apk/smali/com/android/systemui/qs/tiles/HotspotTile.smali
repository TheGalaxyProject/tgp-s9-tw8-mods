.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$1;,
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field static final TETHER_SETTINGS:Landroid/content/Intent;

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFI_AP_RANDOM_PASSWORD:Ljava/lang/String; = "wifi_ap_random_password"


# instance fields
.field private final HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)I
    .registers 2

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 7

    const v4, 0x7f0801ef

    const v3, 0x7f0801ed

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0801f0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0801ee

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v1, 0x7f0801f3

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " HotspotTile  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-void
.end method

.method private static getStringID(I)I
    .registers 3

    move v0, p0

    const v1, 0x7f1208d3

    if-ne p0, v1, :cond_e

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1208d4

    :cond_d
    :goto_d
    return v0

    :cond_e
    const v1, 0x7f120771

    if-ne p0, v1, :cond_1b

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f120772

    goto :goto_d

    :cond_1b
    const v1, 0x7f1203f0

    if-ne p0, v1, :cond_30

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_28

    const v0, 0x7f1203f1

    goto :goto_d

    :cond_28
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203f2

    goto :goto_d

    :cond_30
    const v1, 0x7f1203e2

    if-ne p0, v1, :cond_6d

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_3d

    const v0, 0x7f1203e9

    goto :goto_d

    :cond_3d
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_45

    const v0, 0x7f1203e7

    goto :goto_d

    :cond_45
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_4d

    const v0, 0x7f1203e8

    goto :goto_d

    :cond_4d
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz v1, :cond_55

    const v0, 0x7f1203e3

    goto :goto_d

    :cond_55
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_MTR_POPUP:Z

    if-eqz v1, :cond_5d

    const v0, 0x7f1203e6

    goto :goto_d

    :cond_5d
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_65

    const v0, 0x7f1203e4

    goto :goto_d

    :cond_65
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203e5

    goto :goto_d

    :cond_6d
    const v1, 0x7f1203ef

    if-eq p0, v1, :cond_d

    const v1, 0x7f1203dd

    if-ne p0, v1, :cond_99

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_7f

    const v0, 0x7f1203e1

    goto :goto_d

    :cond_7f
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_87

    const v0, 0x7f1203e0

    goto :goto_d

    :cond_87
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_90

    const v0, 0x7f1203df

    goto/16 :goto_d

    :cond_90
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203de

    goto/16 :goto_d

    :cond_99
    const v1, 0x7f1203f3

    if-ne p0, v1, :cond_b0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_a7

    const v0, 0x7f1203f5

    goto/16 :goto_d

    :cond_a7
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203f4

    goto/16 :goto_d

    :cond_b0
    const v1, 0x7f1203ea

    if-ne p0, v1, :cond_d9

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_be

    const v0, 0x7f1203ee

    goto/16 :goto_d

    :cond_be
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_c7

    const v0, 0x7f1203ec

    goto/16 :goto_d

    :cond_c7
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_d0

    const v0, 0x7f1203ed

    goto/16 :goto_d

    :cond_d0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203eb

    goto/16 :goto_d

    :cond_d9
    const v1, 0x7f120775

    if-ne p0, v1, :cond_e7

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f120776

    goto/16 :goto_d

    :cond_e7
    const v1, 0x7f120773

    if-ne p0, v1, :cond_d

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_f5

    const v0, 0x7f120774

    goto/16 :goto_d

    :cond_f5
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CTC_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f120777

    goto/16 :goto_d
.end method

.method private isAirplaneModeEnabled()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12077d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_1e
    return v2
.end method

.method private isBlockedByEASPolicy()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isP2pConnected()Z
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_f

    const/4 v2, 0x0

    return v2

    :cond_f
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isP2PConnected = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSimCheck()Z
    .registers 2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_CHECK_MHSDBG:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SIMCHECK_DISABLED:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private isWifiSharingEnabled()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_12

    return v3

    :cond_12
    return v2
.end method

.method private setHotspotEnabled()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHotspotEnabled start for USA or SBM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHotspotEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "STA Concurrency - P2P is connected and showing disconnect pop up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleClick : showWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWifiSharingFirstTimeDialog()V

    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method private showNoSIMDialog()V
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    :cond_d
    const v2, 0x7f120775

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f120773

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWarningDialog(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showWarningDialog(): mAlertDialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_a4

    const v2, 0x7f1203f3

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f1203ea

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    :goto_55
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$8;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_a4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c4

    const v2, 0x7f1203ef

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f1203dd

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    goto :goto_55

    :cond_c4
    const v2, 0x7f1203f0

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f1203e2

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    goto :goto_55
.end method


# virtual methods
.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hotspot createDetail Adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " HotspotTile  getDetailAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-object v1

    :cond_b
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1f
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-object v1

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1208d3

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockTypeInSecure()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected handleClick()V
    .registers 6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSimCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_36

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_36
    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_4a
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void

    :cond_4e
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_80
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " handleClick  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    if-nez v2, :cond_b0

    return-void

    :cond_b0
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v2, :cond_b8

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v2, :cond_e8

    :cond_b8
    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_ca

    const/16 v2, 0xd

    if-ne v1, v2, :cond_e4

    :cond_ca
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiApState is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void

    :cond_e8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " handleSecondaryClick  : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_19
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2d
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .registers 7

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->dualTarget:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_ICON:Z

    if-eqz v0, :cond_4f

    const v0, 0x7f08052d

    :goto_10
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    :goto_28
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateState :  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    :goto_4c
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    return-void

    :cond_4f
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_ICON:Z

    if-eqz v0, :cond_57

    const v0, 0x7f080527

    goto :goto_10

    :cond_57
    const v0, 0x7f080547

    goto :goto_10

    :cond_5b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    goto :goto_28

    :cond_64
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_6a

    const/4 v0, 0x2

    goto :goto_4c

    :cond_6a
    move v0, v1

    goto :goto_4c
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_HotspotTile_11529()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_HotspotTile_9818()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeCurrentStateToString"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "1"

    :goto_13
    return-object v0

    :cond_14
    const-string/jumbo v0, "0"

    goto :goto_13
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    const-string/jumbo v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_29

    return-void

    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    return-void

    :cond_30
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState isSimCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5f

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_5f
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState handleClick  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    if-nez v2, :cond_8f

    return-void

    :cond_8f
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v2, :cond_97

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v2, :cond_c7

    :cond_97
    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_a9

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c3

    :cond_a9
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState wifiApState is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void

    :cond_c7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .registers 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 2

    return-void
.end method

.method public showWifiSharingFirstTimeDialog()V
    .registers 15

    const/4 v13, 0x0

    const/16 v10, 0xa

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_ap_wifi_sharing"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_1c

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "first time WifiSharing popup not shown as this is not first time"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v8, :cond_24

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v8, :cond_2d

    :cond_24
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "USA or SBM device, so ignoring first time popup from here"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "showing first time WifiSharing dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x2

    :try_start_3c
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wifi Sharing provider value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "wifi_ap_wifi_sharing"

    const/4 v11, 0x1

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "wifi_ap_wifi_sharing"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3c .. :try_end_63} :catch_c0

    move-result v8

    if-ne v8, v12, :cond_67

    const/4 v5, 0x1

    :cond_67
    :goto_67
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f120782

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;)V

    invoke-virtual {v8, v6, v5, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;)V

    const v10, 0x7f1201dc

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/tiles/HotspotTile$5;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d01d4

    invoke-static {v8, v9, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :catch_c0
    move-exception v1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Wifi Sharing Provider is not defined"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method
