.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsDesktopMode:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

.field private mNeedsToRestoreDefaultIcon:Z

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTapOutsideTaskMessageSent:Z

.field private final mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludePointerRegion:Landroid/graphics/Region;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_TaskTapPointerEventListener_15166(IILcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_17

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_17

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v2
.end method


# virtual methods
.method onConfigurationChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_15
    return-void
.end method

.method onDisplayReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMultiWindowManagerPolicy()Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    return-void

    :cond_19
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_a2

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a4

    const/4 v13, 0x1

    :goto_34
    if-eqz v13, :cond_a6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    :goto_3a
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v20, :cond_b1

    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v20, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_b1

    if-nez v5, :cond_a1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    monitor-enter p0

    :try_start_6f
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v20

    if-nez v20, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    if-eqz v13, :cond_ab

    const/16 v20, 0x272f

    :goto_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V
    :try_end_a0
    .catchall {:try_start_6f .. :try_end_a0} :catchall_ae

    :cond_a0
    monitor-exit p0

    :cond_a1
    return-void

    :cond_a2
    const/4 v13, 0x1

    goto :goto_34

    :cond_a4
    const/4 v13, 0x0

    goto :goto_34

    :cond_a6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    goto :goto_3a

    :cond_ab
    const/16 v20, 0x1f

    goto :goto_89

    :catchall_ae
    move-exception v20

    monitor-exit p0

    throw v20

    :cond_b1
    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_4d8

    :goto_b8
    return-void

    :sswitch_b9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    monitor-enter p0

    :try_start_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_14f

    invoke-virtual {v15}, Landroid/graphics/Region;->setEmpty()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_14f

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14f

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_124

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_124
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12c
    :goto_12c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_14f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_12c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v20

    sget-object v21, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    :try_end_14b
    .catchall {:try_start_cc .. :try_end_14b} :catchall_14c

    goto :goto_12c

    :catchall_14c
    move-exception v20

    monitor-exit p0

    throw v20

    :cond_14f
    :try_start_14f
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v20

    if-nez v20, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    if-eqz v13, :cond_193

    const/16 v20, 0x272f

    :goto_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_190

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z
    :try_end_190
    .catchall {:try_start_14f .. :try_end_190} :catchall_14c

    :cond_190
    :goto_190
    monitor-exit p0

    goto/16 :goto_b8

    :cond_193
    const/16 v20, 0x1f

    goto :goto_169

    :sswitch_196
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_1b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v16

    const/4 v10, 0x1

    if-eqz v16, :cond_1d3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_216

    :cond_1d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1fa

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_208

    const/16 v20, 0x3e8

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    :goto_1f1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_1fa
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_202
    .catchall {:try_start_1b5 .. :try_end_202} :catchall_48b

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b8

    :cond_208
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_213

    const/16 v10, 0x4e21

    goto :goto_1f1

    :cond_213
    const/16 v10, 0x3e8

    goto :goto_1f1

    :cond_216
    if-eqz v16, :cond_2de

    :try_start_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->hasFullScreenWindowLocked()Z
    :try_end_228
    .catchall {:try_start_218 .. :try_end_228} :catchall_48b

    move-result v20

    if-nez v20, :cond_231

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b8

    :cond_231
    :try_start_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2de

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_33f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_323

    const/16 v10, 0x3f9

    :cond_285
    :goto_285
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v20, :cond_2de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2de

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v20

    if-eqz v20, :cond_2de

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a4

    packed-switch v10, :pswitch_data_4e6

    :cond_2a4
    :goto_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_2c2
    if-eqz v14, :cond_3c2

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v22, 0x8b2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2dc

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v22, 0x96b

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3c2

    :cond_2dc
    :goto_2dc
    const/16 v10, 0x3e8

    :cond_2de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_482

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_44b

    if-eqz v16, :cond_44b

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v20

    if-nez v20, :cond_3fb

    const/16 v20, 0x3e8

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_31d

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_31d
    .catchall {:try_start_231 .. :try_end_31d} :catchall_48b

    :cond_31d
    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b8

    :cond_323
    :try_start_323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_33b

    const/16 v10, 0x3f8

    goto/16 :goto_285

    :cond_33b
    const/16 v10, 0x3f6

    goto/16 :goto_285

    :cond_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_36b

    const/16 v10, 0x3f8

    goto/16 :goto_285

    :cond_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_383

    const/16 v10, 0x3f9

    goto/16 :goto_285

    :cond_383
    const/16 v10, 0x3f6

    goto/16 :goto_285

    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_285

    :cond_3ab
    const/16 v10, 0x3f7

    goto/16 :goto_285

    :pswitch_3af
    const/16 v10, 0x4e28

    goto/16 :goto_2a4

    :pswitch_3b3
    const/16 v10, 0x4e29

    goto/16 :goto_2a4

    :pswitch_3b7
    const/16 v10, 0x4e26

    goto/16 :goto_2a4

    :pswitch_3bb
    const/16 v10, 0x4e27

    goto/16 :goto_2a4

    :cond_3bf
    const/4 v14, 0x0

    goto/16 :goto_2c2

    :cond_3c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v20

    if-nez v20, :cond_2dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    new-instance v22, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;-><init>(II)V

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v20

    if-nez v20, :cond_2dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v20

    if-eqz v20, :cond_2de

    goto/16 :goto_2dc

    :cond_3fb
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v12

    monitor-enter p0
    :try_end_400
    .catchall {:try_start_323 .. :try_end_400} :catchall_48b

    :try_start_400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->setEmpty()V

    if-eqz v12, :cond_446

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z
    :try_end_43c
    .catchall {:try_start_400 .. :try_end_43c} :catchall_488

    move-result v20

    if-eqz v20, :cond_446

    :try_start_43f
    monitor-exit p0
    :try_end_440
    .catchall {:try_start_43f .. :try_end_440} :catchall_48b

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b8

    :cond_446
    :try_start_446
    monitor-exit p0

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    :cond_44b
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_491

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    const/16 v23, 0x37

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V
    :try_end_482
    .catchall {:try_start_446 .. :try_end_482} :catchall_48b

    :cond_482
    :goto_482
    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b8

    :catchall_488
    move-exception v20

    :try_start_489
    monitor-exit p0

    throw v20
    :try_end_48b
    .catchall {:try_start_489 .. :try_end_48b} :catchall_48b

    :catchall_48b
    move-exception v20

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v20

    :cond_491
    :try_start_491
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_4a2
    .catchall {:try_start_491 .. :try_end_4a2} :catchall_48b

    goto :goto_482

    :sswitch_4a3
    monitor-enter p0

    :try_start_4a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_190

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v20, 0x12f

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v20, 0x12e

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4d2
    .catchall {:try_start_4a4 .. :try_end_4d2} :catchall_4d4

    goto/16 :goto_190

    :catchall_4d4
    move-exception v20

    monitor-exit p0

    throw v20

    nop

    :sswitch_data_4d8
    .sparse-switch
        0x0 -> :sswitch_b9
        0x1 -> :sswitch_4a3
        0x7 -> :sswitch_196
    .end sparse-switch

    :pswitch_data_4e6
    .packed-switch 0x3f6
        :pswitch_3b7
        :pswitch_3bb
        :pswitch_3b3
        :pswitch_3af
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
