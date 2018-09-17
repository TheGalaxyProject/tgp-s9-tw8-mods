.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$1;,
        Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;,
        Lcom/android/settingslib/wifi/WifiTracker$MainHandler;,
        Lcom/android/settingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;,
        Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
    }
.end annotation


# static fields
.field private static final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field private static final DBG:Z

.field private static final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field public static final ENABLE_WECHAT_WIFI:Z

.field public static sVerboseLogging:I


# instance fields
.field private final mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigLock:Ljava/lang/Object;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIncludeNotInRangedAp:Z

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastInfo:Landroid/net/wifi/WifiInfo;

.field private volatile mLastLinkProperties:Landroid/net/LinkProperties;

.field private volatile mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mLastUpdatedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWifiState:I

.field private final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mLock:Ljava/lang/Object;

.field final mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

.field private mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNumSavedNetworks:I

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mRequestedScores:Ljava/util/Set;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private mScanId:Ljava/lang/Integer;

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

.field private final mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemFlagTracking:Z

.field private mSemListener:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

.field private mSemReceivedToUpdateAccessPoint:Z

.field private mSemReceivedToUpdateAccessPointWithClear:Z

.field private mSemRequestToHoldAccessPointUpdate:Z

.field private mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemListener:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->isStateChanged(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAndForceUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settingslib/wifi/WifiTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->copyAndNotifyListeners(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked(ZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(ZZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    const-string/jumbo v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .registers 18

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkScoreManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Looper;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;-><init>(Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez p4, :cond_60

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    if-nez p10, :cond_68

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p10

    :cond_68
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p10}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    if-eqz p3, :cond_14e

    :goto_73
    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    iput-object p7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    iput-boolean p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    iput-boolean p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    iput-object p8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_a6

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    :cond_a6
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_139
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-void

    :cond_14e
    move-object p3, p10

    goto/16 :goto_73
.end method

.method private clearAndForceUpdate()V
    .registers 3

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "clearAndForceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private copyAndNotifyListeners(Z)V
    .registers 14

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_e
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    iget v9, v0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v7, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_26

    goto :goto_14

    :catchall_26
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_29
    :try_start_29
    sget-boolean v9, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v9, :cond_36

    const-string/jumbo v9, "WifiTracker"

    const-string/jumbo v11, "Starting to copy AP items on the MainHandler"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-eqz p1, :cond_40

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v9, v9, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    :cond_40
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    iget-object v9, v9, Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;->mPendingNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    iget v9, v2, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_6e

    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V

    :goto_6a
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_6e
    invoke-virtual {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->copyFrom(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_6a

    :cond_72
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7c
    .catchall {:try_start_29 .. :try_end_7c} :catchall_26

    monitor-exit v10

    if-eqz v5, :cond_b0

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_b0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_89
    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    iget v9, v0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget-object v4, v0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v6, :cond_89

    if-eqz v4, :cond_89

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_a8

    invoke-interface {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_a8
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_89

    invoke-interface {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_89

    :cond_b0
    return-void
.end method

.method public static getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "WifiTracker"

    const-string/jumbo v3, "getCurrentAccessPoints"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->copyAndNotifyListeners(Z)V

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getScanResults()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_60

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-wide v6, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v4

    sget-boolean v3, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v3, :cond_4e

    const-string/jumbo v3, "WifiTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "check to use previous scan results diff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_5e

    const-wide/32 v6, 0xea60

    cmp-long v3, v0, v6

    if-gez v3, :cond_5e

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    return-object v3

    :cond_5e
    iput-object v10, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    :cond_60
    :goto_60
    return-object v2

    :cond_61
    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanResult:Ljava/util/List;

    goto :goto_60
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_e

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_26

    if-ne p1, v2, :cond_e

    monitor-exit v3

    return-object v0

    :cond_24
    monitor-exit v3

    return-object v4

    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleResume()V
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    return-void
.end method

.method private isStateChanged(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z
    .registers 4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_8

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_a

    :cond_8
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    :cond_a
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_12

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_14

    :cond_12
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    :cond_14
    if-eq p1, p2, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private printAccessPoints(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    if-le p1, v6, :cond_c

    const-string/jumbo v3, "WifiTracker"

    const-string/jumbo v4, "------ Dumping SSIDs that were not seen on this scan ------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    if-le v0, p1, :cond_2b

    :cond_1f
    if-le p1, v6, :cond_2a

    const-string/jumbo v3, "WifiTracker"

    const-string/jumbo v4, "---- Done dumping SSIDs that were not seen on this scan ----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void

    :cond_2b
    sget-boolean v3, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v3, :cond_63

    const-string/jumbo v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private updateAccessPoints(ZZ)V
    .registers 37
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3d

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ignored updateAccessPoints, Wi-Fi is not enabled. state: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7e

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_67

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ignored updateAccessPoints, holding by settings. doClearConfig:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    move/from16 v30, v0

    if-nez v30, :cond_7d

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    :cond_7d
    return-void

    :cond_7e
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    move-object/from16 v30, v0

    if-nez v30, :cond_9a

    const/16 p1, 0x1

    :cond_9a
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateConfiguredNetworks()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_b9

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->clearConfig()V

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v30, :cond_b9

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->clearWeChatApInfo()V

    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint;->clearNetworkInfoExcept(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->clearUpdateFlag()V

    goto :goto_a1

    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v30 .. v33}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_eb
    new-instance v8, Lcom/android/settingslib/wifi/WifiTracker$Multimap;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settingslib/wifi/WifiTracker$Multimap;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    :cond_10f
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/WifiTracker;->getScanResults()Ljava/util/List;

    move-result-object v24

    const-string/jumbo v31, "WifiTracker"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "updateAccessPoints clearConfig:"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v32, " configSize:"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    move-object/from16 v30, v0

    if-eqz v30, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    :goto_14f
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v32, " scanSize:"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-eqz v24, :cond_23d

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    :goto_16c
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    if-eqz v12, :cond_242

    const/16 v30, 0x0

    :try_start_18e
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_198
    :goto_198
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_242

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1b0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v30, v0

    if-eqz v30, :cond_198

    :cond_1b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mNumSavedNetworks:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    if-eqz p1, :cond_1c9

    invoke-virtual {v4, v10}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v4, v13, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    :cond_1ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v30, v0

    if-eqz v30, :cond_198

    const/4 v7, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1f9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_21a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f9

    const/4 v7, 0x1

    :cond_21a
    if-nez v7, :cond_227

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_227

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->setUnreachable()V

    :cond_227
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0, v4}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_233
    .catchall {:try_start_18e .. :try_end_233} :catchall_235

    goto/16 :goto_198

    :catchall_235
    move-exception v30

    monitor-exit v31

    throw v30

    :cond_238
    const-string/jumbo v30, "null"

    goto/16 :goto_14f

    :cond_23d
    const-string/jumbo v30, "null"

    goto/16 :goto_16c

    :cond_242
    monitor-exit v31

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    if-eqz v24, :cond_308

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_24e
    :goto_24e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_308

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_24e

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_24e

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "[IBSS]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_24e

    invoke-static/range {v22 .. v22}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v20

    if-eqz v20, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_29c

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29c
    const/16 v19, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2ae
    :goto_2ae
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v30

    if-eqz v30, :cond_2ae

    const/16 v19, 0x1

    goto :goto_2ae

    :cond_2c5
    if-nez v19, :cond_24e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v30, v0

    if-eqz v30, :cond_24e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v13, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    :cond_2fa
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0, v4}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24e

    :cond_308
    const/4 v15, 0x0

    const/16 v21, 0x0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_319
    :goto_319
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v30, :cond_365

    const-string/jumbo v30, "VerizonWiFi"

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_365

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_35f

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "    - filter.add "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " (EAP AKA for VZW)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35f
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_319

    :cond_365
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_379

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_3bb

    :cond_379
    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_319

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "current network is existed ssid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", state="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", summary="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_319

    :cond_3bb
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_379

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_379

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_379

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_379

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isUpdated()Z

    move-result v30

    if-nez v30, :cond_411

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_319

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "    - weak.add "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " (not updated)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_319

    :cond_411
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_449

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v30

    const/16 v31, -0x55

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_449

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-nez v30, :cond_449

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v30

    const/16 v31, 0x1388

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_4ad

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v30

    const/16 v31, -0x52

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_4ad

    :cond_449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeNotInRangedAp:Z

    move/from16 v30, v0

    if-eqz v30, :cond_457

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    if-nez v30, :cond_319

    :cond_457
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_319

    const-string/jumbo v30, "WifiTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "    - weak.add "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " rssi:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " freq:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " state:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_319

    :cond_4ad
    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v30, :cond_319

    const-string/jumbo v30, "Swisscom_Auto_Login"

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4cf

    const-string/jumbo v30, "Swisscom"

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_319

    move-object/from16 v21, v4

    goto/16 :goto_319

    :cond_4cf
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    if-eqz v30, :cond_319

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v30, v0

    if-nez v30, :cond_319

    const/4 v15, 0x1

    goto/16 :goto_319

    :cond_4e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v30, v0

    if-eqz v30, :cond_502

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_4f0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_502

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4f0

    :cond_502
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_506
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_518

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/wifi/AccessPoint;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_506

    :cond_518
    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz v30, :cond_52e

    if-eqz v15, :cond_52e

    if-eqz v21, :cond_52e

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v30, "WifiTracker"

    const-string/jumbo v31, "network removed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52e
    :try_start_52e
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_531
    .catch Ljava/lang/Exception; {:try_start_52e .. :try_end_531} :catch_57b

    :goto_531
    sget-boolean v30, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v30, :cond_53e

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/android/settingslib/wifi/WifiTracker;->printAccessPoints(ILjava/util/List;)V

    :cond_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v31, v0

    if-eqz p2, :cond_586

    const/16 v30, 0x1

    :goto_567
    const/16 v32, 0x2

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_57b
    move-exception v14

    const-string/jumbo v30, "WifiTracker"

    const-string/jumbo v31, "Exception occures during sorting accessPoints !!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_531

    :cond_586
    const/16 v30, 0x0

    goto :goto_567
.end method

.method private updateAccessPointsLocked(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateConfiguredNetworks()V
    .registers 4

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2e

    monitor-exit v1

    const-string/jumbo v1, "WifiTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredNetworks size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    if-nez v0, :cond_31

    const-string/jumbo v0, "null"

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 13

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    if-eq v6, v9, :cond_d

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v6, v10}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_d
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_72

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v6, v10}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    :goto_1c
    if-eqz p1, :cond_2b

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v6, :cond_2b

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6, v7, v8, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    :cond_42
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_47
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_4f
    if-ltz v2, :cond_78

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_c0

    move-result v6

    if-eq v3, v6, :cond_6f

    const/4 v4, 0x1

    :cond_6f
    add-int/lit8 v2, v2, -0x1

    goto :goto_4f

    :cond_72
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v6, v9}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_1c

    :cond_78
    :try_start_78
    const-string/jumbo v6, "WifiTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNetworkInfo reorder:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", updated:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a4

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_a4
    sget-boolean v6, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v6, :cond_b0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-direct {p0, v8, v6}, Lcom/android/settingslib/wifi/WifiTracker;->printAccessPoints(ILjava/util/List;)V

    :cond_b0
    if-eqz v5, :cond_be

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z
    :try_end_be
    .catchall {:try_start_78 .. :try_end_be} :catchall_c0

    :cond_be
    monitor-exit v7

    return-void

    :catchall_c0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private updateWifiState(I)V
    .registers 5

    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public forceScan()V
    .registers 3

    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->forceScan()V

    :cond_e
    return-void
.end method

.method public forceUpdate()V
    .registers 5

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPointsLocked(ZZ)V

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_44

    const-string/jumbo v0, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force update - internal access point list:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->handleMessage(Landroid/os/Message;)V

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_76

    const-string/jumbo v0, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force update - external access point list:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_78

    :cond_76
    monitor-exit v1

    return-void

    :catchall_78
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAccessPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_20

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_20
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    return-object v1
.end method

.method getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_20

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_20
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPointListenerAdapter:Lcom/android/settingslib/wifi/WifiTracker$AccessPointListenerAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    return-object v1
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public getWifiState()I
    .registers 2

    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    return v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    :cond_c
    return-void
.end method

.method public resumeScanning()V
    .registers 4

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_1b
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    const-string/jumbo v1, "resumeScan"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resumeToUpdateAccessPoint()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "resumeToUpdateAccessPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    if-eqz v0, :cond_1c

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPoint:Z

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(ZZ)V

    :cond_1c
    return-void
.end method

.method public setAccessPointVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mIncludeNotInRangedAp:Z

    return-void
.end method

.method public setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemListener:Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    return-void
.end method

.method public startTracking()V
    .registers 5

    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "startTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastWifiState:I

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_3b
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->isScanEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/List;

    monitor-enter v0
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_59

    :try_start_50
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAndForceUpdate()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_56

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_59

    :cond_54
    :goto_54
    monitor-exit v1

    return-void

    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v0

    throw v2
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    goto :goto_54
.end method

.method public stopToUpdateAccessPoint()V
    .registers 3

    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "stopToUpdateAccessPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemRequestToHoldAccessPointUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemReceivedToUpdateAccessPointWithClear:Z

    return-void
.end method

.method public stopTracking()V
    .registers 4

    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "stopTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastUpdatedConfigs:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_3a

    monitor-exit v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    :cond_28
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mSemFlagTracking:Z

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removePendingMessages()V
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_3d

    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
