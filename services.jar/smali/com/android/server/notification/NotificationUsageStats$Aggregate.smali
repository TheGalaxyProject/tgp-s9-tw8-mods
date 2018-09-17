.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field avg:D

.field numSamples:J

.field sum2:D

.field var:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .registers 14

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    long-to-double v4, v6

    long-to-double v6, p1

    iget-wide v8, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    sub-double v0, v6, v8

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v4

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v4, v8

    div-double/2addr v8, v4

    mul-double/2addr v8, v0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_34

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_2e
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    div-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    return-void

    :cond_34
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v6

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Aggregate{numSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", var="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
