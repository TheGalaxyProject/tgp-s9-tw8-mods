.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    const/4 v7, 0x1

    const/16 v6, 0x10

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "dontshowmemhsfirsttime"

    invoke-static {v3, v4, v5, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :goto_29
    return-void

    :cond_2a
    const/4 v1, 0x0

    :try_start_2b
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7d

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7d

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_tmo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5d
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivity(Landroid/content/Intent;)V
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_62} :catch_63

    goto :goto_29

    :catch_63
    move-exception v0

    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Exception!! help NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    goto :goto_29

    :cond_73
    :try_start_73
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_mtr"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5d

    :cond_7d
    if-eqz v1, :cond_9d

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9d

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    :cond_9d
    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Help info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    :try_end_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_ad} :catch_63

    goto/16 :goto_29
.end method
