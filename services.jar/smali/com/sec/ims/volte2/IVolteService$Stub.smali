.class public abstract Lcom/sec/ims/volte2/IVolteService$Stub;
.super Landroid/os/Binder;
.source "IVolteService.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVolteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVolteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IVolteService"

.field static final TRANSACTION_createCallProfile:I = 0x5

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_createSessionWithRegId:I = 0x7

.field static final TRANSACTION_deRegisterForVolteServiceEvent:I = 0x2

.field static final TRANSACTION_deregisterForCallStateEvent:I = 0xe

.field static final TRANSACTION_deregisterForCallStateEventForSlot:I = 0x12

.field static final TRANSACTION_enableCallWaitingRule:I = 0x15

.field static final TRANSACTION_getCallCount:I = 0x1b

.field static final TRANSACTION_getNetworkType:I = 0x20

.field static final TRANSACTION_getParticipantIdForMerge:I = 0x1d

.field static final TRANSACTION_getPendingSession:I = 0x8

.field static final TRANSACTION_getPullingSession:I = 0x9

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x1f

.field static final TRANSACTION_getRttMode:I = 0x1c

.field static final TRANSACTION_getSession:I = 0xa

.field static final TRANSACTION_getSessionByCallId:I = 0x1e

.field static final TRANSACTION_notifyProgressIncomingCall:I = 0x16

.field static final TRANSACTION_publishDialog:I = 0x19

.field static final TRANSACTION_registerForCallStateEvent:I = 0xd

.field static final TRANSACTION_registerForCallStateEventForSlot:I = 0x11

.field static final TRANSACTION_registerForVolteServiceEvent:I = 0x1

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x3

.field static final TRANSACTION_registerVideoListener:I = 0xf

.field static final TRANSACTION_registerVideoListenerForSlot:I = 0x13

.field static final TRANSACTION_requestFakeCallEnd:I = 0x17

.field static final TRANSACTION_requestFakeCallEstablished:I = 0x18

.field static final TRANSACTION_setIsMdmnPrimaryDevice:I = 0x1a

.field static final TRANSACTION_setTtyMode:I = 0xb

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x4

.field static final TRANSACTION_unregisterVideoListener:I = 0x10

.field static final TRANSACTION_unregisterVideoListenerForSlot:I = 0x14

.field static final TRANSACTION_updateSSACInfo:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IVolteService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IVolteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.volte2.IVolteService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IVolteService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/volte2/IVolteService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_436

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_8
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteServiceEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_32
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteServiceEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_52
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7c

    const/16 v20, 0x1

    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_7c
    const/16 v20, 0x0

    goto :goto_6a

    :sswitch_7f
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/volte2/IVolteService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_99
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/sec/ims/volte2/IVolteService$Stub;->createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_c4

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c2
    const/4 v3, 0x1

    return v3

    :cond_c4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    :sswitch_cb
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f9

    sget-object v3, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/volte2/IVolteService$Stub;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_fb

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_f2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_f9
    const/4 v12, 0x0

    goto :goto_e3

    :cond_fb
    const/4 v3, 0x0

    goto :goto_f2

    :sswitch_fd
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12f

    sget-object v3, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Lcom/sec/ims/volte2/IVolteService$Stub;->createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_131

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_128
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_12f
    const/4 v12, 0x0

    goto :goto_115

    :cond_131
    const/4 v3, 0x0

    goto :goto_128

    :sswitch_133
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/volte2/IVolteService$Stub;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_155

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_14e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_155
    const/4 v3, 0x0

    goto :goto_14e

    :sswitch_157
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->getPullingSession(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_179

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_172
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_179
    const/4 v3, 0x0

    goto :goto_172

    :sswitch_17b
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->getSession(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_19d

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_196
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_19d
    const/4 v3, 0x0

    goto :goto_196

    :sswitch_19f
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->setTtyMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1b5
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v4, v15, v1, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->updateSSACInfo(IIII)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_1e3
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1fd
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/volte2/IVolteService$Stub;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_217
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_231
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/volte2/IVolteService$Stub;->unregisterVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_24b
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_26b
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_28b
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerVideoListenerForSlot(ILcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_2ab
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->unregisterVideoListenerForSlot(ILcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_2cb
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e4

    const/4 v14, 0x1

    :goto_2da
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/ims/volte2/IVolteService$Stub;->enableCallWaitingRule(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_2e4
    const/4 v14, 0x0

    goto :goto_2da

    :sswitch_2e6
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/volte2/IVolteService$Stub;->notifyProgressIncomingCall(ILjava/util/Map;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_30e
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->requestFakeCallEnd(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_324
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->requestFakeCallEstablished(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_33a
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/ims/volte2/IVolteService$Stub;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_368
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_381

    const/4 v14, 0x1

    :goto_377
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/ims/volte2/IVolteService$Stub;->setIsMdmnPrimaryDevice(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_381
    const/4 v14, 0x0

    goto :goto_377

    :sswitch_383
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->getCallCount()[I

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v3, 0x1

    return v3

    :sswitch_39b
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->getRttMode()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_3b3
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/sec/ims/volte2/IVolteService$Stub;->getParticipantIdForMerge(II)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_3d5
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_3f7

    invoke-interface/range {v24 .. v24}, Lcom/sec/ims/volte2/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_3f0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_3f7
    const/4 v3, 0x0

    goto :goto_3f0

    :sswitch_3f9
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    :sswitch_418
    const-string/jumbo v3, "com.sec.ims.volte2.IVolteService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->getNetworkType(I)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_data_436
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_32
        0x3 -> :sswitch_52
        0x4 -> :sswitch_7f
        0x5 -> :sswitch_99
        0x6 -> :sswitch_cb
        0x7 -> :sswitch_fd
        0x8 -> :sswitch_133
        0x9 -> :sswitch_157
        0xa -> :sswitch_17b
        0xb -> :sswitch_19f
        0xc -> :sswitch_1b5
        0xd -> :sswitch_1e3
        0xe -> :sswitch_1fd
        0xf -> :sswitch_217
        0x10 -> :sswitch_231
        0x11 -> :sswitch_24b
        0x12 -> :sswitch_26b
        0x13 -> :sswitch_28b
        0x14 -> :sswitch_2ab
        0x15 -> :sswitch_2cb
        0x16 -> :sswitch_2e6
        0x17 -> :sswitch_30e
        0x18 -> :sswitch_324
        0x19 -> :sswitch_33a
        0x1a -> :sswitch_368
        0x1b -> :sswitch_383
        0x1c -> :sswitch_39b
        0x1d -> :sswitch_3b3
        0x1e -> :sswitch_3d5
        0x1f -> :sswitch_3f9
        0x20 -> :sswitch_418
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
