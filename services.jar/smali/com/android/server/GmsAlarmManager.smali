.class public Lcom/android/server/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$1;,
        Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;,
        Lcom/android/server/GmsAlarmManager$GmsHandler;,
        Lcom/android/server/GmsAlarmManager$NetWorkStats;,
        Lcom/android/server/GmsAlarmManager$NetworkReceiver;,
        Lcom/android/server/GmsAlarmManager$ScreenReceiver;,
        Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_check_gms_network"

.field private static final ACTION_ALARM_INSERT_LOG_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_insert_log"

.field private static final ACTION_SETUPWIZARD_COMPLETE_BROADCAST:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final CHECKINSERVER_URL:Ljava/lang/String; = "checkin.gstatic.com"

.field private static final CHINA_MODE:Ljava/lang/String; = "China"

.field private static final CONFIGUPDATER_PKG:Ljava/lang/String; = "com.google.android.configupdater"

.field public static final GMSALARMMANAGERLOGGING_APP_ID:Ljava/lang/String; = "com.android.server.gmsalarmmanager"

.field public static final GMSALARMMANAGERLOGGING_FEATURE_GNET:Ljava/lang/String; = "GNET"

.field private static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field private static final MSG_CHECK_NETWORK:I = 0x1

.field private static final MSG_DISABLE_GMS_NETWORK:I = 0x2

.field private static final MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING:I = 0x5

.field private static final MSG_ENABLE_GMS_NETWORK:I = 0x3

.field private static final MSG_ENABLE_GMS_NETWORK_BY_CHARGING:I = 0x4

.field private static final MSG_INSERT_LOG:I = 0x6

.field private static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field private static final SCREEN_ON_ALARM_DELAY:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "GmsAlarmManager"

.field private static final TIME_DELAY:J = 0x2710L

.field private static final TIME_DELAY_AFTER_SETUPWIZARD_COMPLETE:J = 0x3e8L

.field private static final TIME_DELAY_INSERT_LOG:J = 0x5265c00L

.field private static final TIME_OUT_DELAY:J = 0x1d4c0L

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field static sb:Ljava/lang/StringBuilder;


# instance fields
.field private avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private cm:Landroid/net/ConnectivityManager;

.field deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

.field private isCharging:Z

.field private isChinaMode:Z

.field private isGmsNetWorkLimt:Z

.field private isSetupWizardCompleteOrBootComplete:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmService:Lcom/android/server/AlarmManagerService;

.field private mBatteryCharingReceiver:Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;

.field private mBigdataEnable:Z

.field private mConfigupdaterUid:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGmsPkgUid:I

.field private mGoogleNetWork:Z

.field private mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

.field private mInsertLogIntent:Landroid/content/Intent;

.field private mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mScreenOffChange:Z

.field private mScreenOn:Z

.field private mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

.field private mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

.field private mTimeoutcount:I

.field private mVendingUid:I

.field private mWaitCheckNetWork:Z

.field private noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;


# direct methods
.method static synthetic -get0(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/GmsAlarmManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GmsAlarmManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/GmsAlarmManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/GmsAlarmManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/GmsAlarmManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsDozeWhiteList(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/GmsAlarmManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSimOrNoSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->bigData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/GmsAlarmManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/GmsAlarmManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/GmsAlarmManager;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/GmsAlarmManager;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    iput v4, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    iput v4, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    iput-boolean v5, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v5, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    iput-boolean v5, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    new-instance v2, Lcom/android/server/GmsAlarmManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/GmsAlarmManager$1;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    :try_start_50
    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const-string/jumbo v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    const-string/jumbo v2, "com.google.android.configupdater"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GMS_PACKAGE_UID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_8a} :catch_8b

    :goto_8a
    return-void

    :catch_8b
    move-exception v0

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method private bigData(J)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"GMST\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get1(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"GMSC\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get0(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"NGMST\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get1(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"NGMSC\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get0(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"VPNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get1(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"VPNC\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->-get0(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAlarm()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    return-void
.end method

.method private checkActiveNet()Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    :cond_11
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    return v1

    :cond_3f
    const/4 v1, 0x0

    return v1
.end method

.method private checkGoogleNetwork(Ljava/lang/String;I)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v6, "GmsAlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkGoogleNetwork :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_1d
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    const/16 v6, 0xbb8

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v6, 0xbb8

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v6, "HEAD"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string/jumbo v6, "GmsAlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkGoogleNetwork :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x9d0c

    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_68} :catch_76
    .catchall {:try_start_1d .. :try_end_68} :catchall_ba

    if-ne v4, p2, :cond_70

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6f
    return v9

    :cond_70
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_75
    :goto_75
    return v10

    :catch_76
    move-exception v3

    :try_start_77
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isVPNConnected()Z

    move-result v6

    if-eqz v6, :cond_c1

    iget v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const-string/jumbo v6, "GmsAlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkGoogleNetwork timeout count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_b6

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const/4 v7, 0x1

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_b0
    .catchall {:try_start_77 .. :try_end_b0} :catchall_ba

    :goto_b0
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_75

    :cond_b6
    const/4 v6, 0x0

    :try_start_b7
    iput v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_ba

    goto :goto_b0

    :catchall_ba
    move-exception v6

    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c0
    throw v6

    :cond_c1
    const/4 v6, 0x0

    :try_start_c2
    iput v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_ba

    goto :goto_b0
.end method

.method private dumpNetStats(J)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "Since last 24 hours\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Total time and # of event Google access is available   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Total time and # of event Google access is not possible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Total time and # of event VPN is connected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdleService()Lcom/android/server/DeviceIdleController$LocalService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    :cond_e
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method private getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_18
    .catchall {:try_start_8 .. :try_end_13} :catchall_20

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catch_18
    move-exception v2

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_13

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    :cond_13
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v2, :cond_39

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1d

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_39
    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "app_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isChn()Z
    .registers 3

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method private isChnSimOrNoSim()Z
    .registers 7

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccid ---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2f

    return v5

    :cond_2f
    const-string/jumbo v2, "8986"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string/jumbo v2, "8985"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_41
    return v5

    :cond_42
    const/4 v2, 0x0

    return v2
.end method

.method private isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 6

    if-eqz p1, :cond_31

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2c

    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_31

    const-string/jumbo v2, "com.google.android.gms.gcm."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2a
    const/4 v2, 0x1

    return v2

    :cond_2c
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_31
    const/4 v2, 0x0

    return v2
.end method

.method private isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 8

    const/4 v5, 0x1

    if-eqz p1, :cond_64

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_47

    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_4c

    const-string/jumbo v3, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "com.google.android.gms.matchstick.register_intent_action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_46
    return v5

    :cond_47
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_4c
    if-nez v2, :cond_5f

    const/4 v0, 0x0

    :goto_4f
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    return v5

    :cond_5f
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_4f

    :cond_64
    const/4 v3, 0x0

    return v3
.end method

.method private isVPNConnected()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    return v2

    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method private isWifiConnected()Z
    .registers 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_17

    return v4

    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method private restoreGcmAlarm()V
    .registers 11

    const-wide/16 v8, 0x2710

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    const-string/jumbo v6, "com.google.android.gms"

    const-string/jumbo v7, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/AlarmManagerService;->getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_4a

    add-long v6, v0, v8

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :goto_24
    add-long v6, v4, v8

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    const-string/jumbo v3, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreGcmAlarm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService;->addAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    return-void

    :cond_4a
    add-long v6, v4, v8

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_24
.end method

.method private sendCheckNetWorkDelay(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_29
    return-void
.end method

.method private sendInsertLogDelay(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_26
    return-void
.end method

.method private setGMSLocationProviderChangeReceiverState(I)V
    .registers 8

    :try_start_0
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.google.android.gms"

    const-string/jumbo v4, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string/jumbo v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGMSLocationProviderChangeReceiverState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method private setGmsDozeWhiteList(Z)V
    .registers 6

    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGmsDozeWhiteList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v1, :cond_2e

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getDeviceIdleService()Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "failed to get deviceIdleService instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_41

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->removeSystemPowerSaveWhiteList(Ljava/util/ArrayList;)V

    :goto_40
    return-void

    :cond_41
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->addSystemPowerSaveWhiteList(Ljava/util/ArrayList;)V

    goto :goto_40
.end method

.method private setGmsNetWorkAllow(Z)V
    .registers 7

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGmsNetworkAllow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_2e

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "GmsAlarmManager"

    const-string/jumbo v3, "failed to get NetworkManagementService instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4a} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_4a} :catch_4b

    :goto_4a
    return-void

    :catch_4b
    move-exception v1

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :catch_67
    move-exception v0

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method


# virtual methods
.method public doDump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "  <GmsAlarmManager>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_12d

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deviceIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/GmsAlarmManager;->dumpNetStats(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12d
    return-void
.end method

.method public init(Lcom/android/server/AlarmManagerService;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v1, :cond_ae

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ae

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "GmsAlarmManager"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/GmsAlarmManager$GmsHandler;

    sget-object v2, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    new-instance v1, Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v1, :cond_43

    new-instance v1, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    :cond_43
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.server.action_insert_log"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v4, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    iput-boolean v4, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.server.action_check_gms_network"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.server.action_insert_log"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$NetWorkStats;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$NetWorkStats;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$NetWorkStats;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    :cond_ae
    return-void
.end method

.method public initGmsState()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    :cond_b
    return-void
.end method

.method maxTriggerTime(JJJ)J
    .registers 14

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_17

    sub-long v0, p3, p1

    :goto_8
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    const-wide/16 v0, 0x0

    :cond_10
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2

    :cond_17
    move-wide v0, p5

    goto :goto_8
.end method

.method public parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v3, ""

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_8
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v2, 0x0

    :goto_d
    array-length v5, v0

    if-ge v2, v5, :cond_28

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "GmsAlarmManager"

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_3e

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_52

    :cond_3e
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_52
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_52
.end method

.method public schedulingGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_e

    :cond_d
    return-void

    :cond_e
    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/GmsAlarmManager;->isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/16 v2, 0xc

    :goto_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v3, :cond_ae

    const-string/jumbo v3, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "schedulingGmsAlarms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_7b

    move-wide v14, v10

    :goto_5c
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v6, v14

    int-to-long v8, v2

    const-wide/32 v16, 0x36ee80

    mul-long v8, v8, v16

    cmp-long v3, v6, v8

    if-lez v3, :cond_7d

    return-void

    :cond_6c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/GmsAlarmManager;->isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const/4 v2, 0x6

    goto :goto_2a

    :cond_7a
    return-void

    :cond_7b
    move-wide v14, v4

    goto :goto_5c

    :cond_7d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_af

    int-to-long v6, v2

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :goto_92
    int-to-long v6, v2

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_be

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :goto_aa
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    :cond_ae
    return-void

    :cond_af
    int-to-long v6, v2

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_92

    :cond_be
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_d3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v12, v6, v8

    goto :goto_aa

    :cond_d3
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/GmsAlarmManager;->maxTriggerTime(JJJ)J

    move-result-wide v12

    goto :goto_aa
.end method

.method public setUrlFirewallRule(ZLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_14

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "GmsAlarmManager"

    const-string/jumbo v4, "failed to get NetworkManagementService instance"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v3, v4, v1, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v3, v4, v1, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_18

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    return-void
.end method

.method public skipGmsAlarms(Landroid/app/PendingIntent;)Z
    .registers 6

    if-eqz p1, :cond_2c

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.gms.checkin.CheckinServiceReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    return v2

    :cond_27
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_16

    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public skipGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/GmsAlarmManager;->skipGmsAlarms(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method
