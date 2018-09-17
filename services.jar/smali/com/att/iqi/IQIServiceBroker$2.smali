.class Lcom/att/iqi/IQIServiceBroker$2;
.super Landroid/os/Handler;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->-wrap1(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->-wrap0(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->-get1(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->-get1(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :pswitch_2b
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->-wrap2(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$2;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->tryConnecting()V

    goto :goto_5

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_6
    .end packed-switch
.end method
