.class public abstract Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;
.super Landroid/os/Binder;
.source "IPersonalProfileNotify.java"

# interfaces
.implements Lcom/sec/ims/profile/IPersonalProfileNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/profile/IPersonalProfileNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/IPersonalProfileNotify$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.profile.IPersonalProfileNotify"

.field static final TRANSACTION_onNotify:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.profile.IPersonalProfileNotify"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.profile.IPersonalProfileNotify"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/profile/IPersonalProfileNotify;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/profile/IPersonalProfileNotify;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "com.sec.ims.profile.IPersonalProfileNotify"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "com.sec.ims.profile.IPersonalProfileNotify"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Lcom/sec/ims/profile/ProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/profile/ProfileInfo;

    :goto_30
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_37
    const/4 v3, 0x0

    goto :goto_30

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
