.class public Lcom/android/systemui/classifier/SpeedEvaluator;
.super Ljava/lang/Object;
.source "SpeedEvaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .registers 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_c
    float-to-double v2, p0

    const-wide v4, 0x400199999999999aL    # 2.2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_17

    add-float/2addr v0, v6

    :cond_17
    float-to-double v2, p0

    const-wide v4, 0x4041800000000000L    # 35.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_22

    add-float/2addr v0, v6

    :cond_22
    float-to-double v2, p0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2a

    add-float/2addr v0, v6

    :cond_2a
    return v0
.end method
