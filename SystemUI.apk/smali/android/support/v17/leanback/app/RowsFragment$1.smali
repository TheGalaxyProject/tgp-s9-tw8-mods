.class Landroid/support/v17/leanback/app/RowsFragment$1;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    :cond_d
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-static {p1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_29
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setClipChildren(Z)V

    :cond_d
    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iput-boolean v6, v3, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    new-instance v3, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;

    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v3, v4, p1}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;-><init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->setExtraObject(Ljava/lang/Object;)V

    invoke-static {p1, v5, v6}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_30
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v0, p1, :cond_14

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v3, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_14
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_21
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_12
    return-void
.end method
