.class public Lcom/android/settings/fuelgauge/BatteryCellParser;
.super Ljava/lang/Object;
.source "BatteryCellParser.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# instance fields
.field private final mData:Landroid/util/SparseIntArray;

.field private mLastTime:J

.field private mLastValue:I

.field private mLength:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    return-void
.end method

.method private getColor(I)I
    .registers 3

    sget-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .registers 5

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    return-object v1
.end method

.method public getPeriod()J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    return-wide v0
.end method

.method protected getValue(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v1, v1, 0x1c0

    shr-int/lit8 v1, v1, 0x6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    goto :goto_a

    :cond_14
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v1, v1, 0x38

    shr-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    goto :goto_a
.end method

.method public hasData()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onDataGap()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    :cond_f
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .registers 7

    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getValue(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    :cond_10
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    return-void
.end method

.method public onParsingDone()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    :cond_f
    return-void
.end method

.method public onParsingStarted(JJ)V
    .registers 8

    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    return-void
.end method
