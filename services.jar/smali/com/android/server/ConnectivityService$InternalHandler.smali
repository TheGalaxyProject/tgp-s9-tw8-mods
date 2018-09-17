.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_22c

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v13

    :try_start_e
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)I

    move-result v14

    if-ne v12, v14, :cond_4d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_4d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_4f

    move-result-object v2

    monitor-exit v13

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/16 v13, 0x18

    if-ne v12, v13, :cond_52

    const-string/jumbo v12, "Failed to find a new network - expiring NetTransition Wakelock"

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    goto :goto_7

    :cond_4d
    monitor-exit v13

    goto :goto_7

    :catchall_4f
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_52
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "NetTransition Wakelock ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v2, :cond_63

    const-string/jumbo v2, "unknown"

    :cond_63
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cleared because we found a replacement network"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    goto :goto_7

    :sswitch_76
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;)V

    goto :goto_7

    :sswitch_7e
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_93

    const/4 v3, 0x1

    :goto_8a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v6, v3}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    :cond_93
    const/4 v3, 0x0

    goto :goto_8a

    :sswitch_95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/ProxyInfo;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_7

    :sswitch_a4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v12, "newProxy"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/ProxyInfo;

    const-string/jumbo v12, "oldProxy"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/ProxyInfo;

    if-eqz v9, :cond_e2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v7}, Lcom/android/server/ConnectivityService;->-set1(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    :cond_e2
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v7}, Lcom/android/server/ConnectivityService;->-set0(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_7

    :sswitch_114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_7

    :sswitch_123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Messenger;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_7

    :sswitch_132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    :sswitch_141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_7

    :sswitch_150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_7

    :sswitch_15b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v8}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_7

    :sswitch_16a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v12, v14}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_7

    :sswitch_17d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkRequest;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v12, v14}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    :sswitch_190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_1ad

    const/4 v13, 0x1

    :goto_1a1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    if-eqz v14, :cond_1af

    const/4 v14, 0x1

    :goto_1a8
    invoke-static {v15, v12, v13, v14}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_7

    :cond_1ad
    const/4 v13, 0x0

    goto :goto_1a1

    :cond_1af
    const/4 v14, 0x0

    goto :goto_1a8

    :sswitch_1b1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    :sswitch_1c0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    :sswitch_1cf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    :sswitch_1d8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_7

    :sswitch_1e7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v12

    invoke-virtual {v12, v4, v11, v10}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_7

    :sswitch_20a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_21a

    :sswitch_data_22c
    .sparse-switch
        0x8 -> :sswitch_8
        0x9 -> :sswitch_76
        0xc -> :sswitch_7e
        0x10 -> :sswitch_95
        0x11 -> :sswitch_114
        0x12 -> :sswitch_132
        0x13 -> :sswitch_141
        0x14 -> :sswitch_15b
        0x15 -> :sswitch_141
        0x16 -> :sswitch_17d
        0x17 -> :sswitch_123
        0x18 -> :sswitch_8
        0x19 -> :sswitch_20a
        0x1a -> :sswitch_150
        0x1b -> :sswitch_16a
        0x1c -> :sswitch_190
        0x1d -> :sswitch_1c0
        0x1e -> :sswitch_1cf
        0x1f -> :sswitch_150
        0x23 -> :sswitch_1b1
        0x64 -> :sswitch_a4
        0x8100b -> :sswitch_1d8
        0x8100c -> :sswitch_1e7
    .end sparse-switch
.end method
