.class public Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;
.super Ljava/lang/Object;
.source "PlaybackSeekUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackSeekUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSeekEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onSeekFinished(Z)V
    .registers 2

    return-void
.end method

.method public onSeekPositionChanged(J)V
    .registers 3

    return-void
.end method

.method public onSeekStarted()V
    .registers 1

    return-void
.end method
