.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;
.super Landroid/os/Handler;
.source "DexPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    # getter for: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_7a

    goto :goto_2

    :pswitch_26
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_38
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleResponseResult([B)V
    invoke-static {v2, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_2

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_43
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleOnFailResult([B)V
    invoke-static {v2, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$300(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V

    goto :goto_2

    :pswitch_50
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestConnectedPowerChargerInfoUpdate()V

    goto :goto_2

    :pswitch_56
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingStatus:Z
    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$400(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->setFastChargingEnable(Z)V

    goto :goto_2

    :pswitch_62
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I
    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$500(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)I

    move-result v3

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->controlDexFanLevel(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$600(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;I)V

    goto :goto_2

    :pswitch_6e
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestCurrentFanLevelUpdate()V
    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$700(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V

    goto :goto_2

    :pswitch_74
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestUniqueNumber()V

    goto :goto_2

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_43
        :pswitch_50
        :pswitch_56
        :pswitch_62
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method
