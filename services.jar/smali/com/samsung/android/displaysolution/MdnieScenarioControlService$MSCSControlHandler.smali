.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c4

    :goto_7
    return-void

    :pswitch_8
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    goto :goto_7

    :pswitch_16
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_7

    :catch_21
    move-exception v0

    goto :goto_7

    :pswitch_23
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_7

    :pswitch_35
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_7

    :pswitch_3b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_7

    :pswitch_41
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    goto :goto_7

    :pswitch_4d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    goto :goto_7

    :pswitch_59
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "LOW"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_62
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "MID"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "HIGH"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_74
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo v2, "OUT"

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_7d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_7

    :pswitch_83
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_8a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_91
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_98
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_9f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_a6
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_ad
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_7

    :pswitch_b4
    :try_start_b4
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get20(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(I)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_be} :catch_c0

    goto/16 :goto_7

    :catch_c0
    move-exception v0

    goto/16 :goto_7

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_16
        :pswitch_98
        :pswitch_3b
        :pswitch_41
        :pswitch_7d
        :pswitch_23
        :pswitch_2f
        :pswitch_35
        :pswitch_83
        :pswitch_8a
        :pswitch_91
        :pswitch_4d
        :pswitch_59
        :pswitch_62
        :pswitch_6b
        :pswitch_74
        :pswitch_9f
        :pswitch_a6
        :pswitch_ad
        :pswitch_b4
    .end packed-switch
.end method
