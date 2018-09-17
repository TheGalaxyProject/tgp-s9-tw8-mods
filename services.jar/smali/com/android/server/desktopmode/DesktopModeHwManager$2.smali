.class Lcom/android/server/desktopmode/DesktopModeHwManager$2;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onInputDeviceChanged(Z)V

    goto :goto_12

    :cond_23
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onInputDeviceChanged(Z)V

    goto :goto_12

    :cond_23
    return-void
.end method
