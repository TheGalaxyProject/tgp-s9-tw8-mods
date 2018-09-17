.class Lcom/samsung/accessory/manager/SAccessoryManager$2;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_1e

    :goto_4
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get1(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_12
    const/16 v0, 0xa

    goto :goto_4

    :pswitch_15
    const/16 v0, 0xb

    goto :goto_4

    :pswitch_18
    const/16 v0, 0xc

    goto :goto_4

    :pswitch_1b
    const/16 v0, 0xd

    goto :goto_4

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
