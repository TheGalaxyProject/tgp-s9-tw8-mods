.class public Lcom/samsung/android/settings/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_31

    :cond_b
    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v1, v2, :cond_28

    move v2, v1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2b
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_31
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method
