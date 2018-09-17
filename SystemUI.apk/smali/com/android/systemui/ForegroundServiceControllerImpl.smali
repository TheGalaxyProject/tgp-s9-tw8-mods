.class public Lcom/android/systemui/ForegroundServiceControllerImpl;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    }
.end annotation


# instance fields
.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public isDungeonNeededForUser(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    if-nez v0, :cond_10

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->isDungeonNeeded()Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_16

    move-result v1

    monitor-exit v2

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2f

    if-nez v0, :cond_14

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2f

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_21
    :try_start_21
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2f

    move-result v1

    monitor-exit v2

    return v1

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;I)V
    .registers 9

    iget-object v4, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    if-nez v2, :cond_20

    new-instance v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>(Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;)V

    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_38

    const-string/jumbo v3, "android.foregroundApps"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_5e

    :cond_38
    :goto_38
    monitor-exit v4

    return-void

    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    if-le p2, v3, :cond_38

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5e

    goto :goto_38

    :catchall_5e
    move-exception v3

    monitor-exit v4

    throw v3
.end method
