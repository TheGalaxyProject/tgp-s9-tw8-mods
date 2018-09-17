.class public Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_c
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_15
    return-void
.end method

.method public static applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .registers 9

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_30

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v4, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v6

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    :cond_18
    :goto_18
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v3, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-static {v5, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v1, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v6

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_18

    :cond_3d
    if-eqz v0, :cond_2f

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v2, p1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v2, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    goto :goto_2f
.end method

.method public static applyInverseDssToConfiguration(Landroid/content/res/Configuration;F)V
    .registers 5

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    div-float v1, v2, p1

    invoke-static {v0, v1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_10
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    div-float v1, v2, p1

    invoke-static {v0, v1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_1b
    return-void
.end method

.method public static applyInverseDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .registers 10

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_36

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    div-float v6, v7, p1

    invoke-static {v4, v6}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v6

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v3, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_45

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    div-float v6, v7, p1

    invoke-static {v5, v6}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    div-float v6, v7, p1

    invoke-static {v1, v6}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v6

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1c

    :cond_45
    if-eqz v0, :cond_35

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    div-float v5, v7, p1

    invoke-static {v2, v5}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v2, v5, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    goto :goto_35
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .registers 7

    const/high16 v4, 0x3f000000    # 0.5f

    iget v2, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static scaleDpiValue(IF)I
    .registers 4

    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
