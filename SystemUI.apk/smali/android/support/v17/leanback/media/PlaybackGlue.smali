.class public abstract Landroid/support/v17/leanback/media/PlaybackGlue;
.super Ljava/lang/Object;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

.field mPlayerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public addPlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    return-object v0
.end method

.method protected getPlayerCallbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isPrepared()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isReadyForPlayback()Z

    move-result v0

    return v0
.end method

.method public isReadyForPlayback()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .registers 1

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    new-instance v1, Landroid/support/v17/leanback/media/PlaybackGlue$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method protected onDetachedFromHost()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    iput-object v1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    :cond_c
    return-void
.end method

.method protected onHostPause()V
    .registers 1

    return-void
.end method

.method protected onHostResume()V
    .registers 1

    return-void
.end method

.method protected onHostStart()V
    .registers 1

    return-void
.end method

.method protected onHostStop()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public play()V
    .registers 1

    return-void
.end method

.method public previous()V
    .registers 1

    return-void
.end method

.method public removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public final setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    :cond_f
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    :cond_1a
    return-void
.end method
