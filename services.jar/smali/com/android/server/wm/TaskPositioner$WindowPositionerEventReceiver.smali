.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_TaskPositioner$WindowPositionerEventReceiver_12242(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 33

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-nez v27, :cond_11

    :cond_10
    return-void

    :cond_11
    move-object/from16 v20, p1

    check-cast v20, Landroid/view/MotionEvent;

    const/16 v16, 0x0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_24c
    .catchall {:try_start_17 .. :try_end_20} :catchall_717

    move-result v27

    if-eqz v27, :cond_2f

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_2f
    :try_start_2f
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    packed-switch v27, :pswitch_data_a2e

    :cond_3e
    :goto_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-eqz v27, :cond_205

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_65} :catch_24c
    .catchall {:try_start_2f .. :try_end_65} :catchall_717

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_95b

    xor-int/lit8 v27, v26, 0x1

    if-eqz v27, :cond_a3

    :try_start_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_a3} :catch_a22
    .catchall {:try_start_90 .. :try_end_a3} :catchall_95b

    :cond_a3
    :goto_a3
    :try_start_a3
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a7} :catch_24c
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_717

    if-eqz v26, :cond_130

    :try_start_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_130

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_96a

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_dc} :catch_967
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_dc} :catch_24c
    .catchall {:try_start_a9 .. :try_end_dc} :catchall_717

    :try_start_dc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    :try_end_ec
    .catchall {:try_start_dc .. :try_end_ec} :catchall_961

    move-result-object v25

    :try_start_ed
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_130

    if-eqz v25, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    :cond_130
    :goto_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    if-eqz v27, :cond_1f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_99b

    const/4 v8, 0x0

    :goto_14f
    const/16 v19, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_164} :catch_967
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_164} :catch_24c
    .catchall {:try_start_ed .. :try_end_164} :catchall_717

    :try_start_164
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v27, :cond_9a6

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_9a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    if-eqz v27, :cond_9a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v27

    if-eqz v27, :cond_9a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->getGuideState()I

    move-result v27

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_99e

    const/16 v19, 0x1

    :goto_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    :try_end_1b0
    .catchall {:try_start_164 .. :try_end_1b0} :catchall_9c6

    move-result-object v25

    :try_start_1b1
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v19, :cond_1f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-eqz v27, :cond_9d8

    if-eqz v25, :cond_9d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_9cc

    const/16 v27, 0x0

    :goto_1e7
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1b1 .. :try_end_1f0} :catch_967
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1f0} :catch_24c
    .catchall {:try_start_1b1 .. :try_end_1f0} :catchall_717

    :cond_1f0
    :goto_1f0
    :try_start_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_205} :catch_24c
    .catchall {:try_start_1f0 .. :try_end_205} :catchall_717

    :cond_205
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_210
    return-void

    :pswitch_211
    :try_start_211
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_3e

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_DOWN @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_24a} :catch_24c
    .catchall {:try_start_211 .. :try_end_24a} :catchall_717

    goto/16 :goto_3e

    :catch_24c
    move-exception v10

    :try_start_24d
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "Exception caught by drag handleMotion"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25b
    .catchall {:try_start_24d .. :try_end_25b} :catchall_717

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_210

    :pswitch_265
    :try_start_265
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_29e

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_MOVE @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_2af} :catch_24c
    .catchall {:try_start_265 .. :try_end_2af} :catchall_717

    :try_start_2af
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_2ea
    .catchall {:try_start_2af .. :try_end_2ea} :catchall_722

    :try_start_2ea
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v27, :cond_72c

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_72c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    if-eqz v27, :cond_728

    const/16 v17, 0x1

    :goto_304
    if-eqz v17, :cond_482

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_31a} :catch_24c
    .catchall {:try_start_2ea .. :try_end_31a} :catchall_717

    :try_start_31a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(ILcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_730

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z
    :try_end_34c
    .catchall {:try_start_31a .. :try_end_34c} :catchall_734

    move-result v18

    :goto_34d
    :try_start_34d
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_44c

    if-eqz v18, :cond_44c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenDocking(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_73a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_3ca
    :goto_3ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Z
    :try_end_3e4
    .catch Ljava/lang/Exception; {:try_start_34d .. :try_end_3e4} :catch_24c
    .catchall {:try_start_34d .. :try_end_3e4} :catchall_717

    move-result v27

    if-eqz v27, :cond_43f

    :try_start_3e7
    new-instance v24, Ljava/io/StringWriter;

    invoke-direct/range {v24 .. v24}, Ljava/io/StringWriter;-><init>()V

    new-instance v23, Ljava/io/PrintWriter;

    invoke-direct/range {v23 .. v24}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "TaskPositioner: fullscreenTask="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v27, "---------------------------------------------"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v27, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$3;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$3;-><init>(Ljava/lang/Object;)V

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const-string/jumbo v27, "---------------------------------------------"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43f
    .catch Ljava/lang/Exception; {:try_start_3e7 .. :try_end_43f} :catch_770
    .catchall {:try_start_3e7 .. :try_end_43f} :catchall_717

    :cond_43f
    :goto_43f
    :try_start_43f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    :cond_44c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-nez v27, :cond_482

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_461
    .catch Ljava/lang/Exception; {:try_start_43f .. :try_end_461} :catch_24c
    .catchall {:try_start_43f .. :try_end_461} :catchall_717

    move-result v27

    if-eqz v27, :cond_482

    :try_start_464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->touchFocusTransferred()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_482
    .catch Landroid/os/RemoteException; {:try_start_464 .. :try_end_482} :catch_a2b
    .catch Ljava/lang/Exception; {:try_start_464 .. :try_end_482} :catch_24c
    .catchall {:try_start_464 .. :try_end_482} :catchall_717

    :cond_482
    :goto_482
    if-eqz v17, :cond_83d

    :try_start_484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-eqz v27, :cond_83d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_776

    const/4 v7, 0x1

    :goto_4d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_779

    const/4 v6, 0x1

    :goto_4f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_77c

    const/4 v5, 0x1

    :goto_514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_77f

    const/4 v4, 0x1

    :goto_533
    if-eqz v7, :cond_56f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_782

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_56f
    :goto_56f
    if-eqz v6, :cond_5ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x4

    if-eqz v27, :cond_7b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_5ab
    :goto_5ab
    if-eqz v5, :cond_5e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_7de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_5e7
    :goto_5e7
    if-eqz v4, :cond_623

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x4

    if-eqz v27, :cond_80c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_623
    :goto_623
    if-eqz v7, :cond_627

    if-nez v6, :cond_62b

    :cond_627
    if-eqz v5, :cond_83a

    if-eqz v4, :cond_83a

    :cond_62b
    const/4 v15, 0x1

    :goto_62c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6fc

    move/from16 v0, v21

    float-to-int v11, v0

    move/from16 v0, v22

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-nez v27, :cond_6fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_687

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v11, v0, Landroid/graphics/Rect;->left:I

    :cond_687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v11, v0, :cond_6a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v11, v0, Landroid/graphics/Rect;->right:I

    :cond_6a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_6cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v12, v0, Landroid/graphics/Rect;->top:I

    :cond_6cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v12, v0, :cond_6ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_6fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V
    :try_end_715
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_715} :catch_24c
    .catchall {:try_start_484 .. :try_end_715} :catchall_717

    goto/16 :goto_3e

    :catchall_717
    move-exception v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v27

    :catchall_722
    move-exception v27

    :try_start_723
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :cond_728
    const/16 v17, 0x0

    goto/16 :goto_304

    :cond_72c
    const/16 v17, 0x0

    goto/16 :goto_304

    :cond_730
    const/16 v18, 0x0

    goto/16 :goto_34d

    :catchall_734
    move-exception v27

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :cond_73a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3ca

    :catch_770
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_43f

    :cond_776
    const/4 v7, 0x0

    goto/16 :goto_4d6

    :cond_779
    const/4 v6, 0x0

    goto/16 :goto_4f5

    :cond_77c
    const/4 v5, 0x0

    goto/16 :goto_514

    :cond_77f
    const/4 v4, 0x0

    goto/16 :goto_533

    :cond_782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_56f

    :cond_7b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5ab

    :cond_7de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5e7

    :cond_80c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_623

    :cond_83a
    const/4 v15, 0x0

    goto/16 :goto_62c

    :cond_83d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3e

    const-string/jumbo v27, "wm.TaskPositioner.resizeTask"

    const-wide/16 v28, 0x20

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_863
    .catch Ljava/lang/Exception; {:try_start_723 .. :try_end_863} :catch_24c
    .catchall {:try_start_723 .. :try_end_863} :catchall_717

    :try_start_863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v27 .. v30}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_892
    .catch Landroid/os/RemoteException; {:try_start_863 .. :try_end_892} :catch_a28
    .catch Ljava/lang/Exception; {:try_start_863 .. :try_end_892} :catch_24c
    .catchall {:try_start_863 .. :try_end_892} :catchall_717

    :goto_892
    const-wide/16 v28, 0x20

    :try_start_894
    invoke-static/range {v28 .. v29}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_3e

    :pswitch_899
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_8d2

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_UP @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-nez v27, :cond_908

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_8e7
    .catch Ljava/lang/Exception; {:try_start_894 .. :try_end_8e7} :catch_24c
    .catchall {:try_start_894 .. :try_end_8e7} :catchall_717

    move-result v27

    if-eqz v27, :cond_908

    :try_start_8ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->touchFocusTransferred()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_908
    .catch Landroid/os/RemoteException; {:try_start_8ea .. :try_end_908} :catch_a25
    .catch Ljava/lang/Exception; {:try_start_8ea .. :try_end_908} :catch_24c
    .catchall {:try_start_8ea .. :try_end_908} :catchall_717

    :cond_908
    :goto_908
    :try_start_908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_3e

    :pswitch_915
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_94e

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_CANCEL @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_3e

    :catchall_95b
    move-exception v27

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27
    :try_end_961
    .catch Ljava/lang/Exception; {:try_start_908 .. :try_end_961} :catch_24c
    .catchall {:try_start_908 .. :try_end_961} :catchall_717

    :catchall_961
    move-exception v27

    :try_start_962
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :catch_967
    move-exception v9

    goto/16 :goto_1f0

    :cond_96a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    const/16 v30, 0x3

    invoke-interface/range {v27 .. v30}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_999
    .catch Landroid/os/RemoteException; {:try_start_962 .. :try_end_999} :catch_967
    .catch Ljava/lang/Exception; {:try_start_962 .. :try_end_999} :catch_24c
    .catchall {:try_start_962 .. :try_end_999} :catchall_717

    goto/16 :goto_130

    :cond_99b
    const/4 v8, 0x1

    goto/16 :goto_14f

    :cond_99e
    const/16 v19, 0x0

    goto/16 :goto_1a3

    :cond_9a2
    const/16 v19, 0x0

    goto/16 :goto_1a3

    :cond_9a6
    :try_start_9a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v27

    if-eqz v27, :cond_9c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DimLayer;->isDimming()Z
    :try_end_9bf
    .catchall {:try_start_9a6 .. :try_end_9bf} :catchall_9c6

    move-result v19

    goto/16 :goto_1a3

    :cond_9c2
    const/16 v19, 0x0

    goto/16 :goto_1a3

    :catchall_9c6
    move-exception v27

    :try_start_9c7
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :cond_9cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    goto/16 :goto_1e7

    :cond_9d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a11

    const/4 v8, 0x0

    :cond_a11
    const/16 v29, 0xcd

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V
    :try_end_a20
    .catch Landroid/os/RemoteException; {:try_start_9c7 .. :try_end_a20} :catch_967
    .catch Ljava/lang/Exception; {:try_start_9c7 .. :try_end_a20} :catch_24c
    .catchall {:try_start_9c7 .. :try_end_a20} :catchall_717

    goto/16 :goto_1f0

    :catch_a22
    move-exception v9

    goto/16 :goto_a3

    :catch_a25
    move-exception v13

    goto/16 :goto_908

    :catch_a28
    move-exception v9

    goto/16 :goto_892

    :catch_a2b
    move-exception v13

    goto/16 :goto_482

    :pswitch_data_a2e
    .packed-switch 0x0
        :pswitch_211
        :pswitch_899
        :pswitch_265
        :pswitch_915
    .end packed-switch
.end method
