.class Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap7(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
