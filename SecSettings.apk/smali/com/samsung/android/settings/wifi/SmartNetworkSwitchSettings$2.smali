.class Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    goto :goto_20

    :cond_30
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_42
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    goto :goto_20
.end method
