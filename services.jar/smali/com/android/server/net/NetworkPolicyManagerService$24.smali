.class Lcom/android/server/net/NetworkPolicyManagerService$24;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_3b4

    const/16 v28, 0x0

    return v28

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    const/4 v9, 0x0

    :goto_27
    if-ge v9, v13, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v14, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v28, 0x1

    return v28

    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    const/4 v9, 0x0

    :goto_72
    if-ge v9, v13, :cond_94

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v28, 0x1

    return v28

    :sswitch_a4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_cf
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_f5

    move-result v28

    if-eqz v28, :cond_f1

    :try_start_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_df} :catch_3b1
    .catchall {:try_start_d2 .. :try_end_df} :catchall_f5

    :goto_df
    :try_start_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_f1
    .catchall {:try_start_df .. :try_end_f1} :catchall_f5

    :cond_f1
    monitor-exit v29

    const/16 v28, 0x1

    return v28

    :catchall_f5
    move-exception v28

    monitor-exit v29

    throw v28

    :sswitch_f8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    if-eqz v28, :cond_135

    const/16 v23, 0x1

    :goto_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    const/4 v9, 0x0

    :goto_111
    if-ge v9, v13, :cond_138

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-static {v0, v14, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_111

    :cond_135
    const/16 v23, 0x0

    goto :goto_102

    :cond_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v28, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v28

    sget-object v29, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v28, 0x1

    return v28

    :sswitch_16c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    const/4 v9, 0x0

    :goto_18f
    if-ge v9, v13, :cond_1b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v0, v14, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_18f

    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_1d7
    const/16 v28, 0x1

    return v28

    :sswitch_1da
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v20, v16

    :try_start_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1e8 .. :try_end_1f9} :catch_3ae

    :goto_1f9
    const/16 v28, 0x1

    return v28

    :sswitch_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const/16 v32, 0x20

    shl-long v30, v30, v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    or-long v30, v30, v32

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap21(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    const/16 v28, 0x1

    return v28

    :sswitch_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_266
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/util/SparseIntArray;

    if-eqz v27, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap23(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V

    :goto_287
    if-eqz v24, :cond_2a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    const/16 v28, 0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_2ad

    const/16 v28, 0x1

    :goto_299
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V

    :cond_2a0
    const/16 v28, 0x1

    return v28

    :cond_2a3
    const-string/jumbo v28, "NetworkPolicy"

    const-string/jumbo v29, "MSG_SET_FIREWALL_RULES size of uidRules is null "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_287

    :cond_2ad
    const/16 v28, 0x0

    goto :goto_299

    :sswitch_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const/16 v28, 0x1

    return v28

    :sswitch_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap28(Lcom/android/server/net/NetworkPolicyManagerService;)V
    :try_end_2e6
    .catchall {:try_start_2dd .. :try_end_2e6} :catchall_2ea

    monitor-exit v29

    :cond_2e7
    const/16 v28, 0x1

    return v28

    :catchall_2ea
    move-exception v28

    monitor-exit v29

    throw v28

    :sswitch_2ed
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_324

    const/4 v12, 0x1

    :goto_2f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap28(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_320
    .catchall {:try_start_305 .. :try_end_320} :catchall_326

    monitor-exit v29

    const/16 v28, 0x1

    return v28

    :cond_324
    const/4 v12, 0x0

    goto :goto_2f8

    :catchall_326
    move-exception v28

    monitor-exit v29

    throw v28

    :sswitch_329
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    if-eqz v7, :cond_35f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap28(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_35e
    .catchall {:try_start_343 .. :try_end_35e} :catchall_362

    monitor-exit v29

    :cond_35f
    const/16 v28, 0x1

    return v28

    :catchall_362
    move-exception v28

    monitor-exit v29

    throw v28

    :sswitch_365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v28

    if-eqz v28, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->-get16(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    :goto_37d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v28, 0x1

    return v28

    :cond_387
    const/16 v28, 0x0

    goto :goto_37d

    :sswitch_38a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$24;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-static {v0, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;I)V

    const/16 v28, 0x1

    return v28

    :catch_3ae
    move-exception v8

    goto/16 :goto_1f9

    :catch_3b1
    move-exception v8

    goto/16 :goto_df

    :sswitch_data_3b4
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_5d
        0x5 -> :sswitch_a4
        0x6 -> :sswitch_f8
        0x7 -> :sswitch_1da
        0xa -> :sswitch_1fc
        0xb -> :sswitch_24e
        0xd -> :sswitch_16c
        0xe -> :sswitch_266
        0xf -> :sswitch_2b0
        0x10 -> :sswitch_38a
        0x3eb -> :sswitch_2ed
        0x3ec -> :sswitch_365
        0x3ed -> :sswitch_329
        0x3ee -> :sswitch_2c2
    .end sparse-switch
.end method
