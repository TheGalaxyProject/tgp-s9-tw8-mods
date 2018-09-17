.class public final Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "KeyboardShortcutKeysLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHorizontalVerticalSpacing()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private isRTL()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private layoutChildrenOnRow(IIIIII)V
    .registers 14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, p3

    sub-int/2addr v5, p4

    add-int p4, v5, p6

    :cond_e
    move v2, p1

    :goto_f
    if-ge v2, p2, :cond_5f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_33

    if-ne v2, p1, :cond_33

    sub-int v5, p3, p4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int p4, v5, v6

    :cond_33
    add-int v5, p4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p5

    invoke-virtual {v0, p4, p5, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_5a

    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_58

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :goto_51
    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v5, v4

    sub-int/2addr p4, v5

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_58
    const/4 v4, 0x0

    goto :goto_51

    :cond_5a
    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v5, v1

    add-int/2addr p4, v5

    goto :goto_55

    :cond_5f
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v10

    sub-int v4, p4, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v4, v1

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v10, :cond_8f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-eq v1, v8, :cond_6f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v1

    sub-int v1, v5, v1

    sub-int v1, v1, v17

    if-gez v1, :cond_77

    const/4 v15, 0x1

    :goto_44
    if-eqz v15, :cond_5d

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v4, v1

    :goto_57
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    add-int/2addr v6, v1

    move v2, v3

    :cond_5d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_86

    sub-int v1, v5, v17

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int v5, v1, v8

    :goto_6b
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_12

    :cond_77
    const/4 v15, 0x0

    goto :goto_44

    :cond_79
    add-int v1, v5, v17

    if-le v1, v4, :cond_7f

    const/4 v15, 0x1

    goto :goto_44

    :cond_7f
    const/4 v15, 0x0

    goto :goto_44

    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_57

    :cond_86
    add-int v1, v5, v17

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int v5, v1, v8

    goto :goto_6b

    :cond_8f
    if-ge v2, v10, :cond_9b

    move-object/from16 v8, p0

    move v9, v2

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    :cond_9b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_76

    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_39
    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v1, :cond_7d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_73

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    add-int/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v11, v9, v3

    if-le v11, v8, :cond_6f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v10, v7

    :cond_6f
    iget v11, v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v11, v3

    add-int/2addr v9, v11

    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_76
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_39

    :cond_7d
    iput v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_8b

    add-int v4, v10, v7

    :cond_87
    :goto_87
    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->setMeasuredDimension(II)V

    return-void

    :cond_8b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_87

    add-int v11, v10, v7

    if-ge v11, v4, :cond_87

    add-int v4, v10, v7

    goto :goto_87
.end method
