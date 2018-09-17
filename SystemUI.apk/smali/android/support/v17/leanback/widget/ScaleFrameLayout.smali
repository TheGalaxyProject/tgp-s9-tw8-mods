.class public Landroid/support/v17/leanback/widget/ScaleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleFrameLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mChildScale:F

.field private mLayoutScaleX:F

.field private mLayoutScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    return-void
.end method

.method private static getScaledMeasureSpec(IF)I
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    :goto_6
    return p0

    :cond_7
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_6
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_10
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutDirection()I

    move-result v10

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_119

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v21

    sub-float v16, v20, v21

    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_11f

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v21, v16, v21

    sub-float v21, v16, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v13, v20, v21

    sub-int v20, p4, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v16

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    :goto_64
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_12d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v21, v17, v21

    sub-float v21, v17, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v15, v20, v21

    sub-int v20, p5, p3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v17

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    sub-int v12, v20, v21

    :goto_af
    const/4 v9, 0x0

    :goto_b0
    if-ge v9, v6, :cond_17f

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_116

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_dd

    const v7, 0x800033

    :cond_dd
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v18, v7, 0x70

    and-int/lit8 v20, v2, 0x7

    sparse-switch v20, :sswitch_data_180

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v4, v13, v20

    :goto_ee
    sparse-switch v18, :sswitch_data_18a

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    :goto_f7
    add-int v20, v4, v19

    add-int v21, v5, v8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    int-to-float v0, v4

    move/from16 v20, v0

    sub-float v20, v16, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v5

    move/from16 v20, v0

    sub-float v20, v17, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_116
    add-int/lit8 v9, v9, 0x1

    goto :goto_b0

    :cond_119
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v16

    goto/16 :goto_1d

    :cond_11f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v13

    sub-int v20, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    goto/16 :goto_64

    :cond_12d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v15

    sub-int v20, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    sub-int v12, v20, v21

    goto/16 :goto_af

    :sswitch_13b
    sub-int v20, v14, v13

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    goto :goto_ee

    :sswitch_150
    sub-int v20, v14, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    goto :goto_ee

    :sswitch_159
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    goto :goto_f7

    :sswitch_160
    sub-int v20, v12, v15

    sub-int v20, v20, v8

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    goto :goto_f7

    :sswitch_175
    sub-int v20, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    goto/16 :goto_f7

    :cond_17f
    return-void

    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_13b
        0x5 -> :sswitch_150
    .end sparse-switch

    :sswitch_data_18a
    .sparse-switch
        0x10 -> :sswitch_160
        0x30 -> :sswitch_159
        0x50 -> :sswitch_175
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_37

    :cond_10
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    invoke-static {p2, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setMeasuredDimension(II)V

    :goto_36
    return-void

    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_36
.end method

.method public setChildScale(F)V
    .registers 4

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_20

    iput p1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLayoutScaleY(F)V
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->requestLayout()V

    :cond_b
    return-void
.end method
