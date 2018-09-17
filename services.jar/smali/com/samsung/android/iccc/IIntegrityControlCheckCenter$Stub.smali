.class public abstract Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.super Landroid/os/Binder;
.source "IIntegrityControlCheckCenter.java"

# interfaces
.implements Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.iccc.IIntegrityControlCheckCenter"

.field static final TRANSACTION_getDeviceStatus:I = 0x4

.field static final TRANSACTION_getSecureData:I = 0x1

.field static final TRANSACTION_getTrustedBootData:I = 0x3

.field static final TRANSACTION_setSecureData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    return-object v0

    :cond_14
    new-instance v1, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_68

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getSecureData(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_25
    const-string/jumbo v5, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->setSecureData(II)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_3e
    const-string/jumbo v5, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getTrustedBootData()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_4f
    const-string/jumbo v5, "com.samsung.android.iccc.IIntegrityControlCheckCenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;->getDeviceStatus(I[B)[B

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v6

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
