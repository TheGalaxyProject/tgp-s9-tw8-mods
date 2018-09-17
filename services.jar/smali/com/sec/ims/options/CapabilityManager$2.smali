.class Lcom/sec/ims/options/CapabilityManager$2;
.super Ljava/lang/Object;
.source "CapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/options/CapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/options/CapabilityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Connected to CapabilityDiscoveryService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-set0(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    :cond_24
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6a

    :try_start_30
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/CapabilityListener;

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v3, v1}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4b} :catch_4c

    goto :goto_3a

    :catch_4c
    move-exception v0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener failed. RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-boolean v3, v3, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Re-register CapabilityListener..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    :try_start_81
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v4, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v4, v4, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-virtual {v3, v4}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8a} :catch_95

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    :try_start_8b
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get2(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_4c

    goto :goto_6a

    :catch_95
    move-exception v0

    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v3}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener failed. RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get0(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Disconnected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$2;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-get1(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V

    :cond_1e
    invoke-static {v2}, Lcom/sec/ims/options/CapabilityManager;->-set0(Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method
