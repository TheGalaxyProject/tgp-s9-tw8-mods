.class public abstract Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
.super Ljava/lang/Object;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .registers 2

    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .registers 2

    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .registers 3

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onReadyForPlayback()V

    :cond_9
    return-void
.end method

.method public onReadyForPlayback()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
