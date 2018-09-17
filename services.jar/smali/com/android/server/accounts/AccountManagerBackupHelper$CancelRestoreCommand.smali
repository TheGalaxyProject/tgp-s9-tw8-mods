.class final Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelRestoreCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set2(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set1(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
