.class public Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private mAverageNear:F

.field private mGestureStartTimeNano:J

.field private mNear:Z

.field private mNearDuration:J

.field private mNearStartTimeNano:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    return-void
.end method

.method private update(ZJ)V
    .registers 8

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_13
    if-eqz p1, :cond_17

    iput-wide p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    :cond_17
    iput-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .registers 3

    iget v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    invoke-static {v0, p1}, Lcom/android/systemui/classifier/ProximityEvaluator;->evaluate(FI)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "PROX"

    return-object v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1f

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    :cond_1f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 12

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    iput-wide v8, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_16
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    :cond_1c
    iget-boolean v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    sub-long v2, v4, v6

    cmp-long v1, v2, v8

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v1, :cond_3a

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_37
    iput v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    :cond_39
    :goto_39
    return-void

    :cond_3a
    const/4 v1, 0x0

    goto :goto_37

    :cond_3c
    iget-wide v4, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    long-to-float v1, v4

    long-to-float v4, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    goto :goto_39
.end method
