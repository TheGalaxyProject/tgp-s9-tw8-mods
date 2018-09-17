.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v9

    if-eqz v9, :cond_24

    const-string/jumbo v9, "TetheringSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string/jumbo v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    const-string/jumbo v9, "availableArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v9, "tetherArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v9, "erroredArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v12, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-static {v12, v9, v10, v11}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    const-string/jumbo v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v9}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v10, "wifi_state"

    const/16 v11, 0xe

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-wrap1(Lcom/android/settings/TetherSettings;I)V

    goto :goto_6b

    :cond_89
    const-string/jumbo v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;)V

    goto :goto_6b

    :cond_9e
    const-string/jumbo v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;)V

    goto :goto_6b

    :cond_b3
    const-string/jumbo v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10e

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v10, "connected"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-set5(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-set4(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;)V

    const-string/jumbo v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    if-nez v9, :cond_f2

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Lcom/android/settings/TetherSettings;->removeDialog(I)V

    goto/16 :goto_6b

    :cond_f2
    invoke-static {}, Lcom/android/settings/TetherSettings;->isTMO()Z

    move-result v9

    if-nez v9, :cond_fe

    invoke-static {}, Lcom/android/settings/TetherSettings;->isMetroPCS()Z

    move-result v9

    if-eqz v9, :cond_6b

    :cond_fe
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    if-nez v9, :cond_6b

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/TetherSettings;->removeDialog(I)V

    goto/16 :goto_6b

    :cond_10e
    const-string/jumbo v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v9}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v3, :cond_6b

    if-eqz v2, :cond_6b

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v9, 0xd

    if-ne v5, v9, :cond_13e

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_13e
    const/16 v9, 0xb

    if-ne v5, v9, :cond_153

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_153
    const/16 v9, 0xc

    if-ne v5, v9, :cond_19b

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    if-eqz v9, :cond_185

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    const/16 v9, 0x17

    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v9, "TetheringSettings"

    const-string/jumbo v10, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    :cond_185
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_19b
    const/16 v9, 0xa

    if-ne v5, v9, :cond_6b

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_1b5
    const-string/jumbo v9, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fa

    const-string/jumbo v9, "TetherSettings"

    const-string/jumbo v10, "received pan state changed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "android.bluetooth.profile.extra.STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1d4

    if-nez v8, :cond_1de

    :cond_1d4
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1de
    const/4 v9, 0x1

    if-eq v8, v9, :cond_1e4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1ee

    :cond_1e4
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1ee
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;)V

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_1fa
    const-string/jumbo v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20f

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v9}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6b

    :cond_20f
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v9}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    goto/16 :goto_6b

    :cond_21f
    const-string/jumbo v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    const-string/jumbo v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    const-string/jumbo v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_6b

    const-string/jumbo v9, "TetheringSettings"

    const-string/jumbo v10, "WIFI connected :: disable PAN NAP (VZW Requirement)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;Z)V

    goto/16 :goto_6b
.end method
