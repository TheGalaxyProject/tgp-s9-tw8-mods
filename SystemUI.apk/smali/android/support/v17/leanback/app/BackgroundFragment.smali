.class public final Landroid/support/v17/leanback/app/BackgroundFragment;
.super Landroid/app/Fragment;
.source "BackgroundFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->detach()V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onResume()V

    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onActivityStart()V

    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onStop()V

    :cond_9
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
