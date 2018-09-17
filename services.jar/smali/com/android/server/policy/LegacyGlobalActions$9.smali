.class Lcom/android/server/policy/LegacyGlobalActions$9;
.super Landroid/content/BroadcastReceiver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/16 v10, 0x10

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "LegacyGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBixbyReceiver : onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "actionType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "LegacyGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_BIXBY_GLOBAL_ACTIONS receivedwhich = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "poweroff"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v4

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get31(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get46(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    if-ne v4, v5, :cond_7e

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "power off 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get46(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_8d

    return-void

    :cond_8d
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "power off 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownByBixby()V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7d

    :cond_b1
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v4

    if-eqz v4, :cond_e1

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get31(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get51(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    if-ne v4, v5, :cond_e1

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "restart 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7d

    :cond_e1
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get51(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_f0

    return-void

    :cond_f0
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "restart 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootByBixby()V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_115
    const-string/jumbo v4, "safemode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_182

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v4

    if-eqz v4, :cond_14e

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get28(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_14e

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get31(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get46(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    if-ne v4, v5, :cond_14e

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "safemode 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_14e
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get46(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_15d

    return-void

    :cond_15d
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "safemode 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeModeByBixby()V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_182
    const-string/jumbo v4, "confirmed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c1

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_1ad

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "confirm 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_1ad
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "confirm 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    goto/16 :goto_7d

    :cond_1c1
    const-string/jumbo v4, "cancel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_230

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_21c

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v4

    if-eqz v4, :cond_208

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "cancel 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_1fd

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1f3
    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-set18(Z)Z

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-set6(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    goto/16 :goto_7d

    :cond_1fd
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f3

    :cond_208
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "cancel 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_21c
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "cancel 5"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    goto/16 :goto_7d

    :cond_230
    const-string/jumbo v4, "emergencyOn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_299

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get20(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_248

    return-void

    :cond_248
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "emergencyOn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "enabled"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "skipdialog"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "flag"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d

    :cond_299
    const-string/jumbo v4, "emergencyOff"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "emergencyOff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "enabled"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "flag"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7d
.end method
