.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;

    move-result-object v4

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_35
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_48
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v10, :cond_56

    if-ne v3, v9, :cond_90

    :cond_56
    :goto_56
    if-eq v3, v10, :cond_5a

    if-ne v3, v9, :cond_6a

    :cond_5a
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_saved_state"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6a
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V

    :cond_7c
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x258

    :try_start_87
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8a} :catch_9d

    :cond_8a
    :goto_8a
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    return-void

    :cond_90
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_8a

    goto :goto_56

    :catch_9d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8a
.end method
