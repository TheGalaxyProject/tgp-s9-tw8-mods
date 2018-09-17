.class public abstract Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsMediaCallProvider.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsMediaCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsMediaCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsMediaCallProvider"

.field static final TRANSACTION_deinitSurface:I = 0x13

.field static final TRANSACTION_getCameraInfo:I = 0xe

.field static final TRANSACTION_getDefaultCameraId:I = 0x16

.field static final TRANSACTION_getMaxZoom:I = 0x14

.field static final TRANSACTION_getZoom:I = 0x15

.field static final TRANSACTION_registerForVideoServiceEvent:I = 0x19

.field static final TRANSACTION_requestCallDataUsage:I = 0x9

.field static final TRANSACTION_requestCameraCapabilities:I = 0x8

.field static final TRANSACTION_resetCameraId:I = 0xd

.field static final TRANSACTION_sendLiveVideo:I = 0x18

.field static final TRANSACTION_sendStillImage:I = 0x17

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCameraEffect:I = 0x1b

.field static final TRANSACTION_setDeviceOrientation:I = 0x6

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setDisplaySurfaceForPhoneId:I = 0x5

.field static final TRANSACTION_setPreviewSurface:I = 0x2

.field static final TRANSACTION_setPreviewSurfaceForPhoneId:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x7

.field static final TRANSACTION_startCamera:I = 0xa

.field static final TRANSACTION_startRender:I = 0xf

.field static final TRANSACTION_startVideoRenderer:I = 0x10

.field static final TRANSACTION_stopCamera:I = 0xb

.field static final TRANSACTION_stopVideoRenderer:I = 0x11

.field static final TRANSACTION_swipeVideoSurface:I = 0x12

.field static final TRANSACTION_switchCamera:I = 0xc

.field static final TRANSACTION_unregisterForVideoServiceEvent:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_23c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCamera(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_22
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3e

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_36
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_3e
    const/4 v2, 0x0

    goto :goto_36

    :sswitch_40
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_60

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    :goto_58
    invoke-virtual {p0, v1, v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_60
    const/4 v7, 0x0

    goto :goto_58

    :sswitch_62
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7e

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_76
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_7e
    const/4 v2, 0x0

    goto :goto_76

    :sswitch_80
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a0

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    :goto_98
    invoke-virtual {p0, v1, v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_a0
    const/4 v7, 0x0

    goto :goto_98

    :sswitch_a2
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDeviceOrientation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_b4
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setZoom(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_c6
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->requestCameraCapabilities()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_d4
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->requestCallDataUsage()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_e2
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_fe

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_f6
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startCamera(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_fe
    const/4 v2, 0x0

    goto :goto_f6

    :sswitch_100
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopCamera()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_10e
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->switchCamera()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_11c
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->resetCameraId()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_12a
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getCameraInfo(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_13c
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_151

    const/4 v5, 0x1

    :goto_149
    invoke-virtual {p0, v5}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startRender(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_151
    const/4 v5, 0x0

    goto :goto_149

    :sswitch_153
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_16f

    sget-object v11, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    :goto_167
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startVideoRenderer(Landroid/view/Surface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_16f
    const/4 v2, 0x0

    goto :goto_167

    :sswitch_171
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopVideoRenderer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_17f
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->swipeVideoSurface()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_18d
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1a2

    const/4 v5, 0x1

    :goto_19a
    invoke-virtual {p0, v5}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->deinitSurface(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_1a2
    const/4 v5, 0x0

    goto :goto_19a

    :sswitch_1a4
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getMaxZoom()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1b2
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getZoom()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1c0
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getDefaultCameraId()I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_1d2
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v4, v6, v8, v9}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendStillImage(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1f0
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendLiveVideo()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1fe
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_214
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_22a
    const-string/jumbo v11, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCameraEffect(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_data_23c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_40
        0x4 -> :sswitch_62
        0x5 -> :sswitch_80
        0x6 -> :sswitch_a2
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_d4
        0xa -> :sswitch_e2
        0xb -> :sswitch_100
        0xc -> :sswitch_10e
        0xd -> :sswitch_11c
        0xe -> :sswitch_12a
        0xf -> :sswitch_13c
        0x10 -> :sswitch_153
        0x11 -> :sswitch_171
        0x12 -> :sswitch_17f
        0x13 -> :sswitch_18d
        0x14 -> :sswitch_1a4
        0x15 -> :sswitch_1b2
        0x16 -> :sswitch_1c0
        0x17 -> :sswitch_1d2
        0x18 -> :sswitch_1f0
        0x19 -> :sswitch_1fe
        0x1a -> :sswitch_214
        0x1b -> :sswitch_22a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
