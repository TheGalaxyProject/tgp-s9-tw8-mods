.class Lcom/android/systemui/qs/tiles/WifiCallingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string/jumbo v3, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_3f
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_2c

    :cond_45
    const-string/jumbo v3, "action_wifi_qs_refresh_att"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_2c

    :cond_61
    const-string/jumbo v3, "action_wifi_qs_setdim_att"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_2c

    :cond_75
    const-string/jumbo v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string/jumbo v3, "apntype"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ikeerror"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : IPSEC_CONNECTION_EVENT apntype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ikeerror:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cb

    if-nez v2, :cond_cb

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    :cond_c4
    :goto_c4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto/16 :goto_2c

    :cond_cb
    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    const/16 v3, 0x65

    if-ne v2, v3, :cond_c4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    goto :goto_c4
.end method
