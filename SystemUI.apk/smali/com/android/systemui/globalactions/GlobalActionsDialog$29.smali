.class Lcom/android/systemui/globalactions/GlobalActionsDialog$29;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "in onPress of Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get62()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get59()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "0003"

    const-string/jumbo v2, "ClearCoverRestart"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "0002"

    const-string/jumbo v2, "Restart"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v1, 0x10403d3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void

    :cond_3e
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string/jumbo v0, "persist.sys.shutdown"

    const-string/jumbo v1, "GARB"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get55(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get18(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get65()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get61()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6d
    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set19(Z)Z
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_72

    monitor-exit v0

    :goto_71
    return-void

    :catchall_72
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_75
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set20(Z)Z

    goto :goto_71
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
