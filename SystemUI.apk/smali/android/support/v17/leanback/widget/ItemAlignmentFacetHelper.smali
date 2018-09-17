.class Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .registers 11

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v2, p0

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v3, :cond_19

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_19

    move-object v2, p0

    :cond_19
    iget v0, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-nez p2, :cond_c7

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7c

    if-ne v2, p0, :cond_66

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_2a
    sub-int v0, v3, v0

    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_3b

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_6b

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_3b
    :goto_3b
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4e

    if-ne v2, p0, :cond_77

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_47
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v0, v3

    :cond_4e
    if-eq p0, v2, :cond_65

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->right:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRightInset()I

    move-result v4

    add-int v0, v3, v4

    :cond_65
    :goto_65
    return v0

    :cond_66
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2a

    :cond_6b
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3b

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3b

    :cond_77
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_47

    :cond_7c
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_8b

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_b6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    :cond_8b
    :goto_8b
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_9e

    if-ne v2, p0, :cond_c2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_97
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    :cond_9e
    if-eq p0, v2, :cond_65

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result v4

    sub-int v0, v3, v4

    goto :goto_65

    :cond_b6
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8b

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_8b

    :cond_c2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_97

    :cond_c7
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_d6

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_10d

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    :cond_d6
    :goto_d6
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_e9

    if-ne v2, p0, :cond_119

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v3

    :goto_e2
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    :cond_e9
    if-eq p0, v2, :cond_100

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    check-cast p0, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result v4

    sub-int v0, v3, v4

    :cond_100
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_65

    :cond_10d
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_d6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_d6

    :cond_119
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_e2
.end method
