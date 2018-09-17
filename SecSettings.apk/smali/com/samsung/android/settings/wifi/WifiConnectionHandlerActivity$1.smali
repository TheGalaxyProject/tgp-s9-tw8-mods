.class Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WifiConnectionHandlerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "WifiConnectionHandlerActivity"

    const-string/jumbo v4, "Destroy the popup, because connect again. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_45
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get3(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get4(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-set0(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Z)Z

    :cond_5e
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_75
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_7a} :catch_7b

    :cond_7a
    :goto_7a
    return-void

    :catch_7b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7a
.end method
