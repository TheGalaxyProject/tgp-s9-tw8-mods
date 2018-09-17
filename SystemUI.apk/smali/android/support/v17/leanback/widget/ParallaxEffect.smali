.class public abstract Landroid/support/v17/leanback/widget/ParallaxEffect;
.super Ljava/lang/Object;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;,
        Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;
    }
.end annotation


# instance fields
.field final mMarkerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation
.end field

.field final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation
.end field

.field final mTotalWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method abstract calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
.end method

.method abstract calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
.end method

.method final getFractionWithWeightAdjusted(FI)F
    .registers 8

    const/4 v4, 0x2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_54

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_55

    const/4 v1, 0x1

    :goto_1b
    if-eqz v1, :cond_57

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    div-float p1, v2, v0

    if-lt p2, v4, :cond_54

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    add-int/lit8 v3, p2, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    :cond_54
    :goto_54
    return p1

    :cond_55
    const/4 v1, 0x0

    goto :goto_1b

    :cond_57
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v0, v2

    div-float/2addr p1, v0

    if-lt p2, v4, :cond_54

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    goto :goto_54
.end method

.method public final performMapping(Landroid/support/v17/leanback/widget/Parallax;)V
    .registers 9

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_a

    return-void

    :cond_a
    instance-of v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;

    if-eqz v5, :cond_37

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyIntProperties()V

    :goto_11
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_15
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_46

    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ParallaxTarget;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v5

    if-eqz v5, :cond_3b

    if-nez v0, :cond_31

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v0

    :cond_31
    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_37
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyFloatProperties()V

    goto :goto_11

    :cond_3b
    if-nez v2, :cond_42

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v1

    :cond_42
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ParallaxTarget;->update(F)V

    goto :goto_34

    :cond_46
    return-void
.end method
