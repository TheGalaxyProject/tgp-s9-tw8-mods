.class public Lcom/android/server/wm/ScreenFreezeAnimationController;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenFreezeController"


# instance fields
.field private mFakedRelaunchAnimTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformRelaunchAnimState:I

.field mFreezeTarget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mH:Landroid/os/Handler;

.field private mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    return-void
.end method

.method private getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/wm/ScreenFreezeAnimation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/ScreenFreezeAnimation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ScreenFreezeAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    return-object v0
.end method


# virtual methods
.method addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3f

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ScreenFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addFakedRelaunchAnimTokensLocked, adding wtoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method appWindowDrawnLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setWindowDrawn(Lcom/android/server/wm/WindowState;)V

    :cond_11
    return-void
.end method

.method public checkDrawnWindowsFitToScreenForSwapTasks(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->checkDrawnWindowsFitToScreenForSwapTasks(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "ScreenFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearFakedRelaunchAnimTokensLocked, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearScreenFreezeAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezeAnimation()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public createKeepVisibleAnimation()Landroid/view/animation/Animation;
    .registers 5

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x150

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_29

    const/16 v2, 0x8

    if-eq v1, v2, :cond_29

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_29
    new-instance v2, Lcom/android/server/wm/ScreenFreezeAnimationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenFreezeAnimationController$1;-><init>(Lcom/android/server/wm/ScreenFreezeAnimationController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->dumpLocked(Ljava/io/PrintWriter;)V

    :cond_9
    return-void
.end method

.method public executeFakedRelaunchAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 10

    const/16 v7, 0x6a

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_3d

    const-string/jumbo v3, "ScreenFreezeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "executeFakedRelaunchAnimationLocked: display isn\'t ready, displayFrozen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mPolicy.isScreenOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    :goto_53
    if-eqz v2, :cond_a1

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_73

    const-string/jumbo v3, "ScreenFreezeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "executeFakedRelaunchAnimationLocked, wtoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    :goto_99
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    return-void

    :cond_9f
    const/4 v2, 0x0

    goto :goto_53

    :cond_a1
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_99
.end method

.method public freezeSplitResizeTarget(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_3e

    move-result v4

    if-nez v4, :cond_15

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    :goto_33
    if-eqz v1, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mFreezeSplitResizing:Z

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3e

    goto :goto_19

    :catchall_3e
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_44
    const/4 v1, 0x0

    goto :goto_33

    :cond_46
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public getFreeformRelaunchAnimState()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleScreenFreezeAnimationReady()I
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezeAnimation()V

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_33
    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->handleMultiWindowTransitionReady()I

    move-result v1

    return v1
.end method

.method hasFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScreenFreezeAnimationSet()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_20

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_1a
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method loadTransitionLocked(I)Landroid/view/animation/Animation;
    .registers 5

    packed-switch p1, :pswitch_data_1c

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10a006b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10a006a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_e

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method notifyScreenFreezeAnimationFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    .registers 11

    const/4 v8, 0x0

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v6, :cond_8c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p1, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_38
    invoke-direct {p0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8c

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_67
    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v6, :cond_67

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v6

    if-nez v6, :cond_81

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_67

    :cond_81
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    goto :goto_67

    :cond_87
    iput-boolean v8, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v8, v4, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto :goto_55

    :cond_8c
    return-void
.end method

.method public prepareResizeAnim(Ljava/util/ArrayList;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v11

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-boolean v10, v10, Lcom/android/server/wm/MultiWindowManagerInternal;->mAnimatingDockedStackForResizableHome:Z

    if-eqz v10, :cond_23

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v10, :cond_1e

    const-string/jumbo v10, "ScreenFreezeController"

    const-string/jumbo v12, "prepareResizeAnimLocked : DockedStack Animation is running.. skip"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_9c

    :cond_1e
    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_23
    :try_start_23
    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eq v10, v12, :cond_3d

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v10

    if-eqz v10, :cond_4f

    :cond_3d
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v10, :cond_4a

    const-string/jumbo v10, "ScreenFreezeController"

    const-string/jumbo v12, "prepareResizeAnimLocked : Other window animation is already running.. skip"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_9c

    :cond_4a
    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4f
    :try_start_4f
    invoke-direct {p0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v2

    if-nez p2, :cond_79

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v10

    if-nez v10, :cond_67

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v10

    if-nez v10, :cond_67

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_79

    :cond_67
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v10, :cond_74

    const-string/jumbo v10, "ScreenFreezeController"

    const-string/jumbo v12, "prepareResizeAnimLocked : screen freeze animation is already running.. skip request"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_9c

    :cond_74
    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_79
    :try_start_79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_82
    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_9c

    goto :goto_82

    :catchall_9c
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_a2
    :try_start_a2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f9

    iget-object v10, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v10

    if-eqz v10, :cond_f9

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v10}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    if-eqz p2, :cond_f9

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->overrideTargetWindows()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v8, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d2
    :goto_d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v10, :cond_d2

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v10

    if-nez v10, :cond_ec

    iget-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v10, :cond_d2

    :cond_ec
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v12, 0x1

    iput v12, v10, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    goto :goto_d2

    :cond_f2
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z
    :try_end_f8
    .catchall {:try_start_a2 .. :try_end_f8} :catchall_9c

    goto :goto_c0

    :cond_f9
    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public prepareSwapAnimLocked()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v14, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v15

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v1, :cond_32

    iget-object v14, v1, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->isEmpty()Z
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_96

    move-result v14

    if-nez v14, :cond_32

    if-nez v2, :cond_37

    :cond_32
    monitor-exit v15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_37
    :try_start_37
    iget-object v14, v2, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v14

    if-nez v14, :cond_55

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v14

    if-nez v14, :cond_55

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v14

    if-eqz v14, :cond_69

    :cond_55
    sget-boolean v14, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v14, :cond_64

    const-string/jumbo v14, "ScreenFreezeController"

    const-string/jumbo v16, "prepareResizeAnimLocked : screen freeze animation is already running.. skip request"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_96

    :cond_64
    monitor-exit v15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_69
    :try_start_69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v14, v5, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_86
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_74

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catchall {:try_start_69 .. :try_end_95} :catchall_96

    goto :goto_86

    :catchall_96
    move-exception v14

    monitor-exit v15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v14

    :cond_9c
    :try_start_9c
    iget-object v14, v2, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v14, v5, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_c4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_cd
    :goto_cd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v14, v7, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_df
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v14

    if-eqz v14, :cond_df

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v14, :cond_df

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_f9
    move-object v4, v9

    const/4 v14, 0x2

    invoke-virtual {v3, v9, v14}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_111

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v14

    if-eqz v14, :cond_111

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V
    :try_end_111
    .catchall {:try_start_9c .. :try_end_111} :catchall_96

    :cond_111
    monitor-exit v15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method removeFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_43

    const-string/jumbo v0, "ScreenFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFakedRelaunchAnimTokensLocked, removing wtoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_48
    return-void
.end method

.method public setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimStateLocked(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setFreeformRelaunchAnimStateLocked(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v8, 0x68

    if-eqz p2, :cond_40

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_40

    const-string/jumbo v4, "ScreenFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFreeformRelaunchAnimStateLocked: display isn\'t ready, displayFrozen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mPolicy.isScreenOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    iget v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I

    if-eq v4, p2, :cond_c7

    const-string/jumbo v4, "ScreenFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFreeformRelaunchAnimStateLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I

    if-eqz v4, :cond_c7

    if-eqz p1, :cond_c0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_93
    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_93

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_93

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_93

    :cond_b7
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_c0

    if-eqz v0, :cond_c0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V

    :cond_c0
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mH:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c7
    return-void
.end method

.method setSnapWindowDeferAnimation(IZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method shouldKeepVisibleAnimation(Lcom/android/server/wm/AppWindowToken;ZZ)Z
    .registers 6

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreeformRelaunchAnimState:I

    packed-switch v1, :pswitch_data_22

    const/4 v1, 0x0

    return v1

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->containsTargetWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    xor-int/lit8 v1, p2, 0x1

    return v1

    :pswitch_1e
    xor-int/lit8 v1, p3, 0x1

    return v1

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_7
    .end packed-switch
.end method

.method stepAnimationLocked(J)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    :cond_f
    return v1

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ScreenFreezeAnimation;->stepAnimationLocked(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezeAnimation()V

    return v1
.end method

.method timeout()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->timeout()V

    :cond_9
    return-void
.end method

.method public unfreezeSplitResizeTarget()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mFreezeSplitResizing:Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    goto :goto_16

    :catchall_26
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mFreezeTarget:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_26

    :cond_31
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public waitScreenFreezeAnimationForRecentsDrawn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimationController;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
