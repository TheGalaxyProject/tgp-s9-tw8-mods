.class public Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.super Landroid/support/v17/leanback/media/PlayerAdapter;
.source "MediaPlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$5;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;,
        Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;
    }
.end annotation


# instance fields
.field mBufferedProgress:J

.field mBufferingStart:Z

.field mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mHasDisplay:Z

.field mInitialized:Z

.field final mPlayer:Landroid/media/MediaPlayer;

.field final mRunnable:Ljava/lang/Runnable;

.field mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;


# virtual methods
.method changeToUnitialized()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_15
    return-void
.end method

.method public getBufferedPosition()J
    .registers 3

    iget-wide v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferedProgress:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_a
    int-to-long v0, v0

    return-wide v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getDuration()J
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_a
    int-to-long v0, v0

    return-wide v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method getUpdatePeriod()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPrepared()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method notifyBufferingStartEnd()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    invoke-virtual {v1, p0, v0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V

    return-void

    :cond_10
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    new-instance v1, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;-><init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_12
    return-void
.end method

.method public onDetachedFromHost()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    :cond_c
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->reset()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->release()V

    return-void
.end method

.method protected onError(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onInfo(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onSeekComplete()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_12
    return-void
.end method

.method public play()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void
.end method

.method public release()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->changeToUnitialized()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-ne v0, v1, :cond_e

    return-void

    :cond_c
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    goto :goto_22
.end method

.method public setProgressUpdatingEnabled(Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getUpdatePeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
