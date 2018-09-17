.class public abstract Landroid/support/v17/leanback/app/PlaybackControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "PlaybackControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;,
        Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mExternalOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;


# virtual methods
.method protected createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackControlGlue;->mExternalOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final next()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->skipToNext()V

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;

    iput-object p0, p1, Landroid/support/v17/leanback/app/PlaybackControlGlue$PlaybackGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlGlue;

    :cond_b
    return-void
.end method

.method protected onCreateControlsRowAndPresenter()V
    .registers 1

    return-void
.end method

.method protected onRowChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .registers 2

    return-void
.end method

.method public final pause()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->pausePlayback()V

    return-void
.end method

.method protected pausePlayback()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final play(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->startPlayback(I)V

    return-void
.end method

.method public final previous()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->skipToPrevious()V

    return-void
.end method

.method protected skipToNext()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected skipToPrevious()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected startPlayback(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
