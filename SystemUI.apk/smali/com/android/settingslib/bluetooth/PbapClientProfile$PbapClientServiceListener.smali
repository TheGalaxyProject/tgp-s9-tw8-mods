.class final Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/PbapClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 9

    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "PbapClientProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v3, p2}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-set1(Lcom/android/settingslib/bluetooth/PbapClientProfile;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get4(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPbapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get1(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_69

    const-string/jumbo v3, "PbapClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PbapClientProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get1(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get2(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get3(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_69
    if-eqz v0, :cond_20

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_20

    :cond_75
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-set0(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4

    invoke-static {}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "PbapClientProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->-set0(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z

    return-void
.end method
