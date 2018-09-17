.class Lcom/android/server/desktopmode/DeviceDisplayManager$1;
.super Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;
.source "DeviceDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DeviceDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DeviceDisplayManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDisplayChanged(ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get0(Lcom/android/server/desktopmode/DeviceDisplayManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get1(Lcom/android/server/desktopmode/DeviceDisplayManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get0(Lcom/android/server/desktopmode/DeviceDisplayManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get1(Lcom/android/server/desktopmode/DeviceDisplayManager;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz p1, :cond_24

    const/16 v0, 0x7d0

    :goto_1f
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method onInputDeviceChanged(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get0(Lcom/android/server/desktopmode/DeviceDisplayManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get1(Lcom/android/server/desktopmode/DeviceDisplayManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get0(Lcom/android/server/desktopmode/DeviceDisplayManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->-get1(Lcom/android/server/desktopmode/DeviceDisplayManager;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez p1, :cond_24

    const/16 v0, 0x7d0

    :goto_1f
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onSPenStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;->this$0:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateTouchpadScreen()V

    return-void
.end method
