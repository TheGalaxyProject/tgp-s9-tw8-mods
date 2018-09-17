.class Lcom/android/server/pm/PackageManagerService$17;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "clearApplicationUserData"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_4c
    .catchall {:try_start_9 .. :try_end_19} :catchall_5d

    :try_start_19
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_49

    move-result v3

    :try_start_23
    monitor-exit v6

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_33} :catch_4c
    .catchall {:try_start_23 .. :try_end_33} :catchall_5d

    :try_start_33
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get9(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_5a

    :try_start_40
    monitor-exit v6
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_41} :catch_4c
    .catchall {:try_start_40 .. :try_end_41} :catchall_5d

    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_5f

    :cond_46
    :goto_46
    if-eqz v5, :cond_6d

    throw v5

    :catchall_49
    move-exception v4

    :try_start_4a
    monitor-exit v6

    throw v4
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4c} :catch_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_5d

    :catch_4c
    move-exception v4

    :try_start_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_61

    :cond_57
    :goto_57
    if-eqz v5, :cond_6c

    throw v5

    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit v6

    throw v4
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5d} :catch_4c
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v4

    goto :goto_52

    :catch_5f
    move-exception v5

    goto :goto_46

    :catch_61
    move-exception v6

    if-nez v5, :cond_66

    move-object v5, v6

    goto :goto_57

    :cond_66
    if-eq v5, v6, :cond_57

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_57

    :cond_6c
    throw v4

    :cond_6d
    if-eqz v3, :cond_7c

    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    :cond_7c
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v4, :cond_87

    :try_start_80
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    return-void

    :catch_88
    move-exception v1

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method
