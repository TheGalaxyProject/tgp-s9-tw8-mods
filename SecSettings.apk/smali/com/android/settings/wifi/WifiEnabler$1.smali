.class Lcom/android/settings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get2(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiEnabler;->-wrap1(Lcom/android/settings/wifi/WifiEnabler;I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get1(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get1(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->handleWifiStateChangedForGateMassage(I)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-string/jumbo v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get0(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string/jumbo v3, "newState"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/settings/wifi/WifiEnabler;->-wrap0(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_2d

    :cond_56
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get0(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiEnabler;->-wrap0(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get1(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEnabler;->-get1(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->handleStateChangedForGateMessage(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_2d
.end method
