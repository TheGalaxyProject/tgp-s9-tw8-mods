.class public Lcom/android/settings/datausage/DataUsageInfoController;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J
    .registers 6

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_a
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    :cond_12
    return-wide v0
.end method

.method public updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V
    .registers 7

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_11
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    :cond_1b
    return-void
.end method
