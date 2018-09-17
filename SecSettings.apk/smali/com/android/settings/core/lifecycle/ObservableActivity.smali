.class public Lcom/android/settings/core/lifecycle/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"


# instance fields
.field private final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method protected getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_d
    return v0
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
