.class Lcom/android/server/desktopmode/UiManager$5;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
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

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->-get1(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v2

    if-eqz v2, :cond_1f

    :try_start_9
    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->-get2(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/InternalCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/InternalCallbackList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->-get1(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasUiElement()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_48

    move-result v1

    :cond_1f
    :goto_1f
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postUnbindServiceRunnable(), hasElement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-nez v1, :cond_45

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/UiManager;->unbindUiService()V

    :cond_45
    return-void

    :cond_46
    const/4 v1, 0x1

    goto :goto_1f

    :catch_48
    move-exception v0

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager$5;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/UiManager;->-wrap0(Lcom/android/server/desktopmode/UiManager;Landroid/os/RemoteException;)V

    goto :goto_1f
.end method
