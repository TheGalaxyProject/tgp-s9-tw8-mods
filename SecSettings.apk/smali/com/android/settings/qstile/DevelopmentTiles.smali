.class public abstract Lcom/android/settings/qstile/DevelopmentTiles;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/qstile/DevelopmentTiles$AnimationSpeed;,
        Lcom/android/settings/qstile/DevelopmentTiles$ForceRTL;,
        Lcom/android/settings/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isEnabled()Z
.end method

.method public onClick()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1d

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/settings/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;-><init>()V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->refresh()V

    return-void

    :cond_1d
    move v0, v1

    goto :goto_c
.end method

.method public onStartListening()V
    .registers 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->refresh()V

    return-void
.end method

.method public refresh()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    :goto_b
    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :cond_16
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected abstract setIsEnabled(Z)V
.end method
