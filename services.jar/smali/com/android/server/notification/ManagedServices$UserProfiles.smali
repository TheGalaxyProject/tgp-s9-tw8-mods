.class public Lcom/android/server/notification/ManagedServices$UserProfiles;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfiles"
.end annotation


# instance fields
.field private final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCurrentProfileIds()[I
    .registers 6

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1f

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    monitor-exit v4

    return-object v2

    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isCurrentProfile(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isManagedProfile(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    move-result v1

    :goto_11
    monitor-exit v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateCache(Landroid/content/Context;)V
    .registers 10

    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-eqz v4, :cond_37

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_16
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_33

    goto :goto_1f

    :catchall_33
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_36
    monitor-exit v6

    :cond_37
    return-void
.end method
