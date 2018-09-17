.class abstract Landroid/support/v17/leanback/app/BaseRowFragment;
.super Landroid/app/Fragment;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BaseRowFragment$1;,
        Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field private mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

.field private mPendingTransitionPrepare:Z

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private final mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field mSelectedPosition:I

.field mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/app/BaseRowFragment;)Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    return-object v0
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    return-void
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .registers 2

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object p1
.end method

.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method abstract getLayoutResourceId()I
.end method

.method public getSelectedPosition()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    return v0
.end method

.method public final getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getLayoutResourceId()I

    move-result v1

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    if-eqz v1, :cond_18

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    :cond_18
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .registers 5

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTransitionEnd()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    :cond_1f
    return-void
.end method

.method public onTransitionPrepare()Z
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    return v2

    :cond_11
    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    return v1
.end method

.method public onTransitionStart()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    :cond_15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_c

    const-string/jumbo v0, "currentSelectedPosition"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    :cond_c
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public final setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    return-void
.end method

.method setAdapterAndSelection()V
    .registers 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_16
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v1, :cond_2b

    const/4 v0, 0x1

    :goto_23
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->startLateSelection()V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23

    :cond_2d
    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v1, :cond_2a

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    goto :goto_2a
.end method

.method public setAlignment(I)V
    .registers 5

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    :cond_20
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .registers 4

    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    if-eqz p2, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    goto :goto_19
.end method

.method updateAdapter()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    :cond_15
    return-void
.end method
