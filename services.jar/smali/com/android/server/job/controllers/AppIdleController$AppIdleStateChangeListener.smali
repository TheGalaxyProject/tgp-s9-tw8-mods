.class final Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/AppIdleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .registers 8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v3, v2, Lcom/android/server/job/controllers/AppIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-boolean v2, v2, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_30

    if-eqz v2, :cond_e

    monitor-exit v3

    return-void

    :cond_e
    :try_start_e
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;-><init>(ILjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-static {v2}, Lcom/android/server/job/controllers/AppIdleController;->-get0(Lcom/android/server/job/controllers/AppIdleController;)Lcom/android/server/job/JobSchedulerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    iget-boolean v2, v1, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mChanged:Z
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_30

    if-eqz v2, :cond_25

    const/4 v0, 0x1

    :cond_25
    monitor-exit v3

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v2, v2, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_2f
    return-void

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onParoleStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/AppIdleController;->setAppIdleParoleOn(Z)V

    return-void
.end method
