.class abstract Lcom/android/server/IpSecService$ManagedResource;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ManagedResource"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/IpSecService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;Landroid/os/IBinder;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/IpSecService$ManagedResource;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    :try_start_13
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->binderDied()V

    goto :goto_19
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->release()V

    return-void
.end method

.method protected abstract nullifyRecord()V
.end method

.method public final release()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->releaseResources()V

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_e
    iput-object v2, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->nullifyRecord()V

    return-void
.end method

.method protected abstract releaseResources()V
.end method
