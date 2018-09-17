.class Lcom/att/iqi/IQIServiceBroker$4;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3, p2}, Lcom/att/iqi/IQIServiceBroker;->-wrap3(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->notifyAll()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    :try_start_13
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$4$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$4$1;-><init>(Lcom/att/iqi/IQIServiceBroker$4;)V

    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_24
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2f

    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->-set1(Lcom/att/iqi/IQIServiceBroker;I)I
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_2f

    monitor-exit v2

    return-void

    :catch_24
    move-exception v0

    :try_start_25
    const-string/jumbo v1, "IQIServiceBroker"

    const-string/jumbo v3, "Exception while linking IBinder to death"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_1c

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->notifyAll()V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set1(Lcom/att/iqi/IQIServiceBroker;I)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
