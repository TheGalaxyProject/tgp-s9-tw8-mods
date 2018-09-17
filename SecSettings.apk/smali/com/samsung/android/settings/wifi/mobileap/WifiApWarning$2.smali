.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_8c

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_ap_5G_checked"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    :goto_3a
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_ap_last_2g_channel"

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->saveIsShowPassword()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_72

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_72
    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "mDialogConfigure.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    :cond_89
    :goto_89
    return-void

    :cond_8a
    move v2, v3

    goto :goto_3a

    :cond_8c
    const/4 v2, -0x2

    if-ne p2, v2, :cond_89

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    if-eqz v2, :cond_a9

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "mDialogConfigure.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_a9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_89
.end method
