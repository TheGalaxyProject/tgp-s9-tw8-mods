.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$H;,
        Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    }
.end annotation


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStackTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "window_time_0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/ActivityMetricsLogger$H;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    return-void
.end method

.method private allStacksWindowsDrawn()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method private calculateCurrentDelay()I
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .registers 6

    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_36

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3b

    :cond_36
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .registers 4

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x8

    return v0

    :cond_f
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/16 v0, 0x9

    return v0

    :cond_19
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x7

    return v0

    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_9
    if-ltz v2, :cond_1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-ne p2, v1, :cond_16

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_16
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_1c
    return v4
.end method

.method private isAnyTransitionActive()Z
    .registers 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v2, 0x477

    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v3, 0x367

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .registers 11

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_b
    if-ltz v1, :cond_e3

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v4

    if-ne v4, v8, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v5, 0x2f9

    invoke-direct {v0, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v7, 0x367

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v5, :cond_5d

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/16 v7, 0x388

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_5d
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-eqz v5, :cond_7c

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    const/16 v7, 0x387

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v9, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    :cond_7c
    if-eqz v3, :cond_e1

    const/4 v5, 0x1

    :goto_7f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x389

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x145

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x13f

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_b8

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x141

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_b8
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_cb

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x3b1

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_cb
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x142

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_b

    :cond_e1
    move v5, v6

    goto :goto_7f

    :cond_e3
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .registers 14

    const/4 v8, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v3, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_f
    iget-wide v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    return-void

    :cond_18
    const/4 v3, -0x1

    goto :goto_f

    :cond_1a
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz p2, :cond_2a

    if-eqz v0, :cond_2a

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    return-void

    :cond_2a
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_42

    if-nez v0, :cond_42

    const/4 v2, 0x1

    :goto_35
    if-ltz p1, :cond_39

    if-nez p2, :cond_44

    :cond_39
    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_4b

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    return-void

    :cond_42
    const/4 v2, 0x0

    goto :goto_35

    :cond_44
    xor-int/lit8 v4, p4, 0x1

    if-nez v4, :cond_39

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    :cond_4b
    if-eqz v2, :cond_4e

    return-void

    :cond_4e
    new-instance v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-direct {v1, p0, v8}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V

    invoke-static {v1, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    invoke-static {v1, p3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-static {v1, p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    return-void
.end method

.method private reset(Z)V
    .registers 4

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    :cond_b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method logWindowState()V
    .registers 14

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    iget v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    if-eq v4, v8, :cond_21

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_21
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_35

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eqz v4, :cond_35

    iput v11, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_35
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_48

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :cond_48
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getStackIdExcludingDisplayId(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v4

    if-nez v4, :cond_56

    if-ne v3, v11, :cond_59

    :cond_56
    iput v10, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    :cond_58
    :goto_58
    return-void

    :cond_59
    if-ne v3, v9, :cond_66

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Docked stack shouldn\'t be the focused stack, because it reported not being visible."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_58

    :cond_66
    if-ne v3, v12, :cond_6b

    iput v12, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_58

    :cond_6b
    const/4 v4, 0x6

    if-ne v3, v4, :cond_71

    iput v9, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_58

    :cond_71
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v4

    if-eqz v4, :cond_58

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .registers 9

    if-eqz p2, :cond_23

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    :goto_14
    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :goto_17
    if-eqz v0, :cond_27

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    :goto_1f
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_14

    :cond_25
    const/4 v1, 0x0

    goto :goto_17

    :cond_27
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method notifyActivityLaunching()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    :cond_c
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_26

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_23

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    return-void

    :cond_11
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v3, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1b
    if-ltz v0, :cond_36

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-nez v1, :cond_2e

    :goto_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_2e
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    goto :goto_2b

    :cond_36
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    :cond_3f
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eq v3, p1, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyWindowsDrawn(IJ)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    :cond_2a
    return-void
.end method
