.class final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetPrintJobStateCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;Ljava/lang/Object;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method


# virtual methods
.method public setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->onBeforeRemoteCall()I

    move-result v5

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    invoke-virtual {p0, v5}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
