.class final Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v10, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string/jumbo v7, "VZW-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    :cond_17
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "ATT"

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "TMO"

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ee

    :cond_2d
    if-eqz p2, :cond_ee

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.PRECISE_CALL_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ee

    const-string/jumbo v7, "ringing_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "foreground_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "background_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v7, "activevideo"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "epdg"

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-set4(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VideoCallBroadcastReceiver - ringingCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", foregroundCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", backgroundCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", hasVideoCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", hasActiveVideoCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mHasEpdgCall : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    if-eq v7, v4, :cond_ee

    if-eqz v3, :cond_f2

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-set5(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string/jumbo v7, "NetworkPolicy"

    const-string/jumbo v8, "Video call start."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_e8
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V
    :try_end_ed
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_ef

    :goto_ed
    monitor-exit v8

    :cond_ee
    return-void

    :catchall_ef
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_f2
    if-nez v4, :cond_ee

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-set5(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->-set9(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->-set10(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string/jumbo v7, "NetworkPolicy"

    const-string/jumbo v8, "Video call end."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_111
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_125
    .catchall {:try_start_111 .. :try_end_125} :catchall_126

    goto :goto_ed

    :catchall_126
    move-exception v7

    monitor-exit v8

    throw v7
.end method
