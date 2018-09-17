.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-wide v2

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    if-ne v0, v1, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-eqz v0, :cond_1d

    iput-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    :goto_19
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_27

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v6, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_19

    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method
