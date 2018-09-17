.class Lcom/samsung/android/settings/wifi/WifiWarning$3;
.super Ljava/lang/Object;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const v8, 0x7f1211a6

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-ne v2, v6, :cond_9c

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get3(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set1(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_47
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_67
    :goto_67
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-wrap3(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_7f
    return-void

    :cond_80
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_67

    :cond_8e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_67

    :cond_9c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7f

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get3(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_e0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set1(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_e0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get4(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_104

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get4(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_104
    const-wide/16 v2, 0x258

    :try_start_106
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_109
    .catch Ljava/lang/InterruptedException; {:try_start_106 .. :try_end_109} :catch_120

    :goto_109
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_11a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :catch_120
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_109
.end method
