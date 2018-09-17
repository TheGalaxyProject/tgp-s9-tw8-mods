.class Lcom/android/server/media/AudioPlaybackMonitor;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioPlaybackMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveAudioPlaybackClientUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAudioPlaybackPlayerInterfaceIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

.field private final mLock:Ljava/lang/Object;

.field private final mSortedAudioPlaybackClientUids:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    const-string/jumbo v0, "AudioPlaybackMonitor"

    sput-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/IAudioService;Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;)V
    .registers 7

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackPlayerInterfaceIds:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    iput-object p1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mListener:Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    :try_start_23
    invoke-interface {p2, p0}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    sget-object v1, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register playback callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method


# virtual methods
.method public cleanUpAudioPlaybackUids(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_f
    if-ltz v0, :cond_19

    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2f

    move-result v2

    if-ne v2, p1, :cond_1b

    :cond_19
    monitor-exit v3

    return-void

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2f

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dispatchPlaybackConfigChange(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_a9

    :try_start_11
    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v9

    const/4 v11, 0x3

    if-eq v9, v11, :cond_1a

    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackPlayerInterfaceIds:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    sget-boolean v9, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    if-eqz v9, :cond_7c

    sget-object v9, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found a new active media playback. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_1a

    if-lez v2, :cond_9a

    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v9, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_9a
    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Landroid/util/IntArray;->add(II)V
    :try_end_a4
    .catchall {:try_start_11 .. :try_end_a4} :catchall_a6

    goto/16 :goto_1a

    :catchall_a6
    move-exception v9

    :try_start_a7
    monitor-exit v10

    throw v9
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_ae
    :try_start_ae
    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackPlayerInterfaceIds:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    iput-object v4, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackPlayerInterfaceIds:Ljava/util/Set;
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_a6

    :try_start_b5
    monitor-exit v10

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v9, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mListener:Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    invoke-interface {v9, v5}, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;->onAudioPlaybackStarted(I)V
    :try_end_cf
    .catchall {:try_start_b5 .. :try_end_cf} :catchall_a9

    goto :goto_ba

    :cond_d0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "Audio playback (lastly played comes first)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2f
    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_94

    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " packages="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    array-length v5, v3

    if-lez v5, :cond_8e

    const/4 v2, 0x0

    :goto_6f
    array-length v5, v3

    if-ge v2, v5, :cond_8e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_8e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_96

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_94
    monitor-exit v6

    return-void

    :catchall_96
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getSortedAudioPlaybackClientUids()Landroid/util/IntArray;
    .registers 4

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit v2

    return-object v0

    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isPlaybackActive(I)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
