.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartCardGetPinCallback.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

.field static final TRANSACTION_onUserCancelled:I = 0x2

.field static final TRANSACTION_onUserEnteredPin:I = 0x1

.field static final TRANSACTION_onUserPinError:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v1, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v1, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserEnteredPin([C)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_21
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserCancelled()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_2e
    const-string/jumbo v2, "com.sec.smartcard.pinservice.ISmartCardGetPinCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->onUserPinError(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_2e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
