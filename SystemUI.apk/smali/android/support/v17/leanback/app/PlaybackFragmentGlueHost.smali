.class public Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

.field final mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    return-object v0
.end method

.method public constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    return-void
.end method


# virtual methods
.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    return-void
.end method

.method public notifyPlaybackRowChanged()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->notifyPlaybackRowChanged()V

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_8
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    return-void
.end method
