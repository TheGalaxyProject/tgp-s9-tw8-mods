.class public abstract Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .registers 8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    if-eq v1, v0, :cond_37

    if-eqz p2, :cond_35

    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UID mismatch. SystemUI is running uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and the current user is uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v2, 0x0

    return v2

    :cond_37
    const/4 v2, 0x1

    return v2
.end method

.method public onActivityDismissingDockedStack()V
    .registers 1

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 1

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .registers 2

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 1

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .registers 1

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .registers 3

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 3

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 1

    return-void
.end method
