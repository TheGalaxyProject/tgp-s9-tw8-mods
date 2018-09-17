.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method maybeUnregister()Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v1

    if-nez v1, :cond_53

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "maybeUnregister() unregistering process observer"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_50

    :try_start_19
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set2(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "provisioning observer unregistered"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_41
    .catchall {:try_start_19 .. :try_end_3e} :catchall_50

    :cond_3e
    :goto_3e
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Can\'t unregisterProcessObserver"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    goto :goto_3e

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_53
    monitor-exit v2

    const/4 v1, 0x0

    return v1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    return-void
.end method

.method public onProcessDied(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz v2, :cond_e

    return-void

    :cond_e
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_15
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getState()I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_57

    move-result v1

    packed-switch v1, :pswitch_data_8e

    :cond_22
    :goto_22
    monitor-exit v4

    return-void

    :pswitch_24
    :try_start_24
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    const-string/jumbo v5, "com.android.managedprovisioning"

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_22

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "managedprovisioning died.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "state"

    const/16 v5, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_57

    goto :goto_22

    :catchall_57
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_5a
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    const-string/jumbo v5, "com.samsung.android.knox.containercore"

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_22

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "KnoxCore died.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "state"

    const/16 v5, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z
    :try_end_8c
    .catchall {:try_start_5a .. :try_end_8c} :catchall_57

    goto :goto_22

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_5a
    .end packed-switch
.end method
