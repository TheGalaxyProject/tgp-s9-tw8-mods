.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;
.super Landroid/os/Handler;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/16 v6, 0x3eb

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_13c

    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_EMPTY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_CHANGE_NETWORK_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_13

    :pswitch_36
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_SET_PREFERRED_NETWORK_TYPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_13

    :pswitch_58
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_61
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_DELAY_DATASERVICE_SET"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get21(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result v1

    if-nez v1, :cond_bd

    const/4 v0, 0x1

    :goto_7b
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get15(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get15(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    const/16 v5, 0x3ee

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    :cond_bd
    const/4 v0, 0x0

    goto :goto_7b

    :cond_bf
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e7
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_13

    :pswitch_fa
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "MESSAGE_DELAY_DATASERVICE_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_126
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_13

    nop

    :pswitch_data_13c
    .packed-switch 0x3e9
        :pswitch_14
        :pswitch_36
        :pswitch_61
        :pswitch_fa
        :pswitch_58
    .end packed-switch
.end method
