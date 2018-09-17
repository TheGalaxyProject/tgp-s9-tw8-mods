.class final Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestToggleWiFiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .registers 4

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->-get1(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    :pswitch_1d
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->-get0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->-get0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    :cond_2f
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_1c

    :pswitch_3b
    const v2, 0x7f122061

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_1c

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public register()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
