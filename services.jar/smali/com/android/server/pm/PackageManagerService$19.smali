.class Lcom/android/server/pm/PackageManagerService$19;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$hasAccessInstantApps:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;IIILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$19;->val$callingUid:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$hasAccessInstantApps:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v5, :cond_4f

    const/4 v3, 0x0

    :goto_6
    const/4 v0, 0x1

    if-eqz v3, :cond_1a

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$callingUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_56

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$hasAccessInstantApps:I

    if-nez v5, :cond_58

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_42

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x3

    :try_start_22
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    const/16 v9, 0x103

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    const/16 v9, 0x203

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_5a

    monitor-exit v6

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    invoke-static {v5, v6, v7, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    :cond_42
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v5, :cond_4e

    :try_start_46
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4e} :catch_5d

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    goto :goto_6

    :cond_56
    const/4 v0, 0x1

    goto :goto_1a

    :cond_58
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_5a
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_5d
    move-exception v1

    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v6, "Observer no longer exists."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method
