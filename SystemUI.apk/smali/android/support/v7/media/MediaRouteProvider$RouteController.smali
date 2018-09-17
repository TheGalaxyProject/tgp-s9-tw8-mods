.class public abstract Landroid/support/v7/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z
    .registers 4
    .param p2    # Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .registers 1

    return-void
.end method

.method public onSelect()V
    .registers 1

    return-void
.end method

.method public onSetVolume(I)V
    .registers 2

    return-void
.end method

.method public onUnselect()V
    .registers 1

    return-void
.end method

.method public onUnselect(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    return-void
.end method

.method public onUpdateVolume(I)V
    .registers 2

    return-void
.end method
