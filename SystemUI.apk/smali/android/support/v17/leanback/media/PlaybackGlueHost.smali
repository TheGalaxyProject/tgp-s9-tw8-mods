.class public abstract Landroid/support/v17/leanback/media/PlaybackGlueHost;
.super Ljava/lang/Object;
.source "PlaybackGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;,
        Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    }
.end annotation


# instance fields
.field mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    :cond_9
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    :cond_14
    return-void
.end method

.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .registers 2

    return-void
.end method

.method public notifyPlaybackRowChanged()V
    .registers 1

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setFadingEnabled(Z)V

    return-void
.end method

.method public setFadingEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .registers 2

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .registers 2

    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .registers 2

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .registers 2

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .registers 2

    return-void
.end method

.method public showControlsOverlay(Z)V
    .registers 2

    return-void
.end method
