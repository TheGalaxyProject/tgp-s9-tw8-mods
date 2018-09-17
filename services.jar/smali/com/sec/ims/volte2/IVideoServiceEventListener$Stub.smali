.class public abstract Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "IVideoServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVideoServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVideoServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IVideoServiceEventListener"

.field static final TRANSACTION_getSession:I = 0x1

.field static final TRANSACTION_onCameraState:I = 0x2

.field static final TRANSACTION_onChangePeerDimension:I = 0x8

.field static final TRANSACTION_onVideoOrientChanged:I = 0x7

.field static final TRANSACTION_onVideoQualityChanged:I = 0x4

.field static final TRANSACTION_onVideoState:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x5

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x6

.field static final TRANSACTION_setVideoPause:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_102

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_a
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_11
    const-string/jumbo v9, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->getSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_24

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_24
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :sswitch_28
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onCameraState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_3d
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_52
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoQualityChanged(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_67
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_86

    sget-object v8, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_7f
    invoke-virtual {p0, v0, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_86
    const/4 v2, 0x0

    goto :goto_7f

    :sswitch_88
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b9

    sget-object v8, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_bb

    sget-object v8, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_b2
    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_b9
    const/4 v5, 0x0

    goto :goto_a4

    :cond_bb
    const/4 v6, 0x0

    goto :goto_b2

    :sswitch_bd
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoOrientChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_ce
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onChangePeerDimension(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_e7
    const-string/jumbo v8, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_ff

    const/4 v3, 0x1

    :goto_f8
    invoke-virtual {p0, v0, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->setVideoPause(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_ff
    const/4 v3, 0x0

    goto :goto_f8

    nop

    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_52
        0x5 -> :sswitch_67
        0x6 -> :sswitch_88
        0x7 -> :sswitch_bd
        0x8 -> :sswitch_ce
        0x9 -> :sswitch_e7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
