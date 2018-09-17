.class Lcom/android/server/desktopmode/DesktopModeHwManager$1;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get6(Lcom/android/server/desktopmode/DesktopModeHwManager;)I

    move-result v2

    if-ne p1, v2, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayChanged(ZZ)V

    goto :goto_1b

    :cond_2d
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get8(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayUpdated()V

    goto :goto_3f

    :cond_4f
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get6(Lcom/android/server/desktopmode/DesktopModeHwManager;)I

    move-result v2

    if-ne p1, v2, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, v3, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayChanged(ZZ)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
