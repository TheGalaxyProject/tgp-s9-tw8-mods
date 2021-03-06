.class public abstract Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRecentsSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_8e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_9
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_10
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V

    return v7

    :sswitch_22
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/4 v3, 0x1

    :goto_2f
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->updateRecentsVisibility(Z)V

    return v7

    :cond_33
    const/4 v3, 0x0

    goto :goto_2f

    :sswitch_35
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->startScreenPinning(I)V

    return v7

    :sswitch_43
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendRecentsDrawnEvent()V

    return v7

    :sswitch_4d
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    :goto_65
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V

    return v7

    :cond_69
    const/4 v5, 0x0

    goto :goto_65

    :sswitch_6b
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendLaunchRecentsEvent()V

    return v7

    :sswitch_75
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendUndockingTaskEvent()V

    return v7

    :sswitch_7f
    const-string/jumbo v6, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->startSnapView(Ljava/lang/String;)V

    return v7

    nop

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_35
        0x4 -> :sswitch_43
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_75
        0x8 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
