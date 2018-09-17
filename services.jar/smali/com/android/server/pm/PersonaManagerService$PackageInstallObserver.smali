.class Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    const/16 v0, -0x12

    iput v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->finished:Z

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    if-eq v0, v1, :cond_2a

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->notifyAll()V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_45

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installation success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_45

    goto :goto_25

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
