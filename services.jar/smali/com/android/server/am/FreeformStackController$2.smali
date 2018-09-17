.class Lcom/android/server/am/FreeformStackController$2;
.super Landroid/content/BroadcastReceiver;
.source "FreeformStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreeformStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreeformStackController;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreeformStackController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v3, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v3}, Lcom/android/server/am/FreeformStackController;->-get0(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v5}, Lcom/android/server/am/FreeformStackController;->-get1(Lcom/android/server/am/FreeformStackController;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/am/FreeformStackController;->-wrap1(Lcom/android/server/am/FreeformStackController;Z)V

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v3}, Lcom/android/server/am/FreeformStackController;->-get1(Lcom/android/server/am/FreeformStackController;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v3}, Lcom/android/server/am/FreeformStackController;->-get3(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(I)Z
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_5b

    :cond_4d
    :goto_4d
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_54
    return-void

    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/android/server/am/FreeformStackController$2;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v3}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked()Z
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    goto :goto_4d

    :catchall_5b
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method
