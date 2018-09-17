.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
.super Ljava/lang/Object;
.source "PowerUsageAdvanced.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerUsageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData$UsageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
        ">;"
    }
.end annotation


# instance fields
.field public percentage:D

.field public summary:Ljava/lang/CharSequence;

.field public titleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public totalPowerMah:D

.field public totalUsageTimeMs:J

.field public usageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field public usageType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->getTitleResId(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->titleResId:I

    iput-wide p2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    return-void
.end method

.method private getTitleResId(I)I
    .registers 3

    packed-switch p1, :pswitch_data_2c

    const v0, 0x7f1214c4

    return v0

    :pswitch_7
    const v0, 0x7f1214ec

    return v0

    :pswitch_b
    const v0, 0x7f1214c7

    return v0

    :pswitch_f
    const v0, 0x7f1214e2

    return v0

    :pswitch_13
    const v0, 0x7f1214c5

    return v0

    :pswitch_17
    const v0, 0x7f1214eb

    return v0

    :pswitch_1b
    const v0, 0x7f1214d0

    return v0

    :pswitch_1f
    const v0, 0x7f1214e3

    return v0

    :pswitch_23
    const v0, 0x7f1214d4

    return v0

    :pswitch_27
    const v0, 0x7f120178

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)I
    .registers 8
    .param p1    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    sub-int v0, v1, v2

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->compareTo(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)I

    move-result v0

    return v0
.end method
