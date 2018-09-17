.class public Lcom/android/systemui/classifier/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public timeOffsetNano:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    iput-wide p3, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .registers 7

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/android/systemui/classifier/Point;->x:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dist(Lcom/android/systemui/classifier/Point;)F
    .registers 6

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .registers 7

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/android/systemui/classifier/Point;->x:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/android/systemui/classifier/Point;->y:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Lcom/android/systemui/classifier/Point;)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iget v2, p1, Lcom/android/systemui/classifier/Point;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12

    iget v1, p0, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p1, Lcom/android/systemui/classifier/Point;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .registers 13

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v3

    invoke-virtual {p0, p2}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v4

    cmpl-float v6, v3, v7

    if-eqz v6, :cond_11

    cmpl-float v6, v4, v7

    if-nez v6, :cond_12

    :cond_11
    return v7

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v5

    div-float v6, v5, v3

    div-float/2addr v6, v4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v0, v6

    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3b

    const v6, 0x40c90fdb

    sub-float v0, v6, v0

    :cond_3b
    return v0
.end method
