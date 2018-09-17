.class Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_68

    :goto_5
    return-void

    :pswitch_6
    const-string/jumbo v2, "BluetoothStatusReceiver"

    const-string/jumbo v3, "mHandler :: LAUNCH_SCAN_DIALOG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1c
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_5

    :catch_26
    move-exception v0

    const-string/jumbo v2, "BluetoothStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_42
    const-string/jumbo v2, "BluetoothStatusReceiver"

    const-string/jumbo v3, "mHandler :: DEVICE_CONNECTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_5

    :cond_5e
    const-string/jumbo v2, "BluetoothStatusReceiver"

    const-string/jumbo v3, "mHandler :: cachedBluetoothDevice is not setted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_6
        :pswitch_42
    .end packed-switch
.end method
