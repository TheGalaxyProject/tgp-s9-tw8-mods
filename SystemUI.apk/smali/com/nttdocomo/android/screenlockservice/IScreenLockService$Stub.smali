.class public abstract Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;
.super Landroid/os/Binder;
.source "IScreenLockService.java"

# interfaces
.implements Lcom/nttdocomo/android/screenlockservice/IScreenLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->getUnreadCount()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method