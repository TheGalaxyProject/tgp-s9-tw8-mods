.class public Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CVH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TCVH;>;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method static synthetic -get0(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TCVH;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;-><init>(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-gez p1, :cond_e

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_e
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-gez p1, :cond_c

    const v0, 0x7fffffff

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TCVH;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_6

    add-int/lit8 p2, p2, -0x1

    :cond_6
    instance-of v1, p1, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "HeaderViewHolder cannot find mHeader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2c
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_35
    return-void

    :cond_36
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_35
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_1e

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    invoke-direct {v2, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    :cond_1e
    iget-object v2, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method public setHeader(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    return-void
.end method
