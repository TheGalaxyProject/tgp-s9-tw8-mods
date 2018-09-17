.class final Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportLaunchInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isReady:Z


# instance fields
.field private isRefreshedForReport:Z

.field private mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mContext:Landroid/content/Context;

.field private mCurTime:J

.field private mInstalledPackageCount:I

.field private mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

.field private mLastPss:J

.field private mLastSwapPss:J

.field private mLaunchTime:J

.field private mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

.field private mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

.field private mPerformanceMode:I

.field private mPid:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUptime:J


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    return-wide v0
.end method

.method static synthetic -get16(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refreshForOccurredReport()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refreshForReport()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .registers 16

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    iput v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    iput v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    iput-object p3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    const-class v0, Lcom/android/server/am/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_58
    sput-boolean v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5c

    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJ)V

    return-void
.end method

.method private refresh()V
    .registers 9

    const/4 v3, 0x1

    :try_start_1
    new-array v1, v3, [J

    const/4 v3, 0x1

    new-array v2, v3, [J

    iget v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-static {v3, v1, v2}, Landroid/os/Debug;->getPssSwapPss(I[J[J)V

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_45

    :goto_19
    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get4(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$IoInfo;->-wrap0()Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get2(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-wrap2(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get5(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->-get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-void

    :catch_45
    move-exception v0

    goto :goto_19
.end method

.method private refreshForOccurredReport()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$SettingInfo;->-wrap0(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->-wrap3(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->-wrap2(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$SettingInfo;->-wrap4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SystemPropertyInfo;->-wrap0()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    return-void
.end method

.method private refreshForReport()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->-wrap1(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->-wrap1()Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$MemoryInfo;->-wrap0()Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    :cond_22
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .registers 8

    const-class v1, Lcom/android/server/am/SluggishDetector;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3c

    monitor-exit v1

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_3b

    if-eqz p1, :cond_3b

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get3(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get3(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3b

    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refresh()V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_3f

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_3f
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLaunchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPowerSavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mBeforeSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAfterSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPerformanceMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mResolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIoInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mThroughputInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUptime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mUptime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInstalledPackageCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mMeminfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mMeminfoExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
