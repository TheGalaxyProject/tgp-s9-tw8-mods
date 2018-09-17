.class public abstract Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;
.super Landroid/os/Binder;
.source "IMirrorlinkManager.java"

# interfaces
.implements Lcom/mirrorlink/android/service/IMirrorlinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/service/IMirrorlinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_c8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_a
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_26
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3b
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getAllAppList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v7

    :sswitch_4c
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocationCheck(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5d
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocation()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_6a
    const-string/jumbo v8, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_84

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_83
    return v7

    :cond_84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_83

    :sswitch_88
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9c

    const/4 v2, 0x1

    :goto_95
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->setDevMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_9c
    const/4 v2, 0x0

    goto :goto_95

    :sswitch_9e
    const-string/jumbo v6, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v2, 0x1

    :goto_ab
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->writeTerminalVersion(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_b2
    const/4 v2, 0x0

    goto :goto_ab

    :sswitch_b4
    const-string/jumbo v8, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->readTerminalVersion()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_c4

    move v6, v7

    :cond_c4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_b4
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
