.class public abstract Lcom/sec/ims/volte2/ImsCallEventListener;
.super Lcom/sec/ims/volte2/IImsCallEventListener$Stub;
.source "ImsCallEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallRinging(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallRingingBack(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2

    return-void
.end method

.method public onCallTrying(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onRtpLossRateNoti(IFFI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoAvailable(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
