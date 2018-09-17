.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Lcom/android/server/net/NetworkPolicyManagerInternal;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPolicyManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public isUidNetworkingBlocked(ILjava/lang/String;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_31

    :try_start_19
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2e

    move-result v1

    :try_start_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_31

    monitor-exit v4

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v3

    if-eqz v3, :cond_34

    return v7

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v5

    throw v3
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_34
    if-nez v1, :cond_37

    return v6

    :cond_37
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v3

    if-eqz v3, :cond_3f

    return v7

    :cond_3f
    invoke-static {v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v3

    if-eqz v3, :cond_46

    return v6

    :cond_46
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v3

    if-eqz v3, :cond_4e

    return v6

    :cond_4e
    if-eqz v0, :cond_51

    return v7

    :cond_51
    return v6
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v4, 0x20

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v0, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_27

    monitor-exit v3

    if-eqz v0, :cond_2a

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2a

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_26
    return v2

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method public resetUserState(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_14
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_28

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_25

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_28

    :cond_21
    monitor-exit v2

    return-void

    :cond_23
    const/4 v0, 0x1

    goto :goto_14

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v3

    throw v1
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method
