.class final Lcom/android/systemui/volume/VolumeDialogImpl$H;
.super Landroid/os/Handler;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    goto :goto_6

    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_6

    :pswitch_17
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_6

    :pswitch_21
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_6

    :pswitch_28
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_31

    const/4 v0, 0x1

    :cond_31
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap6(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V

    goto :goto_6

    :pswitch_35
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    goto :goto_6

    :pswitch_3b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get18(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto :goto_6

    :pswitch_47
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap9(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    goto :goto_6

    :pswitch_4d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    goto :goto_6

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_17
        :pswitch_21
        :pswitch_28
        :pswitch_35
        :pswitch_3b
        :pswitch_47
        :pswitch_4d
    .end packed-switch
.end method
