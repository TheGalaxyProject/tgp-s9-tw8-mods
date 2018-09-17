.class public Lcom/android/server/wifioffload/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifioffload/WifiOffloadService$1;,
        Lcom/android/server/wifioffload/WifiOffloadService$2;,
        Lcom/android/server/wifioffload/WifiOffloadService$3;,
        Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static final DONT_SHOW_WIFI_POPUP_TIMER:J = 0x2932e00L

.field private static final MSG_CHECK_WIFIOFFLOADING_CONDITIONS_FOR_PACKAGE:I = 0x65

.field private static final MSG_START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x66

.field private static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:J = 0x3e8L


# instance fields
.field private mAirPlaneModeEnabled:Z

.field private mAppLaunchCount:I

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

.field private mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mIsTimerRunning:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mMessageHandler:Landroid/os/Handler;

.field private mMobileHotSpotEnabled:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousSsidResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowWifiPopupEnabled:Z

.field private mStartTime:J

.field private mWifiConnectedToAP:Z

.field private mWifiEnabled:Z

.field private final mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mWifiOffloadLog:Ljava/lang/StringBuilder;

.field private final mblackListedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    iput v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$1;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$2;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService$3;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "WifiOffloadService"

    const-string/jumbo v5, "WifiOffloadService onCreate()"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/wifioffload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    invoke-virtual {v2}, Lcom/android/server/wifioffload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_9b
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_offload_network_notify"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_ff

    move v2, v3

    :goto_ab
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_101

    move v2, v3

    :goto_bd
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z
    :try_end_bf
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9b .. :try_end_bf} :catch_103

    :goto_bf
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    return-void

    :cond_ff
    move v2, v4

    goto :goto_ab

    :cond_101
    move v2, v4

    goto :goto_bd

    :catch_103
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_bf
.end method

.method private addDumpLogs(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private areAllPreConditionsPassed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J
    .registers 6

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J

    move-result-wide v0

    return-wide v0
.end method

.method private checkNetworksAndShowAPDialog()V
    .registers 9

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_14
    const-string/jumbo v4, "WifiOffloadService"

    const-string/jumbo v5, "No networks. Start scanning."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void

    :cond_23
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_2c

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_48
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v4, "WifiOffloadService"

    const-string/jumbo v5, "All scanresults are hidden or ad-hoc networks"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    :goto_66
    if-nez v4, :cond_81

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    const/4 v4, 0x0

    goto :goto_66

    :cond_81
    const-string/jumbo v4, "scanresults are same \n"

    invoke-direct {p0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_7e
.end method

.method private checkWifiOffloadConditions(Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iput v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\npackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    const/4 v3, -0x1

    :try_start_3d
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4b} :catch_8f

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->isOffloadNeeded(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_94

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->insertDataUsage(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dialogInvoked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :catch_8f
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :cond_94
    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-direct {p0, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->updateAppLaunchCount(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->areAllPreConditionsPassed()Z

    move-result v6

    if-nez v6, :cond_127

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiConnectedToAP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMobileHotSpotEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAirPlaneModeEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mShowWifiPopupEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto/16 :goto_5a

    :cond_127
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v6, :cond_138

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    :cond_138
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5a
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    return-object v2
.end method

.method private getAppLaunchCount(Ljava/lang/String;)I
    .registers 10

    const/4 v7, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packagename = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "app_datausage"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifioffload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "launchcount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_7c

    :cond_3f
    if-eqz v7, :cond_44

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_44
    const-string/jumbo v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch count in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launchCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    return v0

    :catchall_7c
    move-exception v0

    if-eqz v7, :cond_82

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
.end method

.method private getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    .registers 21

    const/4 v13, 0x0

    const/4 v2, 0x0

    :try_start_2
    const-string/jumbo v4, "netstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    :cond_13
    if-eqz v2, :cond_d4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_1f} :catch_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_6a

    move-result-object v3

    :goto_20
    if-eqz v2, :cond_25

    :try_start_22
    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_b1

    :cond_25
    :goto_25
    if-eqz v3, :cond_d1

    const-wide/high16 v4, -0x8000000000000000L

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    if-eqz v12, :cond_d1

    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DataUsage for app with uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    return-wide v4

    :catch_6a
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in getting history for uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v13

    goto :goto_20

    :catch_90
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OutOfMemoryError in getting UID history "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v13

    goto/16 :goto_20

    :catch_b1
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ex in closing statsSession "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_d1
    const-wide/16 v4, 0x0

    return-wide v4

    :cond_d4
    move-object v3, v13

    goto/16 :goto_20
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertDataUsage for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "launchcount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "app_datausage"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifioffload/WifiOffloadDB;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method private isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z
    .registers 13

    const/16 v6, 0x3e8

    if-eq p2, v6, :cond_7

    const/4 v6, -0x1

    if-ne v6, p2, :cond_9

    :cond_7
    const/4 v6, 0x0

    return v6

    :cond_9
    const/4 v0, 0x0

    const-string/jumbo v6, "app.offload.datausage.limit"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x100000

    mul-int v1, v7, v6

    const-string/jumbo v6, " PROPERTY_DATA_USAGE_THREHOLD 1"

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    const-string/jumbo v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n     wifiUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v7

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    const-string/jumbo v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_d7

    const-string/jumbo v6, "WifiOffloadService"

    const-string/jumbo v7, "App\'s datausage exceeds the threshold so Offload"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string/jumbo v6, "\n"

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    :cond_a2
    :goto_a2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    dataUsageExceeded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    const-string/jumbo v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dataUsageCrossed ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d7
    const-string/jumbo v6, "WifiOffloadService"

    const-string/jumbo v7, "Data Usage does not reach threshold yet"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v6

    add-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wifiAndMobileUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v7

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    const-string/jumbo v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a2

    const-string/jumbo v6, "WifiOffloadService"

    const-string/jumbo v7, "DataUsage exceeds the threshold"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_a2
.end method

.method private isAppInBackground(Ljava/lang/String;)Z
    .registers 12

    iget-object v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/16 v8, 0x1f4

    :try_start_12
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_1a

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_31} :catch_50

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v1, 0x1

    :cond_35
    :goto_35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "appinbg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    return v1

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_35
.end method

.method private isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "[IBSS]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x55

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private isOffloadNeeded(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package is in blacklist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    if-eqz v0, :cond_2e

    xor-int/lit8 v1, v0, 0x1

    return v1

    :cond_2e
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "its System uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_4f
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " have no internet permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    return v3

    :cond_7e
    const/4 v1, 0x1

    return v1
.end method

.method private isTimerRunning()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "12hrstimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return v0
.end method

.method private startWifiOffloadActivity()V
    .registers 4

    const-string/jumbo v1, "WifiOffloadService"

    const-string/jumbo v2, "startWifiOffloadActivity () "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "WifiOffloadService"

    const-string/jumbo v2, "There  is no associated handler for intent, Cann\'t resolve the activity "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "EXTRA_PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAppLaunchCount(Ljava/lang/String;I)V
    .registers 9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "app_datausage"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifioffload/WifiOffloadDB;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_c

    const-string/jumbo v0, "WifiOffloadService"

    const-string/jumbo v1, "checkAppForWiFiOffloading package name is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppInBackground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_44
    return-void
.end method

.method public checkAppNeedsMoveToFront(I)V
    .registers 7

    const-string/jumbo v2, "WifiOffloadService"

    const-string/jumbo v3, "Move task to front..!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_f
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SecurityException move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "WifiOffloadService"

    const-string/jumbo v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WifiOffloadService"

    const-string/jumbo v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_48
    const-string/jumbo v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "WifiOffloadService"

    const-string/jumbo v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTimer()V
    .registers 3

    const-string/jumbo v0, "WifiOffloadService"

    const-string/jumbo v1, "12hrs Timer started "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return-void
.end method
