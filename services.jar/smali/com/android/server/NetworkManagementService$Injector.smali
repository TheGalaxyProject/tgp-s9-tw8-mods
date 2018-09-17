.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->-get7(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {p0, v4}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    filled-new-array {v4, v5, v6}, [I

    move-result-object v1

    array-length v4, v1

    :goto_14
    if-ge v2, v4, :cond_28

    aget v0, v1, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    iget-object v5, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5, v0}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->-get9(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->-get13(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3c

    monitor-exit v3

    return-void

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setDataSaverMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-set2(Lcom/android/server/NetworkManagementService;Z)Z

    return-void
.end method

.method setFirewallChainState(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->-wrap16(Lcom/android/server/NetworkManagementService;IZ)V

    return-void
.end method

.method setFirewallRule(III)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get7(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get7(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_14

    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get13(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get9(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_12

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
