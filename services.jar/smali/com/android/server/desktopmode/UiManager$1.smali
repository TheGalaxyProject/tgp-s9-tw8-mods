.class Lcom/android/server/desktopmode/UiManager$1;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-get3(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/UiManager;->-set1(Lcom/android/server/desktopmode/UiManager;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/UiManager;->-set0(Lcom/android/server/desktopmode/UiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-get2(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/InternalCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/InternalCallbackList;->notifyCallbacks()V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_46

    monitor-exit v1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected IDesktopModeUiService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->-get1(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-get3(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/UiManager;->-set1(Lcom/android/server/desktopmode/UiManager;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/UiManager;->-set0(Lcom/android/server/desktopmode/UiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-get2(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/InternalCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/InternalCallbackList;->clear()V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    monitor-exit v1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
