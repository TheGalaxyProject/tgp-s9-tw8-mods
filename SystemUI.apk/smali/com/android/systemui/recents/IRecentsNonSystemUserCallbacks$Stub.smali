.class public abstract Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRecentsNonSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_f2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->preloadRecents()V

    const/4 v0, 0x1

    return v0

    :sswitch_1b
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->cancelPreloadingRecents()V

    const/4 v0, 0x1

    return v0

    :sswitch_26
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    const/4 v1, 0x1

    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v2, 0x1

    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v3, 0x1

    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v4, 0x1

    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v5, 0x1

    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showRecents(ZZZZZI)V

    const/4 v0, 0x1

    return v0

    :cond_59
    const/4 v1, 0x0

    goto :goto_33

    :cond_5b
    const/4 v2, 0x0

    goto :goto_3a

    :cond_5d
    const/4 v3, 0x0

    goto :goto_41

    :cond_5f
    const/4 v4, 0x0

    goto :goto_48

    :cond_61
    const/4 v5, 0x0

    goto :goto_4f

    :sswitch_63
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v1, 0x1

    :goto_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    const/4 v2, 0x1

    :goto_77
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->hideRecents(ZZ)V

    const/4 v0, 0x1

    return v0

    :cond_7c
    const/4 v1, 0x0

    goto :goto_70

    :cond_7e
    const/4 v2, 0x0

    goto :goto_77

    :sswitch_80
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->toggleRecents(I)V

    const/4 v0, 0x1

    return v0

    :sswitch_8f
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onConfigurationChanged()V

    const/4 v0, 0x1

    return v0

    :sswitch_9a
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    :goto_ba
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->dockTopTask(IIILandroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_bf
    const/4 v11, 0x0

    goto :goto_ba

    :sswitch_c1
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecents(F)V

    const/4 v0, 0x1

    return v0

    :sswitch_d0
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecentsEnded(F)V

    const/4 v0, 0x1

    return v0

    :sswitch_df
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showCurrentUserToast(II)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_26
        0x4 -> :sswitch_63
        0x5 -> :sswitch_80
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_c1
        0x9 -> :sswitch_d0
        0xa -> :sswitch_df
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
