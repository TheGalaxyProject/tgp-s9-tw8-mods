.class public Lcom/android/systemui/interpolator/BounceEaseOut;
.super Landroid/view/animation/BaseInterpolator;
.source "BounceEaseOut.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private out(F)F
    .registers 8

    const-wide v4, 0x401e400000000000L    # 7.5625

    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    const/high16 v0, 0x40f20000    # 7.5625f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_14
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2e

    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-double/2addr v0, v4

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_2e
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_48

    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-double/2addr v0, v4

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fee000000000000L    # 0.9375

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_48
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-double/2addr v0, v4

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x3fef800000000000L    # 0.984375

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/interpolator/BounceEaseOut;->out(F)F

    move-result v0

    return v0
.end method
