.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "DIALOG_WIFI_SHARING_FIRST_TIME on cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_12
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    :try_end_23
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_12 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi Sharing SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
