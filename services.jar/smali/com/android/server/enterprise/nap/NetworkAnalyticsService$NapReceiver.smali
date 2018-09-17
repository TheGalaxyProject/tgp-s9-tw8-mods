.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v9, :cond_22

    const-string/jumbo v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Nap Receiver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_42

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ca

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_b5

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :goto_56
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v9, "android.intent.extra.UID"

    const/16 v10, -0x2710

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v9, :cond_8c

    const-string/jumbo v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION PACKAGE REMOVED packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    const/16 v9, -0x2710

    if-eq v6, v9, :cond_93

    invoke-static {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCache(ILjava/lang/String;)V

    :cond_93
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v5, :cond_42

    if-eqz v2, :cond_42

    const-string/jumbo v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string/jumbo v9, "NetworkAnalytics:Service"

    const-string/jumbo v10, "The package removal intent has been called before upgrade"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b5
    const/4 v5, 0x0

    goto :goto_56

    :cond_b7
    new-instance v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    iput-object v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_42

    :cond_ca
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_11c

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :goto_dd
    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v9, :cond_fb

    const-string/jumbo v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION PACKAGE ADDED packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v5, :cond_42

    if-eqz v2, :cond_42

    new-instance v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    iput-object v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_42

    :cond_11c
    const/4 v5, 0x0

    goto :goto_dd

    :cond_11e
    const-string/jumbo v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v9, "android.intent.extra.user_handle"

    const/16 v10, -0x2710

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v9, -0x2710

    if-eq v7, v9, :cond_13b

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCacheForUser(I)V

    :cond_13b
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v10, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_42

    :cond_146
    const-string/jumbo v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16b

    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v9, :cond_15c

    const-string/jumbo v9, "NetworkAnalytics:Service"

    const-string/jumbo v10, "EMERGENCY_STATE_CHANGED received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_42

    :cond_16b
    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_42
.end method
