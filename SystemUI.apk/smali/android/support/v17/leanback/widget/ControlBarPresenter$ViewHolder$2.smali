.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    :cond_15
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 7

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    if-ne v1, v2, :cond_1d

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p2, :cond_1d

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    add-int v2, p1, v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method
