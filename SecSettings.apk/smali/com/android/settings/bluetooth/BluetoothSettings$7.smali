.class Lcom/android/settings/bluetooth/BluetoothSettings$7;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    const-string/jumbo v2, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_75
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    const-string/jumbo v2, "BluetoothOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    if-nez v1, :cond_9a

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_7e

    :cond_9a
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_7e

    :cond_c2
    const-string/jumbo v2, "BluetoothOff"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    if-eqz v1, :cond_122

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Z

    move-result v2

    if-eqz v2, :cond_117

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_10c

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_10c
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_117
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_7e

    :cond_122
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_14b
    const-string/jumbo v2, "BluetoothStartScanning"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    if-nez v1, :cond_167

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_7e

    :cond_167
    if-nez v0, :cond_170

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    goto/16 :goto_7e

    :cond_170
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_187
    const-string/jumbo v2, "BluetoothStopScanning"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f5

    if-nez v1, :cond_1c1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_1c1
    if-eqz v0, :cond_1cc

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_7e

    :cond_1cc
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothScanning"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_1f5
    const-string/jumbo v2, "BluetoothDiscoverableModeOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24b

    if-nez v1, :cond_238

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_221
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_238
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_221

    :cond_24b
    const-string/jumbo v2, "BluetoothDeviceConnect"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_282

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    :goto_275
    if-nez v1, :cond_28c

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_7e

    :cond_282
    const-string/jumbo v2, "BluetoothSettings"

    const-string/jumbo v3, "Bixby :: parameter size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_275

    :cond_28c
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_2a3
    const-string/jumbo v2, "BluetoothDeviceDisconnect"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    if-nez v1, :cond_2dd

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_2dd
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v4, "On"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_306
    const-string/jumbo v2, "BluetoothControlHistory"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34c

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BluetoothControlHistory"

    const v5, 0x7f120412

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_341

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_341
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_34c
    const-string/jumbo v2, "DualAudioSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39f

    if-nez v1, :cond_368

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_7e

    :cond_368
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BLUETOOTH_DUAL_PLAY_SETTINGS"

    const v5, 0x7f12043f

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_394

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_394
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_39f
    const-string/jumbo v2, "MediaVolumeSyncSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f2

    if-nez v1, :cond_3bb

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get6(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_7e

    :cond_3bb
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BLUETOOTH_AVC_SETTINGS"

    const v5, 0x7f1203fa

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3e7

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_3e7
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_3f2
    const-string/jumbo v2, "BluetoothHelp"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_474

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_44b

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isSupportHelpMenu()Z

    move-result v2

    if-eqz v2, :cond_44b

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToHelpMenu()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_440

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "HelpMenu"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_440
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_44b
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "HelpMenu"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_474
    const-string/jumbo v2, "BluetoothReceivedFiles"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f4

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_4c8

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToReceivedFilesMenu()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4bd

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReceivedFiles"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    :cond_4bd
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_4c8
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReceivedFiles"

    const-string/jumbo v4, "Existed"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_4f4
    const-string/jumbo v2, "BluetoothSnoopOn"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_591

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getHciSnoopLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_535

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    return-void

    :cond_535
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setHciSnoopLogEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_568

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOn"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_568
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOn"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_591
    const-string/jumbo v2, "BluetoothSnoopOff"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62e

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getHciSnoopLogEnabled()Z

    move-result v2

    if-nez v2, :cond_5d2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    return-void

    :cond_5d2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setHciSnoopLogEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_605

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOff"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_605
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSnoop"

    const-string/jumbo v4, "SuccessfullyOff"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothSettings"

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e

    :cond_62e
    const-string/jumbo v2, "BluetoothIBRSettings"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.settings.BLUETOOTH_IBR_SETTINGS"

    const v5, 0x7f12045a

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_7e
.end method
