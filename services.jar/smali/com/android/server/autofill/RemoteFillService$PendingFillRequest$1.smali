.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v3, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v4, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_20

    :try_start_a
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->-set0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1d

    move-result v0

    :try_start_15
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_20

    if-eqz v0, :cond_1b

    :try_start_18
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_23
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    :cond_1b
    :goto_1b
    monitor-exit v3

    return-void

    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v4

    throw v2
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_23
    move-exception v1

    :try_start_24
    const-string/jumbo v2, "RemoteFillService"

    const-string/jumbo v4, "Error requesting a cancellation"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_20

    goto :goto_1b
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->-wrap0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    :cond_16
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-virtual {v3}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/autofill/RemoteFillService;->-wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V

    :cond_20
    return-void
.end method
