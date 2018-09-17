.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 12

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-nez v3, :cond_a

    return v9

    :cond_a
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int v4, v1, v0

    if-lez p1, :cond_29

    if-lt v4, v3, :cond_39

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_39

    return v9

    :cond_29
    if-gez p1, :cond_38

    if-gtz v1, :cond_39

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    if-ltz v7, :cond_39

    return v9

    :cond_38
    return v9

    :cond_39
    const/4 v7, 0x1

    return v7
.end method

.method public scrollTargetBy(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-static {v0, p2}, Landroid/support/v4/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    return-void
.end method
