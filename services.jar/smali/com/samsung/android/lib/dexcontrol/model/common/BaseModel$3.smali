.class Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_38

    :cond_d
    :goto_d
    packed-switch v1, :pswitch_data_3e

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Not in Case"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :pswitch_26
    const-string/jumbo v4, "device"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_1a

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->updateUsbClassInfo(Landroid/hardware/usb/UsbDevice;)V
    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$000(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1a

    nop

    :pswitch_data_38
    .packed-switch -0x7e02a835
        :pswitch_1b
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method
