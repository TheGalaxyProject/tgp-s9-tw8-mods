.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_1f

    if-ne p2, v3, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap16(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)V
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1f} :catch_3b

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_23
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1f

    :try_start_26
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap16(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    :try_end_3a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_26 .. :try_end_3a} :catch_3b

    goto :goto_1f

    :catch_3b
    move-exception v0

    const-string/jumbo v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
