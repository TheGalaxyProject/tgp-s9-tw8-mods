.class Lcom/android/server/power/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$haltMode:I

.field final synthetic val$isSystem:Z

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;IZZLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$14;->val$haltMode:I

    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$14;->val$confirm:Z

    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService$14;->val$isSystem:Z

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$14;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$14;->val$haltMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$14;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget v0, p0, Lcom/android/server/power/PowerManagerService$14;->val$haltMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$14;->val$isSystem:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$14;->val$reason:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get55(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->systemReboot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_11

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$14;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$14;->val$confirm:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get55(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_11

    :cond_45
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$14;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$14;->val$confirm:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$14;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get55(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_58
    .catchall {:try_start_31 .. :try_end_58} :catchall_2e

    goto :goto_11
.end method
