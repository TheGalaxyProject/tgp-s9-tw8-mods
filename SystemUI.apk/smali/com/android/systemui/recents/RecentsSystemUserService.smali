.class public Lcom/android/systemui/recents/RecentsSystemUserService;
.super Landroid/app/Service;
.source "RecentsSystemUserService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemUserCallbacks()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
