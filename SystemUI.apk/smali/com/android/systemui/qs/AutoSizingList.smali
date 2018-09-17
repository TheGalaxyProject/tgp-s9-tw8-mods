.class public Lcom/android/systemui/qs/AutoSizingList;
.super Landroid/widget/LinearLayout;
.source "AutoSizingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/AutoSizingList$1;,
        Lcom/android/systemui/qs/AutoSizingList$2;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBindChildren:Ljava/lang/Runnable;

.field private mCount:I

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableAutoSizing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mItemSize:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/AutoSizingList;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/AutoSizingList;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/AutoSizingList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/AutoSizingList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->rebindChildren()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/AutoSizingList$1;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/qs/AutoSizingList$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/AutoSizingList$2;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/R$styleable;->AutoSizingList:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getDesiredCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getItemCount(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    div-int v1, p1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_10
    return v0
.end method

.method private postRebindChildren()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rebindChildren()V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-ge v0, v3, :cond_29

    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_27

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_14
    iget-object v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v2, :cond_24

    if-eqz v2, :cond_21

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/AutoSizingList;->removeView(Landroid/view/View;)V

    :cond_21
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/AutoSizingList;->addView(Landroid/view/View;I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    const/4 v2, 0x0

    goto :goto_14

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-le v3, v4, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/AutoSizingList;->removeViewAt(I)V

    goto :goto_29

    :cond_3b
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/AutoSizingList;->getItemCount(I)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-eq v2, v0, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    iput v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_14
    return-void
.end method
