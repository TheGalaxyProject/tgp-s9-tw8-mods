.class public abstract Lcom/samsung/android/datasaving/IDataSavingService$Stub;
.super Landroid/os/Binder;
.source "IDataSavingService.java"

# interfaces
.implements Lcom/samsung/android/datasaving/IDataSavingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/datasaving/IDataSavingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IDataSavingService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.samsung.android.datasaving.IDataSavingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/samsung/android/datasaving/IDataSavingService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_11e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_8
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_12
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->startSaving()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_22
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->stopSaving()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_32
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->bindServices()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_42
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesByUid(IJJ)J

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_66
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getUsageText(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_82
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesForAllUid(JJ)J

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_a2
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->setCurrentIMSI(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_b8
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->setOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_d2
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->removeOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_ec
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavingState()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_102
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->isSavingServiceBound()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_11b

    const/4 v2, 0x1

    :goto_114
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_11b
    const/4 v2, 0x0

    goto :goto_114

    nop

    :sswitch_data_11e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_22
        0x3 -> :sswitch_32
        0x4 -> :sswitch_42
        0x5 -> :sswitch_66
        0x6 -> :sswitch_82
        0x7 -> :sswitch_a2
        0x8 -> :sswitch_b8
        0x9 -> :sswitch_d2
        0xa -> :sswitch_ec
        0xb -> :sswitch_102
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
