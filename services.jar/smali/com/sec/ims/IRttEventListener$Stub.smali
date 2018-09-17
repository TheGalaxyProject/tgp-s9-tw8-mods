.class public abstract Lcom/sec/ims/IRttEventListener$Stub;
.super Landroid/os/Binder;
.source "IRttEventListener.java"

# interfaces
.implements Lcom/sec/ims/IRttEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IRttEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IRttEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IRttEventListener"

.field static final TRANSACTION_onNotifySessionIdForRtt:I = 0x4

.field static final TRANSACTION_onRttEvent:I = 0x1

.field static final TRANSACTION_onSendRttSessionModifyRequest:I = 0x2

.field static final TRANSACTION_onSendRttSessionModifyResponse:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.IRttEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IRttEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.IRttEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IRttEventListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/IRttEventListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/IRttEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IRttEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_70

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "com.sec.ims.IRttEventListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "com.sec.ims.IRttEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/IRttEventListener$Stub;->onRttEvent(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_21
    const-string/jumbo v4, "com.sec.ims.IRttEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    const/4 v2, 0x1

    :goto_32
    invoke-virtual {p0, v0, v2}, Lcom/sec/ims/IRttEventListener$Stub;->onSendRttSessionModifyRequest(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_39
    const/4 v2, 0x0

    goto :goto_32

    :sswitch_3b
    const-string/jumbo v4, "com.sec.ims.IRttEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v2, 0x1

    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v3, 0x1

    :goto_53
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/ims/IRttEventListener$Stub;->onSendRttSessionModifyResponse(IZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_5a
    const/4 v2, 0x0

    goto :goto_4c

    :cond_5c
    const/4 v3, 0x0

    goto :goto_53

    :sswitch_5e
    const-string/jumbo v4, "com.sec.ims.IRttEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/IRttEventListener$Stub;->onNotifySessionIdForRtt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_5e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
