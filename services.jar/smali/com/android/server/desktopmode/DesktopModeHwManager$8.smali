.class Lcom/android/server/desktopmode/DesktopModeHwManager$8;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b2

    const-string/jumbo v7, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v4

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_58

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "minorClass="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const/16 v7, 0x13

    if-ne v5, v7, :cond_b1

    const/16 v7, 0x580

    if-ne v4, v7, :cond_b1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_70

    const/16 v7, 0xa

    if-ne v6, v7, :cond_90

    :cond_70
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_8f

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BT in mobile turned off, state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-void

    :cond_90
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set0(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_a4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mIsBtMouseDeepSleep=true"

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get9(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    :cond_b1
    :goto_b1
    return-void

    :cond_b2
    const-string/jumbo v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_da

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v7

    if-eqz v7, :cond_b1

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto :goto_b1

    :cond_f5
    const-string/jumbo v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_11d

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v7

    if-eqz v7, :cond_b1

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$8;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto/16 :goto_b1
.end method
