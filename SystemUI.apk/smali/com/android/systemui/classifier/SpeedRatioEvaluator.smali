.class public Lcom/android/systemui/classifier/SpeedRatioEvaluator;
.super Ljava/lang/Object;
.source "SpeedRatioEvaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .registers 8

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_9

    return v2

    :cond_9
    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_12
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1a

    add-float/2addr v0, v6

    :cond_1a
    float-to-double v2, p0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_22

    add-float/2addr v0, v6

    :cond_22
    float-to-double v2, p0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2a

    add-float/2addr v0, v6

    :cond_2a
    return v0
.end method
