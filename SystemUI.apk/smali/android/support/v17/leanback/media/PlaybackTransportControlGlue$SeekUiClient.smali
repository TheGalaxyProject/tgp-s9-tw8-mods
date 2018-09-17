.class Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;
.super Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekUiClient"
.end annotation


# instance fields
.field mIsSeek:Z

.field mLastUserPosition:J

.field mPausedBeforeSeek:Z

.field mPositionBeforeSeek:J

.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;


# virtual methods
.method public getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    return-object v0
.end method

.method public isSeekEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-boolean v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekEnabled:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onSeekFinished(Z)V
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1e

    iget-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->seekTo(J)V

    :cond_12
    :goto_12
    iput-boolean v4, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->play()V

    :goto_1d
    return-void

    :cond_1e
    iget-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->seekTo(J)V

    goto :goto_12

    :cond_2c
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onUpdateProgress()V

    goto :goto_1d
.end method

.method public onSeekPositionChanged(J)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    :goto_d
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_1a
    return-void

    :cond_1b
    iput-wide p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    goto :goto_d
.end method

.method public onSeekStarted()V
    .registers 5

    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mIsSeek:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPausedBeforeSeek:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mSeekProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    :goto_24
    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mPositionBeforeSeek:J

    iput-wide v2, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->mLastUserPosition:J

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$SeekUiClient;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->pause()V

    return-void

    :cond_2e
    move-wide v0, v2

    goto :goto_24
.end method
