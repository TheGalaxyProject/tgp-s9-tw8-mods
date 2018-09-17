.class public Lcom/android/systemui/recents/model/HighResThumbnailLoader;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;
    }
.end annotation


# instance fields
.field private mFlingingFast:Z

.field private final mLoadQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadThread:Ljava/lang/Thread;

.field private final mLoader:Ljava/lang/Runnable;

.field private mLoaderIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation
.end field

.field private mLoading:Z

.field private final mLoadingTasks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskLoadQueueIdle:Z

.field private mVisible:Z

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/os/Looper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;-><init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    const-string/jumbo v2, "Recents-HighResThumbnailLoader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-void
.end method

.method private setLoading(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_8
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->stopLoading()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_15

    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->startLoading()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_f

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startLoading()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_38

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_35

    :cond_1c
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_38
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->notifyAll()V

    return-void
.end method

.method private stopLoading()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V

    return-void
.end method

.method private updateLoading()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    :goto_c
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setLoading(Z)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public clearVisibleTasks()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method isLoading()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .registers 5

    if-eqz p2, :cond_11

    iget-boolean v0, p2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskDataUnloaded()V
    .registers 1

    return-void
.end method

.method public onTaskInvisible(Lcom/android/systemui/recents/model/Task;)V
    .registers 4

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskStackIdChanged()V
    .registers 1

    return-void
.end method

.method public onTaskVisible(Lcom/android/systemui/recents/model/Task;)V
    .registers 4

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v0, :cond_24

    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_25

    monitor-exit v1

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFlingingFast(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    return-void
.end method

.method public setTaskLoadQueueIdle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    return-void
.end method

.method waitForLoaderIdle()V
    .registers 3

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    if-eqz v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    monitor-exit v1

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
