.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_ACTIVITY_STACK_ATTACHED:I = 0x1

.field public static final NOTIFY_ACTIVITY_STACK_DETACHED:I = 0x2

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_ONE_APP_FAIL_TOAST:I = 0xd1

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_OTHER_WORKSPACE_FAIL_TOAST:I = 0xd4

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_SECURE_FOLDER_FAIL_TOAST:I = 0xd3

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_TWO_APP_FAIL_TOAST:I = 0xd2

.field public static final NOTIFY_APPLY_FREEFORM_MINIMIZE_POLICY:I = 0x68

.field public static final NOTIFY_AUTO_RESIZE_STATE_CHANGED:I = 0xca

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0xcd

.field public static final NOTIFY_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0xd0

.field public static final NOTIFY_FOCUS_STACK_CHANGED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_STATE_CHANGED:I = 0x65

.field public static final NOTIFY_FREEFORM_WINDOW_ANIMATION_END:I = 0x66

.field public static final NOTIFY_MULTIWINDOW_ENABLE_CHANGED:I = 0xcb

.field public static final NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM:I = 0x69

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0xcc

.field public static final NOTIFY_SNAP_WINDOW_DISMISSED:I = 0xce

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE:I = 0xcf

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE_DURATON:I = 0x7d0

.field public static final SCHEDULE_MINIMIZE_ALL:I = 0x67

.field public static final SOURCE_RECORD_NOT_SUPPORT_FREEFORM:I = 0x6a


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 57

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_6cc

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v35, 0x0

    :goto_3f
    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_69

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_66

    :try_start_55
    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_5b
    .catchall {:try_start_55 .. :try_end_58} :catchall_66

    :goto_58
    add-int/lit8 v35, v35, 0x1

    goto :goto_3f

    :catch_5b
    move-exception v30

    :try_start_5c
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "onStateChanged, RemoteException occured"

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_66

    goto :goto_58

    :catchall_66
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_69
    :try_start_69
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_66

    :goto_74
    monitor-exit v13

    goto :goto_7

    :sswitch_76
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_7f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v53, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v35, 0x0

    :goto_a7
    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_d5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_bd
    .catchall {:try_start_7f .. :try_end_bd} :catchall_d2

    :try_start_bd
    move/from16 v0, v53

    move-object/from16 v1, v48

    invoke-interface {v5, v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onAnimationEnd(IILandroid/graphics/Rect;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c4} :catch_c7
    .catchall {:try_start_bd .. :try_end_c4} :catchall_d2

    :goto_c4
    add-int/lit8 v35, v35, 0x1

    goto :goto_a7

    :catch_c7
    move-exception v30

    :try_start_c8
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "onAnimationEnd, RemoteException occured"

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_d2

    goto :goto_c4

    :catchall_d2
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_e0
    .catchall {:try_start_d5 .. :try_end_e0} :catchall_d2

    goto :goto_74

    :sswitch_e1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked()Z

    goto/16 :goto_7

    :sswitch_ee
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_fb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/server/am/FreeformStackController;->applyFreeformMinimizePolicyLocked(I)V
    :try_end_109
    .catchall {:try_start_fb .. :try_end_109} :catchall_10f

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_10f
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_115
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_150

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NOTIFY_ACTIVITY_STACK_ATTACHED, stackId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", displayId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_150
    const/4 v12, 0x2

    move/from16 v0, v46

    if-ne v0, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v12

    const-string/jumbo v13, "freeform attached"

    invoke-virtual {v12, v13}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_169
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_1a4

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NOTIFY_ACTIVITY_STACK_DETACHED, stackId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", displayId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a4
    const/4 v12, 0x2

    move/from16 v0, v46

    if-ne v0, v12, :cond_1bd

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v12

    const-string/jumbo v13, "freeform detached"

    invoke-virtual {v12, v13}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1bd
    const/4 v12, 0x3

    move/from16 v0, v46

    if-ne v0, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_1cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ScreenFreezeAnimationManager;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/am/ScreenFreezeAnimationManager;->setSkipScreenFreezeAnimation(Z)V
    :try_end_1da
    .catchall {:try_start_1cb .. :try_end_1da} :catchall_1e0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_1e0
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_1e6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_1ef
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v12

    if-eqz v12, :cond_263

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v14, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v14
    :try_end_211
    .catchall {:try_start_1ef .. :try_end_211} :catchall_26c

    :try_start_211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;
    :try_end_223
    .catchall {:try_start_211 .. :try_end_223} :catchall_269

    :try_start_223
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_253

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM, pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",targetProc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v47

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_253
    if-eqz v47, :cond_263

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    const/4 v14, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v12, v0, v14}, Lcom/android/server/am/FreeformStackController;->cleanUpWaitingProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_263
    .catchall {:try_start_223 .. :try_end_263} :catchall_26c

    :cond_263
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_269
    move-exception v12

    :try_start_26a
    monitor-exit v14

    throw v12
    :try_end_26c
    .catchall {:try_start_26a .. :try_end_26c} :catchall_26c

    :catchall_26c
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_27b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_28f
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_2bf

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_2a5
    .catchall {:try_start_27b .. :try_end_2a5} :catchall_2bc

    :try_start_2a5
    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(I)V
    :try_end_2ac
    .catch Landroid/os/RemoteException; {:try_start_2a5 .. :try_end_2ac} :catch_2af
    .catchall {:try_start_2a5 .. :try_end_2ac} :catchall_2bc

    :goto_2ac
    add-int/lit8 v35, v35, 0x1

    goto :goto_28f

    :catch_2af
    move-exception v30

    :try_start_2b0
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onFocusStackChanged event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2bb
    .catchall {:try_start_2b0 .. :try_end_2bb} :catchall_2bc

    goto :goto_2ac

    :catchall_2bc
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_2bf
    :try_start_2bf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2ca
    .catchall {:try_start_2bf .. :try_end_2ca} :catchall_2bc

    goto/16 :goto_74

    :sswitch_2cc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_2d5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_330

    const/16 v41, 0x1

    :goto_2ec
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_30a
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_343

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_320
    .catchall {:try_start_2d5 .. :try_end_320} :catchall_340

    :try_start_320
    move-object/from16 v0, v36

    move/from16 v1, v21

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    move/from16 v4, v41

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_32d
    .catch Landroid/os/RemoteException; {:try_start_320 .. :try_end_32d} :catch_333
    .catchall {:try_start_320 .. :try_end_32d} :catchall_340

    :goto_32d
    add-int/lit8 v35, v35, 0x1

    goto :goto_30a

    :cond_330
    const/16 v41, 0x0

    goto :goto_2ec

    :catch_333
    move-exception v30

    :try_start_334
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering Auto-Resize state change event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33f
    .catchall {:try_start_334 .. :try_end_33f} :catchall_340

    goto :goto_32d

    :catchall_340
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_343
    :try_start_343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_34e
    .catchall {:try_start_343 .. :try_end_34e} :catchall_340

    goto/16 :goto_74

    :sswitch_350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_359
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_390

    const/16 v38, 0x1

    :goto_362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_370
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_3a3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_386
    .catchall {:try_start_359 .. :try_end_386} :catchall_3a0

    :try_start_386
    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V
    :try_end_38d
    .catch Landroid/os/RemoteException; {:try_start_386 .. :try_end_38d} :catch_393
    .catchall {:try_start_386 .. :try_end_38d} :catchall_3a0

    :goto_38d
    add-int/lit8 v35, v35, 0x1

    goto :goto_370

    :cond_390
    const/16 v38, 0x0

    goto :goto_362

    :catch_393
    move-exception v30

    :try_start_394
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onMultiWindowEnableChanged event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39f
    .catchall {:try_start_394 .. :try_end_39f} :catchall_3a0

    goto :goto_38d

    :catchall_3a0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_3a3
    :try_start_3a3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3ae
    .catchall {:try_start_3a3 .. :try_end_3ae} :catchall_3a0

    goto/16 :goto_74

    :sswitch_3b0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_3b9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_3c7
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_3f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_3dd
    .catchall {:try_start_3b9 .. :try_end_3dd} :catchall_3f0

    :try_start_3dd
    invoke-interface/range {v36 .. v36}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onScreenFreezeAnimationFinished()V
    :try_end_3e0
    .catch Landroid/os/RemoteException; {:try_start_3dd .. :try_end_3e0} :catch_3e3
    .catchall {:try_start_3dd .. :try_end_3e0} :catchall_3f0

    :goto_3e0
    add-int/lit8 v35, v35, 0x1

    goto :goto_3c7

    :catch_3e3
    move-exception v30

    :try_start_3e4
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onScreenFreezeAnimationFinished event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ef
    .catchall {:try_start_3e4 .. :try_end_3ef} :catchall_3f0

    goto :goto_3e0

    :catchall_3f0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_3f3
    :try_start_3f3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3fe
    .catchall {:try_start_3f3 .. :try_end_3fe} :catchall_3f0

    goto/16 :goto_74

    :sswitch_400
    const/16 v43, 0x0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_483

    const/16 v37, 0x1

    :goto_40b
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_416
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v27

    if-eqz v27, :cond_444

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v51

    if-eqz v51, :cond_444

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v52

    if-eqz v52, :cond_444

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v42

    if-eqz v42, :cond_442

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0
    :try_end_442
    .catchall {:try_start_416 .. :try_end_442} :catchall_486

    :cond_442
    const/16 v26, 0x1

    :cond_444
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_45f
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_49c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_475
    .catchall {:try_start_451 .. :try_end_475} :catchall_499

    :try_start_475
    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v26

    move-object/from16 v3, v43

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    :try_end_480
    .catch Landroid/os/RemoteException; {:try_start_475 .. :try_end_480} :catch_48c
    .catchall {:try_start_475 .. :try_end_480} :catchall_499

    :goto_480
    add-int/lit8 v35, v35, 0x1

    goto :goto_45f

    :cond_483
    const/16 v37, 0x0

    goto :goto_40b

    :catchall_486
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :catch_48c
    move-exception v30

    :try_start_48d
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onDockedStackMinimizedChanged event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_498
    .catchall {:try_start_48d .. :try_end_498} :catchall_499

    goto :goto_480

    :catchall_499
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_49c
    :try_start_49c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4a7
    .catchall {:try_start_49c .. :try_end_4a7} :catchall_499

    goto/16 :goto_74

    :sswitch_4a9
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_4b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v45

    const/16 v35, 0x0

    :goto_4cc
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_4fc

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_4e2
    .catchall {:try_start_4b6 .. :try_end_4e2} :catchall_4f9

    :try_start_4e2
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowDismissed(Ljava/lang/String;)V
    :try_end_4e9
    .catch Landroid/os/RemoteException; {:try_start_4e2 .. :try_end_4e9} :catch_4ec
    .catchall {:try_start_4e2 .. :try_end_4e9} :catchall_4f9

    :goto_4e9
    add-int/lit8 v35, v35, 0x1

    goto :goto_4cc

    :catch_4ec
    move-exception v30

    :try_start_4ed
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onSnapWindowDismissed event."

    move-object/from16 v0, v30

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f8
    .catchall {:try_start_4ed .. :try_end_4f8} :catchall_4f9

    goto :goto_4e9

    :catchall_4f9
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_4fc
    :try_start_4fc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_507
    .catchall {:try_start_4fc .. :try_end_507} :catchall_4f9

    goto/16 :goto_74

    :sswitch_509
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_512
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, v28

    invoke-static {v12, v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, v33

    invoke-static {v12, v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    :try_end_543
    .catchall {:try_start_512 .. :try_end_543} :catchall_549

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_549
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_54f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v54

    monitor-enter v54

    :try_start_558
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_567
    .catchall {:try_start_558 .. :try_end_567} :catchall_5a0

    move-result-object v25

    if-nez v25, :cond_56f

    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_56f
    :try_start_56f
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v49

    const/4 v12, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;
    :try_end_57c
    .catchall {:try_start_56f .. :try_end_57c} :catchall_5a0

    if-nez v11, :cond_583

    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_583
    :try_start_583
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_586
    .catchall {:try_start_583 .. :try_end_586} :catchall_5a0

    move-result-object v19

    if-nez v19, :cond_58e

    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_58e
    :try_start_58e
    const-string/jumbo v17, "dockedTaskToBack"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z
    :try_end_59a
    .catchall {:try_start_58e .. :try_end_59a} :catchall_5a0

    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_5a0
    move-exception v12

    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_5a6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const v12, 0x10405b9

    invoke-virtual {v14, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :sswitch_5df
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    const-string/jumbo v12, "dockedAppLabel"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v12, "fullAppLabel"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v31, v14, v15

    const/4 v15, 0x1

    aput-object v44, v14, v15

    const v15, 0x10405ba

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :sswitch_62e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10405bc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :sswitch_65a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const v12, 0x10405bb

    invoke-virtual {v14, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :sswitch_693
    new-instance v23, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v13, 0x103012b

    move-object/from16 v0, v23

    invoke-direct {v0, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10402d7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v50 .. v50}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    nop

    :sswitch_data_6cc
    .sparse-switch
        0x1 -> :sswitch_115
        0x2 -> :sswitch_169
        0x65 -> :sswitch_8
        0x66 -> :sswitch_76
        0x67 -> :sswitch_e1
        0x68 -> :sswitch_ee
        0x69 -> :sswitch_1e6
        0x6a -> :sswitch_693
        0xc9 -> :sswitch_272
        0xca -> :sswitch_2cc
        0xcb -> :sswitch_350
        0xcc -> :sswitch_3b0
        0xcd -> :sswitch_400
        0xce -> :sswitch_4a9
        0xcf -> :sswitch_509
        0xd0 -> :sswitch_54f
        0xd1 -> :sswitch_5a6
        0xd2 -> :sswitch_5df
        0xd3 -> :sswitch_62e
        0xd4 -> :sswitch_65a
    .end sparse-switch
.end method
