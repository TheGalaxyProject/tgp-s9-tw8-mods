.class public abstract Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;
.super Landroid/os/Binder;
.source "IAsrResponse.java"

# interfaces
.implements Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v1, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v1, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v1, v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    return-object v0
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

    sparse-switch p1, :sswitch_data_c8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_24

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onReadyForSpeech(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_24
    sget-object v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    goto :goto_1d

    :sswitch_2d
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onBeginningOfSpeech()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_3a
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onRmsChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_4b
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onEndOfSpeech()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_58
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_6c

    const/4 v1, 0x0

    :goto_65
    invoke-virtual {p0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onPartialResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_6c
    sget-object v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    goto :goto_65

    :sswitch_75
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_89

    const/4 v1, 0x0

    :goto_82
    invoke-virtual {p0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_89
    sget-object v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    goto :goto_82

    :sswitch_92
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onError(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_a3
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onErrorString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_b4
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrResponse"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->onBufferReceived([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v5

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_58
        0x6 -> :sswitch_75
        0x7 -> :sswitch_92
        0x8 -> :sswitch_a3
        0x9 -> :sswitch_b4
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
