.class public abstract Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "ISSConfigServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/ss/ISSConfigServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/ISSConfigServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.ss.ISSConfigServiceEventListener"

.field static final TRANSACTION_onGetCallBarringResponse:I = 0x6

.field static final TRANSACTION_onGetCallForwardingResponse:I = 0x4

.field static final TRANSACTION_onGetCallWaitingResponse:I = 0x2

.field static final TRANSACTION_onGetICBarringResponse:I = 0x8

.field static final TRANSACTION_onHandleEvent:I = 0x9

.field static final TRANSACTION_onSetCallBarringResponse:I = 0x5

.field static final TRANSACTION_onSetCallForwardingResponse:I = 0x3

.field static final TRANSACTION_onSetCallWaitingResponse:I = 0x1

.field static final TRANSACTION_onSetICBarringResponse:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.ss.ISSConfigServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/ISSConfigServiceEventListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.ss.ISSConfigServiceEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/ss/ISSConfigServiceEventListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/ss/ISSConfigServiceEventListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1aa

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/4 v5, 0x1

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1, v14}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onSetCallWaitingResponse(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_35
    const/4 v5, 0x0

    goto :goto_21

    :sswitch_37
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    const/4 v5, 0x1

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onGetCallWaitingResponse(ZI[I[ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_64
    const/4 v5, 0x0

    goto :goto_46

    :sswitch_66
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    const/4 v5, 0x1

    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1, v14}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onSetCallForwardingResponse(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_89
    const/4 v5, 0x0

    goto :goto_75

    :sswitch_8b
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ce

    const/4 v5, 0x1

    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v11, p0

    move v12, v5

    move-object v15, v8

    invoke-virtual/range {v11 .. v22}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onGetCallForwardingResponse(Z[II[I[I[I[I[I[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_ce
    const/4 v5, 0x0

    goto :goto_9a

    :sswitch_d0
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3

    const/4 v5, 0x1

    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1, v14}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onSetCallBarringResponse(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_f3
    const/4 v5, 0x0

    goto :goto_df

    :sswitch_f5
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_130

    const/4 v5, 0x1

    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    move-object/from16 v23, p0

    move/from16 v24, v5

    move-object/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v8

    move-object/from16 v28, v16

    invoke-virtual/range {v23 .. v30}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onGetCallBarringResponse(Z[II[I[ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_130
    const/4 v5, 0x0

    goto :goto_104

    :sswitch_132
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_155

    const/4 v5, 0x1

    :goto_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1, v14}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onSetICBarringResponse(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_155
    const/4 v5, 0x0

    goto :goto_141

    :sswitch_157
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_182

    const/4 v5, 0x1

    :goto_166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onGetICBarringResponse(Z[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_182
    const/4 v5, 0x0

    goto :goto_166

    :sswitch_184
    const-string/jumbo v4, "com.sec.ims.ss.ISSConfigServiceEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v14, v2}, Lcom/sec/ims/ss/ISSConfigServiceEventListener$Stub;->onHandleEvent(III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_37
        0x3 -> :sswitch_66
        0x4 -> :sswitch_8b
        0x5 -> :sswitch_d0
        0x6 -> :sswitch_f5
        0x7 -> :sswitch_132
        0x8 -> :sswitch_157
        0x9 -> :sswitch_184
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
