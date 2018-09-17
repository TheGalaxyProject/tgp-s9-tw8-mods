.class public abstract Lcom/samsung/android/app/qragent/service/IQRService$Stub;
.super Landroid/os/Binder;
.source "IQRService.java"

# interfaces
.implements Lcom/samsung/android/app/qragent/service/IQRService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/qragent/service/IQRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v1, "com.samsung.android.app.qragent.service.IQRService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v1, Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v1, v0, Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/samsung/android/app/qragent/service/IQRService;

    return-object v0
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

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_a0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_a
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_11
    const-string/jumbo v7, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->getQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v3, :cond_28

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27
    return v6

    :cond_28
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    :sswitch_2f
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithFilePath(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_44
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithRawData(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_59
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_71

    const/4 v0, 0x0

    :goto_66
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithBitmap(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_71
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_66

    :sswitch_7a
    const-string/jumbo v7, "com.samsung.android.app.qragent.service.IQRService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_94

    const/4 v0, 0x0

    :goto_87
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->isQRCode(Landroid/graphics/Bitmap;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v4, :cond_9d

    :goto_90
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_94
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_87

    :cond_9d
    move v5, v6

    goto :goto_90

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_44
        0x4 -> :sswitch_59
        0x5 -> :sswitch_7a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
