.class Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->this$1:Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z

    if-ne p2, v0, :cond_33

    :goto_7
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->result:Z

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageDeleted response fpr package -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->notifyAll()V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_35

    monitor-exit p0

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_7

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
