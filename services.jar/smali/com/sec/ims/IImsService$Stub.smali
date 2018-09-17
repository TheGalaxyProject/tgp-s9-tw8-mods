.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IImsService"

.field static final TRANSACTION_changeEPDGAudioPath:I = 0x52

.field static final TRANSACTION_changeEPDGAudioPathForSlot:I = 0x53

.field static final TRANSACTION_deregisterAdhocProfile:I = 0x1a

.field static final TRANSACTION_deregisterAdhocProfileByPhoneId:I = 0x1b

.field static final TRANSACTION_deregisterProfile:I = 0x12

.field static final TRANSACTION_deregisterProfileByPhoneId:I = 0x13

.field static final TRANSACTION_dump:I = 0x57

.field static final TRANSACTION_enableIpme:I = 0x46

.field static final TRANSACTION_enableIpmeByPhoneId:I = 0x47

.field static final TRANSACTION_enableRcs:I = 0x44

.field static final TRANSACTION_enableRcsByPhoneId:I = 0x49

.field static final TRANSACTION_enableService:I = 0x45

.field static final TRANSACTION_enableServiceByPhoneId:I = 0x4a

.field static final TRANSACTION_enableVoLte:I = 0x43

.field static final TRANSACTION_enableVoLteByPhoneId:I = 0x48

.field static final TRANSACTION_finishDmConfig:I = 0x63

.field static final TRANSACTION_forcedUpdateRegistration:I = 0x1e

.field static final TRANSACTION_forcedUpdateRegistrationByPhoneId:I = 0x1f

.field static final TRANSACTION_getAvailableNetworkType:I = 0x51

.field static final TRANSACTION_getCallCount:I = 0x56

.field static final TRANSACTION_getConfigValues:I = 0x5a

.field static final TRANSACTION_getCurrentProfile:I = 0x9

.field static final TRANSACTION_getCurrentProfileForSlot:I = 0xa

.field static final TRANSACTION_getGlobalSettingsValueToBoolean:I = 0x6f

.field static final TRANSACTION_getGlobalSettingsValueToInteger:I = 0x6e

.field static final TRANSACTION_getGlobalSettingsValueToString:I = 0x6d

.field static final TRANSACTION_getLastDialogEvent:I = 0x35

.field static final TRANSACTION_getMasterStringValue:I = 0x38

.field static final TRANSACTION_getMasterValue:I = 0x37

.field static final TRANSACTION_getNetworkType:I = 0x25

.field static final TRANSACTION_getRcsProfileType:I = 0xb

.field static final TRANSACTION_getRegistrationInfo:I = 0x6

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x7

.field static final TRANSACTION_getRegistrationInfoByServiceType:I = 0x8

.field static final TRANSACTION_getRttMode:I = 0x67

.field static final TRANSACTION_getVideocallType:I = 0x59

.field static final TRANSACTION_hasVoLteSim:I = 0x5e

.field static final TRANSACTION_hasVoLteSimByPhoneId:I = 0x5f

.field static final TRANSACTION_isForbidden:I = 0x5c

.field static final TRANSACTION_isForbiddenByPhoneId:I = 0x5d

.field static final TRANSACTION_isImsEnabled:I = 0x3b

.field static final TRANSACTION_isImsEnabledByPhoneId:I = 0x40

.field static final TRANSACTION_isIpmeEnabled:I = 0x4b

.field static final TRANSACTION_isIpmeEnabledByPhoneId:I = 0x4c

.field static final TRANSACTION_isRcsEnabled:I = 0x3d

.field static final TRANSACTION_isRegistered:I = 0x16

.field static final TRANSACTION_isRegistering:I = 0x60

.field static final TRANSACTION_isRegisteringByPhoneId:I = 0x61

.field static final TRANSACTION_isRttCall:I = 0x64

.field static final TRANSACTION_isServiceAvailable:I = 0x3f

.field static final TRANSACTION_isServiceEnabled:I = 0x3e

.field static final TRANSACTION_isServiceEnabledByPhoneId:I = 0x42

.field static final TRANSACTION_isVoLteEnabled:I = 0x3c

.field static final TRANSACTION_isVoLteEnabledByPhoneId:I = 0x41

.field static final TRANSACTION_isVolteEnabledFromNetwork:I = 0x3

.field static final TRANSACTION_isVolteSupportECT:I = 0x4

.field static final TRANSACTION_isVolteSupportEctByPhoneId:I = 0x5

.field static final TRANSACTION_registerAdhocProfile:I = 0x18

.field static final TRANSACTION_registerAdhocProfileByPhoneId:I = 0x19

.field static final TRANSACTION_registerAutoConfigurationListener:I = 0x2e

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerDialogEventListener:I = 0x31

.field static final TRANSACTION_registerDialogSubscribeStatusListener:I = 0x33

.field static final TRANSACTION_registerDmValueListener:I = 0x4d

.field static final TRANSACTION_registerImSessionListener:I = 0x26

.field static final TRANSACTION_registerImSessionListenerByPhoneId:I = 0x27

.field static final TRANSACTION_registerImsOngoingFtListener:I = 0x2a

.field static final TRANSACTION_registerImsOngoingFtListenerByPhoneId:I = 0x2b

.field static final TRANSACTION_registerImsRegistrationListener:I = 0xc

.field static final TRANSACTION_registerImsRegistrationListenerForSlot:I = 0xe

.field static final TRANSACTION_registerProfile:I = 0x10

.field static final TRANSACTION_registerProfileByPhoneId:I = 0x11

.field static final TRANSACTION_registerRttEventListener:I = 0x6b

.field static final TRANSACTION_registerVideoListener:I = 0x4f

.field static final TRANSACTION_sendDeregister:I = 0x20

.field static final TRANSACTION_sendRttMessage:I = 0x68

.field static final TRANSACTION_sendRttSessionModifyRequest:I = 0x6a

.field static final TRANSACTION_sendRttSessionModifyResponse:I = 0x69

.field static final TRANSACTION_sendTryRegister:I = 0x1c

.field static final TRANSACTION_sendTryRegisterByPhoneId:I = 0x1d

.field static final TRANSACTION_sendVerificationCode:I = 0x30

.field static final TRANSACTION_setActiveImpu:I = 0x22

.field static final TRANSACTION_setActiveMsisdn:I = 0x23

.field static final TRANSACTION_setAutomaticMode:I = 0x65

.field static final TRANSACTION_setEmergencyPdnInfo:I = 0x17

.field static final TRANSACTION_setIsimLoaded:I = 0x14

.field static final TRANSACTION_setProvisionedStringValue:I = 0x3a

.field static final TRANSACTION_setProvisionedValue:I = 0x39

.field static final TRANSACTION_setRttMode:I = 0x66

.field static final TRANSACTION_setSimRefreshed:I = 0x15

.field static final TRANSACTION_setVideocallType:I = 0x58

.field static final TRANSACTION_startDmConfig:I = 0x62

.field static final TRANSACTION_startLocalRingBackTone:I = 0x54

.field static final TRANSACTION_stopLocalRingBackTone:I = 0x55

.field static final TRANSACTION_suspendRegister:I = 0x21

.field static final TRANSACTION_transferCall:I = 0x36

.field static final TRANSACTION_unregisterAutoConfigurationListener:I = 0x2f

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterDialogEventListener:I = 0x32

.field static final TRANSACTION_unregisterDialogSubscribeStatusListener:I = 0x34

.field static final TRANSACTION_unregisterDmValueListener:I = 0x4e

.field static final TRANSACTION_unregisterImSessionListener:I = 0x28

.field static final TRANSACTION_unregisterImSessionListenerByPhoneId:I = 0x29

.field static final TRANSACTION_unregisterImsOngoingFtListener:I = 0x2c

.field static final TRANSACTION_unregisterImsOngoingFtListenerByPhoneId:I = 0x2d

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0xd

.field static final TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0xf

.field static final TRANSACTION_unregisterRttEventListener:I = 0x6c

.field static final TRANSACTION_unregisterVideoListener:I = 0x50

.field static final TRANSACTION_updateConfigValues:I = 0x5b

.field static final TRANSACTION_updateRegistration:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/IImsService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_fda

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v39

    return v39

    :sswitch_8
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v39, 0x1

    return v39

    :sswitch_15
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lcom/sec/ims/IImsService$Stub;->registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_38
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/IImsService$Stub;->unregisterCallback(Lcom/sec/ims/ImsEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_55
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isVolteEnabledFromNetwork(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_7a

    const/16 v39, 0x1

    :goto_70
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_7a
    const/16 v39, 0x0

    goto :goto_70

    :sswitch_7d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isVolteSupportECT()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_9c

    const/16 v39, 0x1

    :goto_92
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_9c
    const/16 v39, 0x0

    goto :goto_92

    :sswitch_9f
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isVolteSupportEctByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_c4

    const/16 v39, 0x1

    :goto_ba
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_c4
    const/16 v39, 0x0

    goto :goto_ba

    :sswitch_c7
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v39, 0x1

    return v39

    :sswitch_e6
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v39, 0x1

    return v39

    :sswitch_10b
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_141

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13e
    const/16 v39, 0x1

    return v39

    :cond_141
    const/16 v39, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13e

    :sswitch_14b
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v39, 0x1

    return v39

    :sswitch_16a
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v39, 0x1

    return v39

    :sswitch_18f
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v39, 0x1

    return v39

    :sswitch_1b0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/IImsService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_1cd
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/IImsService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_1ea
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/sec/ims/IImsService$Stub;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_20d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_230
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/ims/IImsService$Stub;->registerProfile(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_255
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/sec/ims/IImsService$Stub;->registerProfileByPhoneId(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_280
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_2af

    const/16 v23, 0x1

    :goto_2a2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Lcom/sec/ims/IImsService$Stub;->deregisterProfile(Ljava/util/List;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_2af
    const/16 v23, 0x0

    goto :goto_2a2

    :sswitch_2b2
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_2e7

    const/16 v23, 0x1

    :goto_2d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Lcom/sec/ims/IImsService$Stub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_2e7
    const/16 v23, 0x0

    goto :goto_2d4

    :sswitch_2ea
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->setIsimLoaded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_2fd
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->setSimRefreshed()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_310
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRegistered()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_32f

    const/16 v39, 0x1

    :goto_325
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_32f
    const/16 v39, 0x0

    goto :goto_325

    :sswitch_332
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_35d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_38c

    sget-object v39, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    :goto_379
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/IImsService$Stub;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_38c
    const/4 v12, 0x0

    goto :goto_379

    :sswitch_38e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_3c3

    sget-object v39, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    :goto_3aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/sec/ims/IImsService$Stub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_3c3
    const/4 v12, 0x0

    goto :goto_3aa

    :sswitch_3c5
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->deregisterAdhocProfile(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_3de
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->deregisterAdhocProfileByPhoneId(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_3fd
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->sendTryRegister()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_410
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->sendTryRegisterByPhoneId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_429
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_450

    sget-object v39, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    :goto_445
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/IImsService$Stub;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_450
    const/4 v12, 0x0

    goto :goto_445

    :sswitch_452
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_47f

    sget-object v39, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    :goto_46e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/sec/ims/IImsService$Stub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_47f
    const/4 v12, 0x0

    goto :goto_46e

    :sswitch_481
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->sendDeregister(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_4a0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_4c2

    const/4 v15, 0x1

    :goto_4b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sec/ims/IImsService$Stub;->suspendRegister(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_4c2
    const/4 v15, 0x0

    goto :goto_4b1

    :sswitch_4c4
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/ims/IImsService$Stub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_4f1
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/ims/IImsService$Stub;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_51e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_54d

    sget-object v39, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/settings/ImsProfile;

    :goto_53a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/IImsService$Stub;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_54d
    const/4 v12, 0x0

    goto :goto_53a

    :sswitch_54f
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getNetworkType(I)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_570
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/IImsService$Stub;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_58d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/sec/ims/IImsService$Stub;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_5b0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/IImsService$Stub;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_5cd
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_5f0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/IImsService$Stub;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_60d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcom/sec/ims/IImsService$Stub;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_630
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/IImsService$Stub;->unregisterImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_64d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_670
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/sec/ims/IImsService$Stub;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_693
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_6b6
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sec/ims/IImsService$Stub;->sendVerificationCode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_6d5
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_6f8
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_71b
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IDialogSubscribeStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogSubscribeStatusListener;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->registerDialogSubscribeStatusListener(ILcom/sec/ims/IDialogSubscribeStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_73e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IDialogSubscribeStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogSubscribeStatusListener;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogSubscribeStatusListener(ILcom/sec/ims/IDialogSubscribeStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_761
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_791

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/DialogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_78e
    const/16 v39, 0x1

    return v39

    :cond_791
    const/16 v39, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78e

    :sswitch_79b
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lcom/sec/ims/IImsService$Stub;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_7ba
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getMasterValue(I)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_7db
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getMasterStringValue(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v39, 0x1

    return v39

    :sswitch_7fc
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->setProvisionedValue(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_81b
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->setProvisionedStringValue(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_83a
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isImsEnabled()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_859

    const/16 v39, 0x1

    :goto_84f
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_859
    const/16 v39, 0x0

    goto :goto_84f

    :sswitch_85c
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isVoLteEnabled()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_87b

    const/16 v39, 0x1

    :goto_871
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_87b
    const/16 v39, 0x0

    goto :goto_871

    :sswitch_87e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRcsEnabled()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_89d

    const/16 v39, 0x1

    :goto_893
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_89d
    const/16 v39, 0x0

    goto :goto_893

    :sswitch_8a0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/IImsService$Stub;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_8c5

    const/16 v39, 0x1

    :goto_8bb
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_8c5
    const/16 v39, 0x0

    goto :goto_8bb

    :sswitch_8c8
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/ims/IImsService$Stub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_8f9

    const/16 v39, 0x1

    :goto_8ef
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_8f9
    const/16 v39, 0x0

    goto :goto_8ef

    :sswitch_8fc
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isImsEnabledByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_921

    const/16 v39, 0x1

    :goto_917
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_921
    const/16 v39, 0x0

    goto :goto_917

    :sswitch_924
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isVoLteEnabledByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_949

    const/16 v39, 0x1

    :goto_93f
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_949
    const/16 v39, 0x0

    goto :goto_93f

    :sswitch_94c
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/sec/ims/IImsService$Stub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_977

    const/16 v39, 0x1

    :goto_96d
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_977
    const/16 v39, 0x0

    goto :goto_96d

    :sswitch_97a
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_996

    const/4 v15, 0x1

    :goto_98b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/ims/IImsService$Stub;->enableVoLte(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_996
    const/4 v15, 0x0

    goto :goto_98b

    :sswitch_998
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_9b4

    const/4 v15, 0x1

    :goto_9a9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/ims/IImsService$Stub;->enableRcs(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_9b4
    const/4 v15, 0x0

    goto :goto_9a9

    :sswitch_9b6
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_9d9

    const/16 v23, 0x1

    :goto_9cc
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/sec/ims/IImsService$Stub;->enableService(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_9d9
    const/16 v23, 0x0

    goto :goto_9cc

    :sswitch_9dc
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_9f8

    const/4 v15, 0x1

    :goto_9ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/ims/IImsService$Stub;->enableIpme(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_9f8
    const/4 v15, 0x0

    goto :goto_9ed

    :sswitch_9fa
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_a1c

    const/4 v15, 0x1

    :goto_a0b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sec/ims/IImsService$Stub;->enableIpmeByPhoneId(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_a1c
    const/4 v15, 0x0

    goto :goto_a0b

    :sswitch_a1e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_a40

    const/4 v15, 0x1

    :goto_a2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sec/ims/IImsService$Stub;->enableVoLteByPhoneId(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_a40
    const/4 v15, 0x0

    goto :goto_a2f

    :sswitch_a42
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_a64

    const/4 v15, 0x1

    :goto_a53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sec/ims/IImsService$Stub;->enableRcsByPhoneId(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_a64
    const/4 v15, 0x0

    goto :goto_a53

    :sswitch_a66
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_a8f

    const/16 v23, 0x1

    :goto_a7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/ims/IImsService$Stub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_a8f
    const/16 v23, 0x0

    goto :goto_a7c

    :sswitch_a92
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isIpmeEnabled()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_ab1

    const/16 v39, 0x1

    :goto_aa7
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_ab1
    const/16 v39, 0x0

    goto :goto_aa7

    :sswitch_ab4
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isIpmeEnabledByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_ad9

    const/16 v39, 0x1

    :goto_acf
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_ad9
    const/16 v39, 0x0

    goto :goto_acf

    :sswitch_adc
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/IImsService$Stub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_af9
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/IImsService$Stub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_b16
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->registerVideoListener(ILcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_b39
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterVideoListener(ILcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_b5c
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/IImsService$Stub;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v39, 0x1

    return v39

    :sswitch_b7d
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->changeEPDGAudioPath(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_b96
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->changeEPDGAudioPathForSlot(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_bb5
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/ims/IImsService$Stub;->startLocalRingBackTone(III)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_be2
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->stopLocalRingBackTone()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_bfd
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getCallCount(I)[I

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v39, 0x1

    return v39

    :sswitch_c1e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->dump()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_c31
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->setVideocallType(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_c56

    const/16 v39, 0x1

    :goto_c4c
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_c56
    const/16 v39, 0x0

    goto :goto_c4c

    :sswitch_c59
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getVideocallType()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_c74
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_cac

    const/16 v39, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ca9
    const/16 v39, 0x1

    return v39

    :cond_cac
    const/16 v39, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ca9

    :sswitch_cb6
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_cf5

    sget-object v39, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    :goto_cd2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/ims/IImsService$Stub;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_cf7

    const/16 v39, 0x1

    :goto_ceb
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_cf5
    const/4 v5, 0x0

    goto :goto_cd2

    :cond_cf7
    const/16 v39, 0x0

    goto :goto_ceb

    :sswitch_cfa
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isForbidden()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_d19

    const/16 v39, 0x1

    :goto_d0f
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_d19
    const/16 v39, 0x0

    goto :goto_d0f

    :sswitch_d1c
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isForbiddenByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_d41

    const/16 v39, 0x1

    :goto_d37
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_d41
    const/16 v39, 0x0

    goto :goto_d37

    :sswitch_d44
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->hasVoLteSim()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_d63

    const/16 v39, 0x1

    :goto_d59
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_d63
    const/16 v39, 0x0

    goto :goto_d59

    :sswitch_d66
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->hasVoLteSimByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_d8b

    const/16 v39, 0x1

    :goto_d81
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_d8b
    const/16 v39, 0x0

    goto :goto_d81

    :sswitch_d8e
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRegistering()Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_dad

    const/16 v39, 0x1

    :goto_da3
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_dad
    const/16 v39, 0x0

    goto :goto_da3

    :sswitch_db0
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isRegisteringByPhoneId(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_dd5

    const/16 v39, 0x1

    :goto_dcb
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_dd5
    const/16 v39, 0x0

    goto :goto_dcb

    :sswitch_dd8
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->startDmConfig()I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_df3
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->finishDmConfig(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_e0c
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->isRttCall(I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_e31

    const/16 v39, 0x1

    :goto_e27
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_e31
    const/16 v39, 0x0

    goto :goto_e27

    :sswitch_e34
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_e57

    const/16 v23, 0x1

    :goto_e4a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->setAutomaticMode(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_e57
    const/16 v23, 0x0

    goto :goto_e4a

    :sswitch_e5a
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->setRttMode(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_e79
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/ims/IImsService$Stub;->getRttMode(I)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_e9a
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/IImsService$Stub;->sendRttMessage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_eb3
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_ed6

    const/16 v23, 0x1

    :goto_ec9
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->sendRttSessionModifyResponse(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_ed6
    const/16 v23, 0x0

    goto :goto_ec9

    :sswitch_ed9
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_efc

    const/16 v23, 0x1

    :goto_eef
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->sendRttSessionModifyRequest(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :cond_efc
    const/16 v23, 0x0

    goto :goto_eef

    :sswitch_eff
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_f22
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v39, 0x1

    return v39

    :sswitch_f45
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v39, 0x1

    return v39

    :sswitch_f72
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToInteger(Ljava/lang/String;II)I

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :sswitch_f9f
    const-string/jumbo v39, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_fd4

    const/16 v27, 0x1

    :goto_fb9
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_fd7

    const/16 v39, 0x1

    :goto_fca
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v39, 0x1

    return v39

    :cond_fd4
    const/16 v27, 0x0

    goto :goto_fb9

    :cond_fd7
    const/16 v39, 0x0

    goto :goto_fca

    :sswitch_data_fda
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_38
        0x3 -> :sswitch_55
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_9f
        0x6 -> :sswitch_c7
        0x7 -> :sswitch_e6
        0x8 -> :sswitch_10b
        0x9 -> :sswitch_14b
        0xa -> :sswitch_16a
        0xb -> :sswitch_18f
        0xc -> :sswitch_1b0
        0xd -> :sswitch_1cd
        0xe -> :sswitch_1ea
        0xf -> :sswitch_20d
        0x10 -> :sswitch_230
        0x11 -> :sswitch_255
        0x12 -> :sswitch_280
        0x13 -> :sswitch_2b2
        0x14 -> :sswitch_2ea
        0x15 -> :sswitch_2fd
        0x16 -> :sswitch_310
        0x17 -> :sswitch_332
        0x18 -> :sswitch_35d
        0x19 -> :sswitch_38e
        0x1a -> :sswitch_3c5
        0x1b -> :sswitch_3de
        0x1c -> :sswitch_3fd
        0x1d -> :sswitch_410
        0x1e -> :sswitch_429
        0x1f -> :sswitch_452
        0x20 -> :sswitch_481
        0x21 -> :sswitch_4a0
        0x22 -> :sswitch_4c4
        0x23 -> :sswitch_4f1
        0x24 -> :sswitch_51e
        0x25 -> :sswitch_54f
        0x26 -> :sswitch_570
        0x27 -> :sswitch_58d
        0x28 -> :sswitch_5b0
        0x29 -> :sswitch_5cd
        0x2a -> :sswitch_5f0
        0x2b -> :sswitch_60d
        0x2c -> :sswitch_630
        0x2d -> :sswitch_64d
        0x2e -> :sswitch_670
        0x2f -> :sswitch_693
        0x30 -> :sswitch_6b6
        0x31 -> :sswitch_6d5
        0x32 -> :sswitch_6f8
        0x33 -> :sswitch_71b
        0x34 -> :sswitch_73e
        0x35 -> :sswitch_761
        0x36 -> :sswitch_79b
        0x37 -> :sswitch_7ba
        0x38 -> :sswitch_7db
        0x39 -> :sswitch_7fc
        0x3a -> :sswitch_81b
        0x3b -> :sswitch_83a
        0x3c -> :sswitch_85c
        0x3d -> :sswitch_87e
        0x3e -> :sswitch_8a0
        0x3f -> :sswitch_8c8
        0x40 -> :sswitch_8fc
        0x41 -> :sswitch_924
        0x42 -> :sswitch_94c
        0x43 -> :sswitch_97a
        0x44 -> :sswitch_998
        0x45 -> :sswitch_9b6
        0x46 -> :sswitch_9dc
        0x47 -> :sswitch_9fa
        0x48 -> :sswitch_a1e
        0x49 -> :sswitch_a42
        0x4a -> :sswitch_a66
        0x4b -> :sswitch_a92
        0x4c -> :sswitch_ab4
        0x4d -> :sswitch_adc
        0x4e -> :sswitch_af9
        0x4f -> :sswitch_b16
        0x50 -> :sswitch_b39
        0x51 -> :sswitch_b5c
        0x52 -> :sswitch_b7d
        0x53 -> :sswitch_b96
        0x54 -> :sswitch_bb5
        0x55 -> :sswitch_be2
        0x56 -> :sswitch_bfd
        0x57 -> :sswitch_c1e
        0x58 -> :sswitch_c31
        0x59 -> :sswitch_c59
        0x5a -> :sswitch_c74
        0x5b -> :sswitch_cb6
        0x5c -> :sswitch_cfa
        0x5d -> :sswitch_d1c
        0x5e -> :sswitch_d44
        0x5f -> :sswitch_d66
        0x60 -> :sswitch_d8e
        0x61 -> :sswitch_db0
        0x62 -> :sswitch_dd8
        0x63 -> :sswitch_df3
        0x64 -> :sswitch_e0c
        0x65 -> :sswitch_e34
        0x66 -> :sswitch_e5a
        0x67 -> :sswitch_e79
        0x68 -> :sswitch_e9a
        0x69 -> :sswitch_eb3
        0x6a -> :sswitch_ed9
        0x6b -> :sswitch_eff
        0x6c -> :sswitch_f22
        0x6d -> :sswitch_f45
        0x6e -> :sswitch_f72
        0x6f -> :sswitch_f9f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
