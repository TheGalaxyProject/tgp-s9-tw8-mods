.class Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleFactorLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get38(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v2, "ScaleFactorLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set28(Lcom/android/server/power/PowerManagerService;F)F

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set27(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set10(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap67(Lcom/android/server/power/PowerManagerService;)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2f

    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method