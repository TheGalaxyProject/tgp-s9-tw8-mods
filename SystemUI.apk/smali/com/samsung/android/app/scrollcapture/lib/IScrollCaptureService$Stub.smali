.class public abstract Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureService.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v1, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v1, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v1, v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-object v0
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

    sparse-switch p1, :sswitch_data_12c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->canScrollCapture(Landroid/os/IBinder;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_29

    const/4 v10, 0x0

    :goto_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_29
    const/4 v10, 0x1

    goto :goto_24

    :sswitch_2b
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->isUiActivated()Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_40

    const/4 v10, 0x0

    :goto_3b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_40
    const/4 v10, 0x1

    goto :goto_3b

    :sswitch_42
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_62

    const/4 v6, 0x0

    :goto_53
    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->startCapture(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_6b

    const/4 v10, 0x0

    :goto_5d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_62
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_53

    :cond_6b
    const/4 v10, 0x1

    goto :goto_5d

    :sswitch_6d
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_91

    const/4 v8, 0x0

    :goto_82
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_9a

    const/4 v10, 0x0

    :goto_8c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_91
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    goto :goto_82

    :cond_9a
    const/4 v10, 0x1

    goto :goto_8c

    :sswitch_9c
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_c0

    const/4 v8, 0x0

    :goto_b1
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_c9

    const/4 v10, 0x0

    :goto_bb
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_c0
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    goto :goto_b1

    :cond_c9
    const/4 v10, 0x1

    goto :goto_bb

    :sswitch_cb
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->setCustomSettingFilePath(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_e4

    const/4 v10, 0x0

    :goto_df
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_e4
    const/4 v10, 0x1

    goto :goto_df

    :sswitch_e6
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_106

    const/4 v5, 0x0

    :goto_f7
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->registerNotification(ILandroid/app/Notification;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_10f

    const/4 v10, 0x0

    :goto_101
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_106
    sget-object v10, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    goto :goto_f7

    :cond_10f
    const/4 v10, 0x1

    goto :goto_101

    :sswitch_111
    const-string/jumbo v10, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->cancelNotification(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v9, :cond_12a

    const/4 v10, 0x0

    :goto_125
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_12a
    const/4 v10, 0x1

    goto :goto_125

    :sswitch_data_12c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_42
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_cb
        0x7 -> :sswitch_e6
        0x8 -> :sswitch_111
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
