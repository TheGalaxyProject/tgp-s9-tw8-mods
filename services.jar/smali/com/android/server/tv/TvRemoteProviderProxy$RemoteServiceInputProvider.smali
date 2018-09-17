.class final Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteServiceInputProvider"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->clearInputBridge(Landroid/os/IBinder;)V

    :cond_d
    return-void
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->closeInputBridge(Landroid/os/IBinder;)V

    :cond_d
    return-void
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_12

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    :cond_12
    return-void
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyDown(Landroid/os/IBinder;I)V

    :cond_d
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyUp(Landroid/os/IBinder;I)V

    :cond_d
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerDown(Landroid/os/IBinder;III)V

    :cond_d
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerSync(Landroid/os/IBinder;)V

    :cond_d
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerUp(Landroid/os/IBinder;I)V

    :cond_d
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendTimestamp(Landroid/os/IBinder;J)V

    :cond_d
    return-void
.end method
