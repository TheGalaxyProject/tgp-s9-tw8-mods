.class public Lcom/android/server/wm/PinnedStackWindowController;
.super Lcom/android/server/wm/StackWindowController;
.source "PinnedStackWindowController.java"


# instance fields
.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;)V
    .registers 13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 17

    iget-object v10, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pinned stack container not found :("

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    :goto_14
    monitor-exit v10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_19
    :try_start_19
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    if-nez p1, :cond_36

    const/4 v2, 0x1

    :goto_29
    if-eqz v2, :cond_85

    if-eqz p4, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v2, 0x0

    goto :goto_29

    :cond_38
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v9

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p2, p1, v2}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move-object v7, p1

    move v4, v8

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v0, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;

    move/from16 v1, p4

    move v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/-$Lambda$Dd9IZYP_DnuZN905KeMl4-pzcAs;-><init>(ZZIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6e
    .catchall {:try_start_19 .. :try_end_6e} :catchall_13

    monitor-exit v10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_73
    :try_start_73
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_13

    :try_start_78
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_89

    move-object p1, v9

    goto :goto_51

    :cond_85
    if-eqz p4, :cond_51

    const/4 v8, 0x2

    goto :goto_51

    :catchall_89
    move-exception v0

    move-object p1, v9

    goto :goto_14
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_44

    if-nez v2, :cond_16

    :cond_11
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_44

    move-result-object v0

    if-nez v0, :cond_25

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_25
    :try_start_25
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    if-nez p2, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object p2

    :cond_2f
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_44

    move-result-object v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_3f
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p2

    :catchall_44
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_PinnedStackWindowController_5117(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/BoundsAnimationTarget;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setPictureInPictureActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    if-nez v0, :cond_15

    :cond_10
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setPictureInPictureAspectRatio(F)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_63

    if-nez v1, :cond_15

    :cond_10
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    :cond_52
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_60

    :goto_58
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_63

    :cond_5b
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_60
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_58

    :catchall_63
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowListener;

    invoke-interface {v0, p1}, Lcom/android/server/wm/PinnedStackWindowListener;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;)V

    :cond_b
    return-void
.end method
