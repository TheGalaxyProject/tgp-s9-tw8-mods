.class Lcom/android/server/input/InputManagerService$5;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v4, 0x14

    if-ne v1, v4, :cond_ae

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v1, v6, :cond_13

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v1, v2, :cond_5c

    :cond_13
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v1, v6, :cond_5d

    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_5f

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v4, "set STATE_LOADING_SCREEN_SHOWN enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5, v8, v3}, Lcom/android/server/input/InputManagerService;->-wrap12(JII)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    const/4 v1, -0x1

    invoke-static {v4, v5, v7, v1}, Lcom/android/server/input/InputManagerService;->-wrap12(JII)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x3

    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->-set5(Lcom/android/server/input/InputManagerService;I)I

    :goto_3c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lcom/android/server/input/InputManagerService;->-wrap9(JZ)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->-set2(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get6(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-wrap7(Lcom/android/server/input/InputManagerService;)V

    :goto_57
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const/4 v0, 0x0

    goto :goto_18

    :cond_5f
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v4, "set STATE_LOADING_SCREEN_SHOWN disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->-set5(Lcom/android/server/input/InputManagerService;I)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5, v8, v7}, Lcom/android/server/input/InputManagerService;->-wrap12(JII)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5, v7, v6}, Lcom/android/server/input/InputManagerService;->-wrap12(JII)V

    goto :goto_3c

    :cond_80
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get12(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_87
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get10(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    if-le v1, v2, :cond_97

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->-wrap24(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_ab

    :cond_95
    :goto_95
    monitor-exit v3

    goto :goto_57

    :cond_97
    :try_start_97
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get10(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    if-ne v1, v2, :cond_95

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get11(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->-wrap24(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_ab

    goto :goto_95

    :catchall_ab
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_ae
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v4, 0x32

    if-ne v1, v4, :cond_5c

    const-string/jumbo v1, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "STATE_CONFIG_CHANGE_FINISHED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v1, v6, :cond_ec

    move v1, v2

    :goto_d5
    iget v4, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v4, v7, :cond_ee

    :goto_d9
    or-int v0, v1, v2

    invoke-static {v0}, Landroid/view/PointerIcon;->setDexMode(Z)V

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->-wrap8(J)V

    goto/16 :goto_5c

    :cond_ec
    move v1, v3

    goto :goto_d5

    :cond_ee
    move v2, v3

    goto :goto_d9
.end method
