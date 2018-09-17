.class final Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$ThroughputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfoElement"
.end annotation


# instance fields
.field private rx_bytes:J

.field private time:J

.field private tx_bytes:J


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-wide p1
.end method

.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rx_bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tx_bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
