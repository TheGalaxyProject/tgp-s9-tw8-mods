.class final Lcom/android/server/wm/MultiWindowManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MULTIWINDOW_BEHAVIOR_LOG:I = 0x1

.field public static final MULTIWINDOW_CHANGE_FROM_FREEFORM_TO_SPLIT:I = 0xcd

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_FROM_TAP_OUTSIDE:I = 0x12e

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_FROM_TAP_OUTSIDE_TIMEOUT:I = 0x12f

.field public static final MULTIWINDOW_DOCKING_CANCEL_FREEFORM_TIMEOUT:I = 0x6b

.field public static final MULTIWINDOW_ENSURE_DOCKED_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_FAKED_RELAUNCH_ANIMATION_FINISHED:I = 0x69

.field public static final MULTIWINDOW_FAKED_RELAUNCH_ANIMATION_TIMEOUT:I = 0x6a

.field public static final MULTIWINDOW_FREEFORM_RELAUNCH_ANIM_FINISHED:I = 0x67

.field public static final MULTIWINDOW_FREEFORM_RELAUNCH_ANIM_TIMEOUT:I = 0x68

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK:I = 0x65

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK_TIMEOUT:I = 0x66

.field public static final MULTIWINDOW_SHOW_GUIDE_WINDOW_FROM_TAP_OUTSIDE:I = 0x12d

.field public static final MULTIWINDOW_SWAP_ANIMATION_TIMEOUT:I = 0xca

.field public static final NOTIFY_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0xcc

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0xcb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_2fc

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v18, "app_id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4d

    const-string/jumbo v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v5, v0, v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_4d
    const-string/jumbo v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v5, v0, v13, v11}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    :sswitch_75
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    :try_start_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveTaskToFreeformStack(ILandroid/graphics/Rect;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_92} :catch_94

    goto/16 :goto_9

    :catch_94
    move-exception v9

    goto/16 :goto_9

    :sswitch_97
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_ae
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v18, "MultiWindowManagerInternal"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "MULTIWINDOW_MOVE_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_ae .. :try_end_10c} :catchall_112

    :cond_10c
    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_9

    :catchall_112
    move-exception v18

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v18

    :sswitch_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v18

    const-string/jumbo v19, "complete"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v18

    const-string/jumbo v19, "timeout"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v18, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v18

    const-string/jumbo v20, "complete"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    :try_end_185
    .catchall {:try_start_165 .. :try_end_185} :catchall_18b

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_9

    :catchall_18b
    move-exception v18

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v18

    :sswitch_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_1a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v18

    const-string/jumbo v20, "timeout"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    :try_end_1b9
    .catchall {:try_start_1a2 .. :try_end_1b9} :catchall_1bf

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_9

    :catchall_1bf
    move-exception v18

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v18

    :sswitch_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto/16 :goto_9

    :sswitch_1ec
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21e

    const/4 v4, 0x1

    :goto_1fb
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    :try_start_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_210
    .catch Landroid/os/RemoteException; {:try_start_201 .. :try_end_210} :catch_212

    goto/16 :goto_9

    :catch_212
    move-exception v9

    const-string/jumbo v18, "MultiWindowManagerInternal"

    const-string/jumbo v19, "Failed to notify EnsureDockedResize"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_21e
    const/4 v4, 0x0

    goto :goto_1fb

    :sswitch_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_231
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenFreezeAnimationController;->timeout()V
    :try_end_241
    .catchall {:try_start_231 .. :try_end_241} :catchall_247

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_9

    :catchall_247
    move-exception v18

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v18

    :sswitch_24d
    :try_start_24d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyScreenFreezeAnimationFinished()V
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_24d .. :try_end_25a} :catch_25c

    goto/16 :goto_9

    :catch_25c
    move-exception v9

    const-string/jumbo v18, "MultiWindowManagerInternal"

    const-string/jumbo v19, "Failed to notify ScreenFreezeAnimationFinished."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_268
    :try_start_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyDockedTaskToBackTransitionFinished()V
    :try_end_275
    .catch Landroid/os/RemoteException; {:try_start_268 .. :try_end_275} :catch_277

    goto/16 :goto_9

    :catch_277
    move-exception v9

    const-string/jumbo v18, "MultiWindowManagerInternal"

    const-string/jumbo v19, "Failed to notify DockedTaskToBackTransitionFinished."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_283
    :try_start_283
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveTaskToDockedOrFullscreenStack(II)V
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_283 .. :try_end_29e} :catch_2a0

    goto/16 :goto_9

    :catch_2a0
    move-exception v9

    const-string/jumbo v18, "MultiWindowManagerInternal"

    const-string/jumbo v19, "Failed to run split-mode from freeform."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_2ac
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/wm/Task;

    if-nez v15, :cond_2b5

    return-void

    :cond_2b5
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v18

    const-string/jumbo v19, "tap_outside"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/FreeformStackWindowController;->showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v18

    const-string/jumbo v19, "tap_outside"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/FreeformStackWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v18

    const-string/jumbo v19, "timeout"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/FreeformStackWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_2fc
    .sparse-switch
        0x1 -> :sswitch_a
        0x65 -> :sswitch_75
        0x66 -> :sswitch_97
        0x67 -> :sswitch_118
        0x68 -> :sswitch_136
        0x69 -> :sswitch_154
        0x6a -> :sswitch_191
        0x6b -> :sswitch_1c5
        0xc9 -> :sswitch_1ec
        0xca -> :sswitch_220
        0xcb -> :sswitch_24d
        0xcc -> :sswitch_268
        0xcd -> :sswitch_283
        0x12d -> :sswitch_2ac
        0x12e -> :sswitch_2d7
        0x12f -> :sswitch_2e9
    .end sparse-switch
.end method
