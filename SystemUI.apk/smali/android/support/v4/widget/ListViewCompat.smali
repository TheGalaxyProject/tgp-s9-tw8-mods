.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .registers 11
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v5

    return v5

    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    return v6

    :cond_14
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez p1, :cond_3a

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v4, v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_37

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_38

    :cond_37
    :goto_37
    return v5

    :cond_38
    move v5, v6

    goto :goto_37

    :cond_3a
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v1, :cond_4a

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v7

    if-ge v2, v7, :cond_4b

    :cond_4a
    :goto_4a
    return v5

    :cond_4b
    move v5, v6

    goto :goto_4a
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 7
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    return-void

    :cond_12
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, p1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_9
.end method
