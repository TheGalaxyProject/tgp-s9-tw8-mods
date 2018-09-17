.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 19

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_5c0

    const/4 v11, 0x1

    return v11

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap6(Lcom/android/server/connectivity/NetworkMonitor;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "Connected"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_57

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x25064

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap10(Lcom/android/server/connectivity/NetworkMonitor;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_57
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v11, 0x1

    return v11

    :sswitch_68
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x7

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap6(Lcom/android/server/connectivity/NetworkMonitor;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "Disconnected"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_ed

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "unregister CaptivePortalReceiver"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    :try_start_8e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_a1} :catch_cd

    :goto_a1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set12(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get42(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    const/4 v11, 0x1

    return v11

    :catch_cd
    move-exception v3

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IllegalArgumentException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a1

    :cond_ed
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v11

    if-eqz v11, :cond_112

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set19(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    :cond_112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    const/4 v11, 0x1

    return v11

    :sswitch_11b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Forcing reevaluation for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set24(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v11, 0x1

    return v11

    :sswitch_156
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CaptivePortal App responded with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set25(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    packed-switch v11, :pswitch_data_5f2

    :goto_184
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    const/4 v11, 0x1

    return v11

    :pswitch_18e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_1b3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get40(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x25068

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap11(Lcom/android/server/connectivity/NetworkMonitor;II)V

    goto :goto_184

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x82008

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    goto :goto_184

    :pswitch_1c0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set9(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_1dd

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x25068

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap11(Lcom/android/server/connectivity/NetworkMonitor;II)V

    :cond_1dd
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get40(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_184

    :pswitch_1ed
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set9(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_247

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v13

    const v14, 0x82002

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set26(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v12, 0x25068

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap11(Lcom/android/server/connectivity/NetworkMonitor;II)V

    goto/16 :goto_184

    :cond_247
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set26(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v13

    const v14, 0x82002

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set24(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_184

    :sswitch_28b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_326

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get32(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v12, v12, Landroid/net/Network;->netId:I

    add-int/lit8 v12, v12, 0x64

    const v13, 0x8200a

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v12, v15}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    if-ne v11, v12, :cond_326

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "SHOW normal notification"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "reason"

    const/4 v12, 0x2

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get32(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v12, v12, Landroid/net/Network;->netId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    const v14, 0x8200a

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_326
    const/4 v11, 0x1

    return v11

    :sswitch_328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v11

    if-eqz v11, :cond_349

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_5fc

    :cond_349
    :goto_349
    const/4 v11, 0x1

    return v11

    :pswitch_34b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "RESULT_VALID"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v13

    const v14, 0x82002

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get40(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_349

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get40(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_349

    :pswitch_39e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "RESULT_INVALID"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v13

    const v14, 0x82002

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v13, v0}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_3f8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v12, 0x3e8

    const v14, 0x82006

    invoke-virtual {v11, v14, v12, v13}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_349

    :pswitch_406
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "RESULT_CAPTIVE_PORTAL"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    if-eqz v10, :cond_469

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "detectedUrl"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "redirectUrl"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set2(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get5(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_469

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get5(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "sending mdm captive intent from WifiConnectivityMonitor"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_469
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_349

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_349

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_349

    :sswitch_4a8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get42(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    if-ne v2, v11, :cond_4f8

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    if-nez v11, :cond_4d8

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Async - Half connection with WWSM established"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get42(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x11001

    invoke-virtual {v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :goto_4d6
    const/4 v11, 0x1

    return v11

    :cond_4d8
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Async - Connection failure, error="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d6

    :cond_4f8
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Async - Half connection to unknown channel"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d6

    :sswitch_503
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_51e

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Async - Send failed, client connection lost"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_514
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->-set28(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    const/4 v11, 0x1

    return v11

    :cond_51e
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Async - Client connection lost reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_514

    :sswitch_53e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v12, "CMD_ACCEPT_UNVALIDATED_WIFI"

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkMonitor;->-get32(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v14, v14, Landroid/net/Network;->netId:I

    const v15, 0x82012

    invoke-virtual {v12, v15, v13, v14}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    if-eq v11, v12, :cond_5a3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get32(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5a3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->-get18(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_5a3
    const/4 v11, 0x1

    return v11

    :sswitch_5a5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get42(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    if-eqz v11, :cond_5be

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkMonitor;->-get42(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    :cond_5be
    const/4 v11, 0x1

    return v11

    :sswitch_data_5c0
    .sparse-switch
        0x11000 -> :sswitch_4a8
        0x11004 -> :sswitch_503
        0x25067 -> :sswitch_328
        0x2506b -> :sswitch_5a5
        0x2506c -> :sswitch_5a5
        0x82001 -> :sswitch_29
        0x82007 -> :sswitch_68
        0x82008 -> :sswitch_11b
        0x82009 -> :sswitch_156
        0x8200c -> :sswitch_11b
        0x82011 -> :sswitch_28b
        0x82012 -> :sswitch_53e
    .end sparse-switch

    :pswitch_data_5f2
    .packed-switch 0x0
        :pswitch_18e
        :pswitch_1ed
        :pswitch_1c0
    .end packed-switch

    :pswitch_data_5fc
    .packed-switch 0x0
        :pswitch_34b
        :pswitch_39e
        :pswitch_406
    .end packed-switch
.end method
