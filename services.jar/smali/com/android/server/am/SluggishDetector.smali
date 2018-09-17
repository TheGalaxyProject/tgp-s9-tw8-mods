.class Lcom/android/server/am/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$AgingDataQueue;,
        Lcom/android/server/am/SluggishDetector$DetectInfo;,
        Lcom/android/server/am/SluggishDetector$IoInfo;,
        Lcom/android/server/am/SluggishDetector$MemoryInfo;,
        Lcom/android/server/am/SluggishDetector$NetworkInfo;,
        Lcom/android/server/am/SluggishDetector$OccurredReport;,
        Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;,
        Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;,
        Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$SetLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$SettingInfo;,
        Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;,
        Lcom/android/server/am/SluggishDetector$SystemPropertyInfo;,
        Lcom/android/server/am/SluggishDetector$ThroughputInfo;
    }
.end annotation


# static fields
.field private static final BIGDATA_ENABLE:Z

.field private static final DATA_FORMAT:Ljava/lang/String; = "[shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

.field private static final DEBUG:Z = false

.field public static final ENABLE:Z

.field private static final SecProductFeature:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_NAME:Ljava/lang/String; = "1.2.0"


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/am/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector;->BIGDATA_ENABLE:Z

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->BIGDATA_ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap3()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap3()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap3()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap0()V

    :cond_29
    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap0()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap0()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap0()V

    if-eqz p0, :cond_11

    const-string/jumbo v0, "CLEAR SLUGGISH DETECTOR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_18

    if-nez p0, :cond_f

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap1(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap1(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap1(Ljava/io/PrintWriter;)V

    :cond_18
    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_8

    if-nez p1, :cond_11

    :cond_8
    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string/jumbo v0, "slgdetect_occurred"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-string/jumbo v0, "slgdetect_periodic_launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2b
    const-string/jumbo v0, "slgdetect_periodic_memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1d

    :cond_38
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1d
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    :try_start_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_13
    move-exception v1

    :goto_14
    return-object v6

    :cond_15
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    return-object v4

    :catch_22
    move-exception v2

    goto :goto_14
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1a

    return-object v0

    :catch_15
    move-exception v2

    :goto_16
    const/4 v6, 0x0

    return-object v6

    :catch_18
    move-exception v3

    goto :goto_16

    :catch_1a
    move-exception v4

    goto :goto_16
.end method

.method static reportLaunch(Lcom/android/server/am/ActivityRecord;J)V
    .registers 16

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_33

    if-eqz p0, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_c

    :try_start_15
    new-instance v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v8, v4, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    const/4 v10, 0x0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap2(ILjava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v11

    goto :goto_33
.end method

.method static setLaunch(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_1c

    if-eqz p0, :cond_a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v2, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    new-instance v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;ILcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap2(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method
