.class Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_52

    :goto_10
    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_13
    const-string/jumbo v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Landroid/os/UserManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string/jumbo v9, "volume"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "user_added"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :cond_51
    :goto_51
    return-void

    :cond_52
    move v8, v9

    goto :goto_10

    :cond_54
    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v9

    monitor-enter v9
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_64} :catch_b5

    :try_start_64
    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_6f
    if-ge v2, v3, :cond_97

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    iget v8, v7, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v8, v5, :cond_94

    const/16 v8, -0x2710

    iput v8, v7, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get6(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_94
    .catchall {:try_start_64 .. :try_end_94} :catchall_c0

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_97
    :try_start_97
    monitor-exit v9

    iget-object v8, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v8

    const-string/jumbo v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "user_removed"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_97 .. :try_end_b4} :catch_b5

    goto :goto_51

    :catch_b5
    move-exception v1

    const-string/jumbo v8, "StorageManagerService"

    const-string/jumbo v9, "Failed to send user details to vold"

    invoke-static {v8, v9, v1}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    :catchall_c0
    move-exception v8

    :try_start_c1
    monitor-exit v9

    throw v8
    :try_end_c3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c1 .. :try_end_c3} :catch_b5
.end method
