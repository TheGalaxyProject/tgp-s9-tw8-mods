.class public Lcom/android/systemui/classifier/LengthCountEvaluator;
.super Ljava/lang/Object;
.source "LengthCountEvaluator.java"


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

    const-wide v4, 0x3fb70a3d70a3d70aL    # 0.09

    cmpg-double v1, v2, v4

    if-gez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_f
    float-to-double v2, p0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1a

    add-float/2addr v0, v6

    :cond_1a
    float-to-double v2, p0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v1, v2, v4

    if-gez v1, :cond_25

    add-float/2addr v0, v6

    :cond_25
    float-to-double v2, p0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_30

    add-float/2addr v0, v6

    :cond_30
    float-to-double v2, p0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3b

    add-float/2addr v0, v6

    :cond_3b
    float-to-double v2, p0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_46

    add-float/2addr v0, v6

    :cond_46
    return v0
.end method
