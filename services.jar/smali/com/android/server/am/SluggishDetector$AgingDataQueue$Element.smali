.class Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$AgingDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAverageAfterSlgInfoData:Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:Ljava/lang/String;

.field private mAverageIoInfoData:Ljava/lang/String;

.field private mAverageLaunchTime:J

.field private mAveragePss:J

.field private mAverageSwapPss:J

.field private mAverageThroughputInfoData:Ljava/lang/String;

.field private mBeforeSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIoInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeStandardDeviation:D

.field private mPssList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPssSlope:D

.field private mRunCount:J

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapUsedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThroughputInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJII)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshPssSlope()V

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

    const-class v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 8

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private add(JJII)V
    .registers 12

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_9
    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    invoke-direct {p0, p6}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshPss(I)V

    return-void
.end method

.method private add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 20

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_9
    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    move/from16 v0, p11

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    move/from16 v0, p11

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    move/from16 v0, p11

    invoke-direct {p0, v2, p5, p6, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    move/from16 v0, p11

    invoke-direct {p0, v2, p7, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    move/from16 v0, p11

    invoke-direct {p0, v2, p8, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v0, p9

    move/from16 v1, p11

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(I)V

    return-void
.end method

.method private add(Ljava/util/LinkedList;JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p4, :cond_13

    :goto_9
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p4, :cond_13

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_9

    :cond_13
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private checkStatus()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method private getAverage(Ljava/util/LinkedList;I)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;I)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_2a

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v5, p2, :cond_2a

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_12

    :cond_24
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-long v6, v5

    div-long/2addr v0, v6

    :cond_2a
    return-wide v0
.end method

.method private getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;I)",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v3, p2, :cond_2d

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-wrap0(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->-wrap1(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V

    :cond_2d
    return-object v0
.end method

.method private getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;I)",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_61

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    move/from16 v0, p2

    if-lt v3, v0, :cond_61

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x0

    aget-wide v14, v3, v13

    add-long/2addr v4, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x1

    aget-wide v14, v3, v13

    add-long/2addr v6, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x2

    aget-wide v14, v3, v13

    add-long/2addr v8, v14

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    const/4 v13, 0x0

    aget v3, v3, v13

    add-int/2addr v10, v3

    iget-object v3, v2, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    const/4 v13, 0x1

    aget v3, v3, v13

    add-int/2addr v11, v3

    goto :goto_1a

    :cond_45
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v4, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v6, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    int-to-long v14, v3

    div-long/2addr v8, v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v10, v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v11, v3

    :cond_61
    new-instance v3, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-direct/range {v3 .. v11}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;-><init>(JJJII)V

    return-object v3
.end method

.method private getAverageForThroughputInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;I)",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v3, p2, :cond_2d

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->-wrap0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->-wrap2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    :cond_2d
    return-object v0
.end method

.method private getStandardDeviation(Ljava/util/LinkedList;JI)D
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)D"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-lez v12, :cond_49

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v12

    move/from16 v0, p4

    if-lt v12, v0, :cond_49

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v8, v10, p2

    mul-long v12, v8, v8

    add-long/2addr v2, v12

    goto :goto_16

    :cond_2c
    long-to-double v12, v2

    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_40} :catch_4a

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double v6, v12, v14

    :cond_49
    :goto_49
    return-wide v6

    :catch_4a
    move-exception v4

    goto :goto_49
.end method

.method private init()V
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    return-void
.end method

.method private refresh(I)V
    .registers 16

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_9
    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v4

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v6

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v8

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v2

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForThroughputInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v3

    iget-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v12, v4, v5, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getStandardDeviation(Ljava/util/LinkedList;JI)D

    move-result-wide v10

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    iput-wide v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    const-wide/16 v12, 0x400

    div-long v12, v8, v12

    iput-wide v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v1}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    iput-wide v10, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    return-void
.end method

.method private refreshPss(I)V
    .registers 10

    const-wide/16 v6, 0x400

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_b
    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v2

    div-long v4, v0, v6

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    div-long v4, v2, v6

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    return-void
.end method

.method private refreshPssSlope()V
    .registers 13

    const-wide/16 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_a
    if-lez v4, :cond_4a

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v2, v8, v10

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v0, v8, v10

    sub-long v8, v2, v0

    add-long/2addr v6, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_4a
    long-to-double v8, v6

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    return-void
.end method

.method private toDumpString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
