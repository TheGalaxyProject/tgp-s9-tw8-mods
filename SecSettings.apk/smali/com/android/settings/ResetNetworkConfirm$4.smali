.class Lcom/android/settings/ResetNetworkConfirm$4;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_24

    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "ConnectivityManager Reset started."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-nez v7, :cond_30

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_30
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "voicecall_type"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_40
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_67

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get1(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_67

    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "WifiManager Reset is started."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_67
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_8a

    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "TelephonyManager Reset is started."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get8(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    :cond_8a
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "netpolicy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    if-eqz v3, :cond_b3

    if-eqz v5, :cond_b3

    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "NetworkPolicyManager Reset is started."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get8(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    :cond_b3
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "bluetooth"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_d4

    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "BluetoothManager Reset is started."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    :cond_d4
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get1(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v7

    if-nez v7, :cond_ec

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->-get4(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/android/settings/ResetNetworkConfirm$4$1;

    invoke-direct {v8, p0}, Lcom/android/settings/ResetNetworkConfirm$4$1;-><init>(Lcom/android/settings/ResetNetworkConfirm$4;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_ec
    const-string/jumbo v7, "ResetNetworkConfirm"

    const-string/jumbo v8, "resetNetwork process done"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7, v9}, Lcom/android/settings/ResetNetworkConfirm;->-set2(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    return-void
.end method