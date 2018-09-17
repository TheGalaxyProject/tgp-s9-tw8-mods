.class public Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
.super Ljava/lang/Object;
.source "PlaybackGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .registers 3

    return-void
.end method
