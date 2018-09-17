.class public abstract Landroid/support/v17/leanback/widget/PresenterSwitcher;
.super Ljava/lang/Object;
.source "PresenterSwitcher.java"


# instance fields
.field private mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field private mParent:Landroid/view/ViewGroup;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showView(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Landroid/view/View;Z)V

    :cond_b
    return-void
.end method

.method private switchView(Ljava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eq v0, v1, :cond_38

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->clear()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-nez v1, :cond_18

    return-void

    :cond_18
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->insertView(Landroid/view/View;)V

    :goto_29
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->onViewSelected(Landroid/view/View;)V

    return-void

    :cond_38
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-nez v1, :cond_3d

    return-void

    :cond_3d
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    goto :goto_29
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroid/support/v17/leanback/widget/Presenter;

    :cond_19
    return-void
.end method

.method public final getParentViewGroup()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->clear()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-void
.end method

.method protected abstract insertView(Landroid/view/View;)V
.end method

.method protected onViewSelected(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->switchView(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    return-void
.end method

.method protected showView(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public unselect()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PresenterSwitcher;->showView(Z)V

    return-void
.end method
