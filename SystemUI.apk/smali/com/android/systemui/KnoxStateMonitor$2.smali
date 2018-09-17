.class Lcom/android/systemui/KnoxStateMonitor$2;
.super Landroid/os/Handler;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_aa

    :pswitch_5
    const-string/jumbo v0, "KnoxStateMonitor"

    const-string/jumbo v1, "ignore message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap9(Lcom/android/systemui/KnoxStateMonitor;Z)V

    goto :goto_e

    :pswitch_1d
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap2(Lcom/android/systemui/KnoxStateMonitor;I)V

    goto :goto_e

    :pswitch_2b
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap0(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_31
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap4(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_37
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_3d
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap5(Lcom/android/systemui/KnoxStateMonitor;I)V

    goto :goto_e

    :pswitch_4b
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap7(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_51
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap11(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_57
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap10(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_5d
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap14(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_63
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap15(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_69
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap16(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_6f
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap20(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_75
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap19(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_7b
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap17(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_81
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap18(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_87
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap12(Lcom/android/systemui/KnoxStateMonitor;)V

    goto :goto_e

    :pswitch_8d
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap8(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_e

    :pswitch_94
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap1(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_e

    :pswitch_9b
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap13(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_e

    :pswitch_a2
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$2;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-wrap3(Lcom/android/systemui/KnoxStateMonitor;)V

    goto/16 :goto_e

    nop

    :pswitch_data_aa
    .packed-switch 0x138a
        :pswitch_f
        :pswitch_1d
        :pswitch_2b
        :pswitch_31
        :pswitch_5
        :pswitch_37
        :pswitch_3d
        :pswitch_4b
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_63
        :pswitch_69
        :pswitch_6f
        :pswitch_5
        :pswitch_75
        :pswitch_7b
        :pswitch_81
        :pswitch_87
        :pswitch_8d
        :pswitch_94
        :pswitch_9b
        :pswitch_a2
    .end packed-switch
.end method
