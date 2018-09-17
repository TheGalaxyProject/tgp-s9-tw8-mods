.class public Lcom/android/server/RCPManagerService$EmergencyModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " EmergencyModeReceiver onReceive() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_84

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " action = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_33
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a9

    :try_start_4d
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_DISABLED "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/RCPManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_73

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_73

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get1()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    :cond_73
    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const-string/jumbo v7, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get1()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/RCPManagerService;->-wrap7(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_83} :catch_88

    :cond_83
    :goto_83
    return-void

    :cond_84
    const-string/jumbo v6, " intent is null "

    goto :goto_33

    :catch_88
    move-exception v0

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " BootReceiver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_a9
    const/4 v6, 0x3

    if-ne v5, v6, :cond_83

    :try_start_ac
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-wrap1(Lcom/android/server/RCPManagerService;)[I

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get4(Lcom/android/server/RCPManagerService;)Z

    move-result v6

    if-eqz v6, :cond_83

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get3(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_cb} :catch_144

    :try_start_cb
    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get3(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/RCPManagerService;->-wrap8(Lcom/android/server/RCPManagerService;I)V

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/RCPManagerService;->-wrap9(Lcom/android/server/RCPManagerService;I)V

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get3(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f6
    .catchall {:try_start_cb .. :try_end_f6} :catchall_141

    :cond_f6
    :try_start_f6
    monitor-exit v7

    if-eqz v2, :cond_83

    array-length v3, v2

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get0(Lcom/android/server/RCPManagerService;)Z

    move-result v6

    if-eqz v6, :cond_11c

    const-string/jumbo v6, "Bridge_PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "personas present size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    const/4 v1, 0x0

    :goto_11d
    if-ge v1, v3, :cond_83

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get3(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_126} :catch_144

    :try_start_126
    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6, v1}, Lcom/android/server/RCPManagerService;->-wrap8(Lcom/android/server/RCPManagerService;I)V

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6, v1}, Lcom/android/server/RCPManagerService;->-wrap9(Lcom/android/server/RCPManagerService;I)V

    iget-object v6, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->-get3(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13d
    .catchall {:try_start_126 .. :try_end_13d} :catchall_162

    :try_start_13d
    monitor-exit v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    :catchall_141
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_144} :catch_144

    :catch_144
    move-exception v0

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    :catchall_162
    move-exception v6

    :try_start_163
    monitor-exit v7

    throw v6
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_165} :catch_144
.end method
