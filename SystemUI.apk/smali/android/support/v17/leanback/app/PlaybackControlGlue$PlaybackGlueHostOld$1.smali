.class Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;
.super Ljava/lang/Object;
.source "PlaybackControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;


# virtual methods
.method public onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .registers 6

    instance-of v0, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz v0, :cond_18

    instance-of v0, p3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    check-cast p2, Landroid/support/v17/leanback/widget/Action;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->this$1:Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public bridge synthetic onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .registers 5

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld$1;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
