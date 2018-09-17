.class final Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnabledComponentsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$o:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method
