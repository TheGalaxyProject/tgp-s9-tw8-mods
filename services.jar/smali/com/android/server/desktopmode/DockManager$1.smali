.class Lcom/android/server/desktopmode/DockManager$1;
.super Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDisplayChanged(ZZ)V
    .registers 5

    if-eqz p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isSupportedDockUsbpdIds()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-wrap2(Lcom/android/server/desktopmode/DockManager;Z)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-wrap2(Lcom/android/server/desktopmode/DockManager;Z)V

    goto :goto_17
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DockManager;->-set3(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0, p2}, Lcom/android/server/desktopmode/DockManager;->-set8(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-wrap1(Lcom/android/server/desktopmode/DockManager;)V

    return-void
.end method
