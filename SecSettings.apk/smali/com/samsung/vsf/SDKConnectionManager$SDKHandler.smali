.class Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
.super Landroid/os/Handler;
.source "SDKConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SDKConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vsf/SDKConnectionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    # invokes: Lcom/samsung/vsf/SDKConnectionManager;->handleServiceControl(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/samsung/vsf/SDKConnectionManager;->access$900(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Message;)V

    :goto_a
    return-void

    :pswitch_b
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    # invokes: Lcom/samsung/vsf/SDKConnectionManager;->connect()V
    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$700(Lcom/samsung/vsf/SDKConnectionManager;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_a

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    # invokes: Lcom/samsung/vsf/SDKConnectionManager;->notifyConnectionError()V
    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$500(Lcom/samsung/vsf/SDKConnectionManager;)V

    goto :goto_a

    :pswitch_1b
    :try_start_1b
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    # invokes: Lcom/samsung/vsf/SDKConnectionManager;->disconnect()V
    invoke-static {v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$800(Lcom/samsung/vsf/SDKConnectionManager;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_11

    goto :goto_a

    nop

    :pswitch_data_22
    .packed-switch 0x9
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method
