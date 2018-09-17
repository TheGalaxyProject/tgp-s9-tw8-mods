.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_36

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get6()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get7()Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get9()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-wrap1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set2(Z)Z

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get9()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get10()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v3, v4, v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-wrap2(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "connected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-wrap4(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;)V

    goto :goto_36

    :cond_71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get3(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set0(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-wrap3(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto :goto_36

    :cond_91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "plugged"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_af

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set1(Z)Z

    goto :goto_36

    :cond_af
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get5()Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    move-result v2

    if-ne v2, v4, :cond_c5

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set1(Z)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    :cond_c5
    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set1(Z)Z

    goto/16 :goto_36
.end method
