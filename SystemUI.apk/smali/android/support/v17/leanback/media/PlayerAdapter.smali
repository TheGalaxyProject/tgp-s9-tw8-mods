.class public abstract Landroid/support/v17/leanback/media/PlayerAdapter;
.super Ljava/lang/Object;
.source "PlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
    }
.end annotation


# instance fields
.field mCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferedPosition()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlayerAdapter;->mCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPlaying()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 2

    return-void
.end method

.method public onDetachedFromHost()V
    .registers 1

    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public seekTo(J)V
    .registers 3

    return-void
.end method

.method public setProgressUpdatingEnabled(Z)V
    .registers 2

    return-void
.end method
