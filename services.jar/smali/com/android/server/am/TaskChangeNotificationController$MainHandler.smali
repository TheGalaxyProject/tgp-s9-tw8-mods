.class Lcom/android/server/am/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_fa

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->-get17(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->-get18(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get16(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_30
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get9(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get14(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_48
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get11(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_54
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get10(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_60
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get4(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get13(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_78
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get3(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto :goto_5

    :pswitch_84
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get5(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_91
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get6(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_9e
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get8(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_ab
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get7(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_b8
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get1(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_c5
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get0(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_d2
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get2(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_df
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get12(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_ec
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->-get15(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->-wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_5

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_6
        :pswitch_24
        :pswitch_78
        :pswitch_91
        :pswitch_ab
        :pswitch_b8
        :pswitch_c5
        :pswitch_30
        :pswitch_3c
        :pswitch_48
        :pswitch_54
        :pswitch_60
        :pswitch_6c
        :pswitch_df
        :pswitch_ec
        :pswitch_9e
        :pswitch_84
        :pswitch_d2
    .end packed-switch
.end method
