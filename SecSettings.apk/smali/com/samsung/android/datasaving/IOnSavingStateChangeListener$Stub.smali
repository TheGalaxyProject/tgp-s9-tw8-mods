.class public abstract Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;
.super Landroid/os/Binder;
.source "IOnSavingStateChangeListener.java"

# interfaces
.implements Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.datasaving.IOnSavingStateChangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.samsung.android.datasaving.IOnSavingStateChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_26

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "com.samsung.android.datasaving.IOnSavingStateChangeListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "com.samsung.android.datasaving.IOnSavingStateChangeListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->onChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_24
    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
