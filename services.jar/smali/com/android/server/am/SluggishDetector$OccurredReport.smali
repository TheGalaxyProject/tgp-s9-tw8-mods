.class final Lcom/android/server/am/SluggishDetector$OccurredReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OccurredReport"
.end annotation


# static fields
.field private static DETECT_OVER_TIME:I = 0x0

.field private static final MAXIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0xa

.field private static final MAXIMUM_QUEUE_COUNT_FOR_OCCURRED:I = 0x64

.field private static final MINIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->clear()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

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

    const-class v1, Lcom/android/server/am/SluggishDetector$OccurredReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()Z
    .registers 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static checkSluggish(JJ)Z
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_10

    sget v1, Lcom/android/server/am/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    cmp-long v1, p0, v2

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private static clear()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_9
    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap6(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->clear()V

    if-eqz p0, :cond_b

    const-string/jumbo v0, "CLEAR SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private static detectedSluggish(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 6

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get14(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap0(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v0, Lcom/android/server/am/SluggishDetector$DetectInfo;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1, v4}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap2(ILjava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4

    if-nez p0, :cond_b

    sget-object v1, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - pw is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "SLUGGISH DETECTOR - OCCURRED REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_occurred)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v1, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap7(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "END OF SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    sget-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static init()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    :cond_c
    return-void
.end method

.method private static step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 21

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->check()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->init()V

    :cond_9
    sget-object v2, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get14(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap3(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v2

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->checkSluggish(JJ)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->detectedSluggish(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    :cond_22
    sget-object v2, Lcom/android/server/am/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get14(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v4

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get11(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get15(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get5(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get16(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v13

    const/16 v14, 0x64

    const/16 v15, 0xa

    const/16 v16, 0x5

    invoke-static/range {v2 .. v16}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap5(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V

    return-void
.end method
