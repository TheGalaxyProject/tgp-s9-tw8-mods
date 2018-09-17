.class public abstract Lcom/sec/ims/volte2/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xa

.field static final TRANSACTION_acceptECTRequest:I = 0x20

.field static final TRANSACTION_cancelTransfer:I = 0x14

.field static final TRANSACTION_extendToConference:I = 0x1e

.field static final TRANSACTION_getCallId:I = 0x5

.field static final TRANSACTION_getCallProfile:I = 0x1

.field static final TRANSACTION_getCallStateOrdinal:I = 0x6

.field static final TRANSACTION_getIncomingInviteRawSip:I = 0x16

.field static final TRANSACTION_getMediaCallProvider:I = 0x27

.field static final TRANSACTION_getModifyRequestedProfile:I = 0x2

.field static final TRANSACTION_getPhoneId:I = 0x8

.field static final TRANSACTION_getRegistration:I = 0x17

.field static final TRANSACTION_getSessionId:I = 0x7

.field static final TRANSACTION_getUsingCamera:I = 0x26

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_holdVideo:I = 0x22

.field static final TRANSACTION_info:I = 0x15

.field static final TRANSACTION_inviteGroupParticipant:I = 0x1c

.field static final TRANSACTION_inviteParticipants:I = 0x1a

.field static final TRANSACTION_merge:I = 0x18

.field static final TRANSACTION_recording:I = 0x12

.field static final TRANSACTION_registerSessionEventListener:I = 0x3

.field static final TRANSACTION_reinvite:I = 0x11

.field static final TRANSACTION_reject:I = 0xb

.field static final TRANSACTION_rejectECTRequest:I = 0x21

.field static final TRANSACTION_removeGroupParticipant:I = 0x1d

.field static final TRANSACTION_removeParticipants:I = 0x1b

.field static final TRANSACTION_resume:I = 0xe

.field static final TRANSACTION_resumeVideo:I = 0x23

.field static final TRANSACTION_sendDtmf:I = 0x28

.field static final TRANSACTION_sendText:I = 0x2b

.field static final TRANSACTION_setMute:I = 0x10

.field static final TRANSACTION_start:I = 0x9

.field static final TRANSACTION_startCameraForProvider:I = 0x24

.field static final TRANSACTION_startConference:I = 0x19

.field static final TRANSACTION_startDtmf:I = 0x29

.field static final TRANSACTION_startECT:I = 0x1f

.field static final TRANSACTION_stopCameraForProvider:I = 0x25

.field static final TRANSACTION_stopDtmf:I = 0x2a

.field static final TRANSACTION_terminate:I = 0xc

.field static final TRANSACTION_transfer:I = 0x13

.field static final TRANSACTION_unregisterSessionEventListener:I = 0x4

.field static final TRANSACTION_update:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.volte2.IImsCallSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_524

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v20

    return v20

    :sswitch_8
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v20, 0x1

    return v20

    :sswitch_15
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_3f

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3c
    const/16 v20, 0x1

    return v20

    :cond_3f
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    :sswitch_49
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_73

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_70
    const/16 v20, 0x1

    return v20

    :cond_73
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_70

    :sswitch_7d
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_9a
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_b7
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallId()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_d0
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallStateOrdinal()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_e9
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getSessionId()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_102
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getPhoneId()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_11b
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_14c

    sget-object v20, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_13b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :cond_14c
    const/4 v11, 0x0

    goto :goto_13b

    :sswitch_14e
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_175

    sget-object v20, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_16a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_175
    const/4 v5, 0x0

    goto :goto_16a

    :sswitch_177
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->reject(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_190
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->terminate(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_1a9
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_1d0

    sget-object v20, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/data/MediaProfile;

    :goto_1c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_1d0
    const/4 v6, 0x0

    goto :goto_1c5

    :sswitch_1d2
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->resume()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_1e5
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_214

    sget-object v20, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_214
    const/4 v5, 0x0

    goto :goto_201

    :sswitch_216
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_232

    const/4 v8, 0x1

    :goto_227
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->setMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_232
    const/4 v8, 0x0

    goto :goto_227

    :sswitch_234
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->reinvite()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_247
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->recording(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_264
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->transfer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_281
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->cancelTransfer()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_294
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->info(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_2b1
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v20, 0x1

    return v20

    :sswitch_2cc
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_2f4

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/sec/ims/ImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2f1
    const/16 v20, 0x1

    return v20

    :cond_2f4
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f1

    :sswitch_2fe
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->merge(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_31b
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_346

    sget-object v20, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/volte2/data/CallProfile;

    :goto_33b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_346
    const/4 v11, 0x0

    goto :goto_33b

    :sswitch_348
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->inviteParticipants(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_361
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->removeParticipants(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_37a
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->inviteGroupParticipant(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_393
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->removeGroupParticipant(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_3ac
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_3c5
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startECT(ILjava/lang/String;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_3e8
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->acceptECTRequest()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_401
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->rejectECTRequest()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :sswitch_41a
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->holdVideo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_42d
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->resumeVideo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_440
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startCameraForProvider(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_459
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_475

    const/4 v8, 0x1

    :goto_46a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->stopCameraForProvider(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :cond_475
    const/4 v8, 0x0

    goto :goto_46a

    :sswitch_477
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getUsingCamera()Z

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_496

    const/16 v20, 0x1

    :goto_48c
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v20, 0x1

    return v20

    :cond_496
    const/16 v20, 0x0

    goto :goto_48c

    :sswitch_499
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_4ba

    invoke-interface/range {v16 .. v16}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_4b0
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v20, 0x1

    return v20

    :cond_4ba
    const/16 v20, 0x0

    goto :goto_4b0

    :sswitch_4bd
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->sendDtmf(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_4da
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startDtmf(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_4f3
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->stopDtmf()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    :sswitch_506
    const-string/jumbo v20, "com.sec.ims.volte2.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->sendText(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v20, 0x1

    return v20

    nop

    :sswitch_data_524
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_49
        0x3 -> :sswitch_7d
        0x4 -> :sswitch_9a
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_d0
        0x7 -> :sswitch_e9
        0x8 -> :sswitch_102
        0x9 -> :sswitch_11b
        0xa -> :sswitch_14e
        0xb -> :sswitch_177
        0xc -> :sswitch_190
        0xd -> :sswitch_1a9
        0xe -> :sswitch_1d2
        0xf -> :sswitch_1e5
        0x10 -> :sswitch_216
        0x11 -> :sswitch_234
        0x12 -> :sswitch_247
        0x13 -> :sswitch_264
        0x14 -> :sswitch_281
        0x15 -> :sswitch_294
        0x16 -> :sswitch_2b1
        0x17 -> :sswitch_2cc
        0x18 -> :sswitch_2fe
        0x19 -> :sswitch_31b
        0x1a -> :sswitch_348
        0x1b -> :sswitch_361
        0x1c -> :sswitch_37a
        0x1d -> :sswitch_393
        0x1e -> :sswitch_3ac
        0x1f -> :sswitch_3c5
        0x20 -> :sswitch_3e8
        0x21 -> :sswitch_401
        0x22 -> :sswitch_41a
        0x23 -> :sswitch_42d
        0x24 -> :sswitch_440
        0x25 -> :sswitch_459
        0x26 -> :sswitch_477
        0x27 -> :sswitch_499
        0x28 -> :sswitch_4bd
        0x29 -> :sswitch_4da
        0x2a -> :sswitch_4f3
        0x2b -> :sswitch_506
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
