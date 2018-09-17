.class public abstract Lcom/sec/ims/profile/IPersonalProfileService$Stub;
.super Landroid/os/Binder;
.source "IPersonalProfileService.java"

# interfaces
.implements Lcom/sec/ims/profile/IPersonalProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/profile/IPersonalProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/IPersonalProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.profile.IPersonalProfileService"

.field static final TRANSACTION_deRegisterOwnNumberListener:I = 0x6

.field static final TRANSACTION_deRegisterProfileUpdateListener:I = 0x8

.field static final TRANSACTION_getFriendProfile:I = 0x2

.field static final TRANSACTION_getFriendProfileById:I = 0x3

.field static final TRANSACTION_getOwnProfile:I = 0x1

.field static final TRANSACTION_registerOwnNumberListener:I = 0x5

.field static final TRANSACTION_registerProfileUpdateListener:I = 0x7

.field static final TRANSACTION_setOwnProfile:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.profile.IPersonalProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/profile/IPersonalProfileService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/profile/IPersonalProfileService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/profile/IPersonalProfileService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/profile/IPersonalProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_d0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_9
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_10
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->getOwnProfile(Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_25
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->getFriendProfile(Ljava/lang/String;Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3e
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v5

    invoke-virtual {p0, v0, v1, v5}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->getFriendProfileById(JLcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_57
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    sget-object v6, Lcom/sec/ims/profile/ProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/profile/ProfileInfo;

    :goto_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->setOwnProfile(Lcom/sec/ims/profile/ProfileInfo;Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_7a
    const/4 v3, 0x0

    goto :goto_6b

    :sswitch_7c
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->registerOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_91
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->deRegisterOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_a6
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->registerProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_bb
    const-string/jumbo v6, "com.sec.ims.profile.IPersonalProfileService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileNotify;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->deRegisterProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_data_d0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_57
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_91
        0x7 -> :sswitch_a6
        0x8 -> :sswitch_bb
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
