.class final Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;
.super Landroid/support/v17/leanback/widget/ParallaxEffect;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntEffect"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Must use two marker values for direct mapping"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    if-eq v5, v4, :cond_37

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Marker value must use same Property for direct mapping"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_37
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v3

    if-le v2, v3, :cond_54

    move v1, v3

    move v3, v2

    move v2, v1

    :cond_54
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_70
    :goto_70
    return-object v0

    :cond_71
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, v3, :cond_70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_70
.end method

.method calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
    .registers 14

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_6
    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_80

    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v3

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v8

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v0

    if-nez v2, :cond_2e

    if-lt v0, v8, :cond_7a

    const/4 v9, 0x0

    return v9

    :cond_2e
    if-ne v5, v3, :cond_3b

    if-ge v6, v8, :cond_3b

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "marker value of same variable must be descendant order"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3b
    const v9, 0x7fffffff

    if-ne v0, v9, :cond_4e

    sub-int v9, v6, v7

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    div-float v1, v9, v10

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_4e
    if-lt v0, v8, :cond_7a

    if-ne v5, v3, :cond_5f

    sub-int v9, v6, v0

    int-to-float v9, v9

    sub-int v10, v6, v8

    int-to-float v10, v10

    div-float v1, v9, v10

    :goto_5a
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_5f
    const/high16 v9, -0x80000000

    if-eq v7, v9, :cond_6f

    sub-int v9, v0, v7

    add-int/2addr v6, v9

    sub-int v9, v6, v0

    int-to-float v9, v9

    sub-int v10, v6, v8

    int-to-float v10, v10

    div-float v1, v9, v10

    goto :goto_5a

    :cond_6f
    sub-int v9, v0, v8

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    div-float/2addr v9, v10

    sub-float v1, v11, v9

    goto :goto_5a

    :cond_7a
    move v7, v0

    move v5, v3

    move v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_80
    return v11
.end method
