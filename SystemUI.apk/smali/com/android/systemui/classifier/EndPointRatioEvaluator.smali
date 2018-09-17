.class public Lcom/android/systemui/classifier/EndPointRatioEvaluator;
.super Ljava/lang/Object;
.source "EndPointRatioEvaluator.java"


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

    const-wide v4, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v2, v4

    if-gez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_f
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v2, v4

    if-gez v1, :cond_17

    add-float/2addr v0, v6

    :cond_17
    float-to-double v2, p0

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v1, v2, v4

    if-gez v1, :cond_22

    add-float/2addr v0, v6

    :cond_22
    float-to-double v2, p0

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2d

    add-float/2addr v0, v6

    :cond_2d
    float-to-double v2, p0

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v1, v2, v4

    if-gez v1, :cond_38

    add-float/2addr v0, v6

    :cond_38
    float-to-double v2, p0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v2, v4

    if-gez v1, :cond_43

    add-float/2addr v0, v6

    :cond_43
    return v0
.end method
