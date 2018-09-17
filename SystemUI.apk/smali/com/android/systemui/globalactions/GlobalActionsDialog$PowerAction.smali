.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get70()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x1080a9a

    :goto_b
    const v1, 0x10403a5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void

    :cond_12
    const v0, 0x1080a97

    goto :goto_b
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get70()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get27(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get55(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap10(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get29(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v1, 0x10403d0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v1, 0x10403d1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void

    :cond_44
    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "in onPress of PowerOFF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get62()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get59()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "0003"

    const-string/jumbo v2, "ClearCoverPowerOff"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "0002"

    const-string/jumbo v2, "PowerOff"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string/jumbo v0, "persist.sys.shutdown"

    const-string/jumbo v1, "GASD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get55(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->shutdown()V

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get62()Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get65()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get61()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_9e
    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set19(Z)Z
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a3

    monitor-exit v0

    :cond_a2
    :goto_a2
    return-void

    :catchall_a3
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_a6
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set20(Z)Z

    goto :goto_a2
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
