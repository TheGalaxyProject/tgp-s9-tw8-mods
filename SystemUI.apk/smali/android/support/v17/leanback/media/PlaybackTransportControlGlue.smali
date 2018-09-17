.class public Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;,
        Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final sHandler:Landroid/os/Handler;


# instance fields
.field final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field final mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue",
            "<TT;>.SeekUiClient;"
        }
    .end annotation
.end field

.field mSeekEnabled:Z

.field mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private updatePlaybackState(Z)V
    .registers 5

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_48

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v2, v2, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    :goto_13
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mFadeWhenPlaying:Z

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_24
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v1, :cond_47

    if-nez p1, :cond_4f

    const/4 v0, 0x0

    :goto_2b
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v1

    if-eq v1, v0, :cond_47

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_47
    return-void

    :cond_48
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_13

    :cond_4f
    const/4 v0, 0x1

    goto :goto_2b
.end method


# virtual methods
.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .registers 9

    const/16 v5, 0x55

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_58

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_2c

    :cond_f
    const/4 v1, 0x1

    :goto_10
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_38

    :cond_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_49

    if-eqz v1, :cond_44

    iget-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    :goto_1f
    if-eqz v3, :cond_49

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->pause()V

    :cond_27
    :goto_27
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    const/4 v2, 0x1

    :cond_2b
    :goto_2b
    return v2

    :cond_2c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_36

    const/4 v1, 0x1

    goto :goto_10

    :cond_36
    const/4 v1, 0x0

    goto :goto_10

    :cond_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_42

    const/4 v0, 0x1

    goto :goto_19

    :cond_42
    const/4 v0, 0x0

    goto :goto_19

    :cond_44
    iget-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    xor-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_49
    if-eqz v1, :cond_27

    iget-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->play()V

    goto :goto_27

    :cond_58
    instance-of v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v3, :cond_61

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->next()V

    const/4 v2, 0x1

    goto :goto_2b

    :cond_61
    instance-of v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v3, :cond_2b

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->previous()V

    const/4 v2, 0x1

    goto :goto_2b
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    invoke-interface {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_e
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .registers 4

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .registers 3

    new-instance v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V

    new-instance v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->setDescriptionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V

    return-object v1
.end method

.method protected onDetachedFromHost()V
    .registers 3

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onDetachedFromHost()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_15
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v4, 0x0

    sparse-switch p2, :sswitch_data_2e

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v0

    :cond_1e
    if-eqz v0, :cond_2c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_29
    const/4 v2, 0x1

    return v2

    :sswitch_2b
    return v4

    :cond_2c
    return v4

    nop

    :sswitch_data_2e
    .sparse-switch
        0x4 -> :sswitch_2b
        0x13 -> :sswitch_2b
        0x14 -> :sswitch_2b
        0x15 -> :sswitch_2b
        0x16 -> :sswitch_2b
        0x6f -> :sswitch_2b
    .end sparse-switch
.end method

.method protected onPlayStateChanged()V
    .registers 5

    const/16 v3, 0x64

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    if-eq v0, v1, :cond_30

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2c
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void

    :cond_30
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    goto :goto_2c

    :cond_34
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    goto :goto_2c
.end method

.method onUpdatePlaybackState()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method onUpdatePlaybackStatusAfterUserAction()V
    .registers 5

    const/16 v3, 0x64

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->updatePlaybackState(Z)V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method onUpdateProgress()V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlaybackSeekUiClient:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;

    iget-boolean v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    :goto_1c
    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_1f
    return-void

    :cond_20
    const-wide/16 v0, -0x1

    goto :goto_1c
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdatePlaybackState()V

    return-void
.end method
