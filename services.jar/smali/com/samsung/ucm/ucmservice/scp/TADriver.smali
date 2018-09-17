.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"

.field private static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field private static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field private static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field private static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field private static final TIMA_VALIDATION_SUCCESS:I


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    const-string/jumbo v0, "N/A"

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    return-void
.end method

.method private checkTimaError(I)Z
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1000c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .registers 4

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 7

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method private getSDKErrorCode(I)I
    .registers 9

    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDKErrorCode internalCode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_b6

    :cond_1e
    :goto_1e
    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDKErrorCode errorCode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :sswitch_39
    const/16 v1, 0x32

    goto :goto_1e

    :sswitch_3c
    const/16 v1, 0x33

    goto :goto_1e

    :sswitch_3f
    const/16 v1, 0x34

    goto :goto_1e

    :sswitch_42
    const/16 v1, 0x35

    goto :goto_1e

    :sswitch_45
    const/16 v1, 0x36

    goto :goto_1e

    :sswitch_48
    const/16 v1, 0x37

    goto :goto_1e

    :sswitch_4b
    const/16 v1, 0x38

    goto :goto_1e

    :sswitch_4e
    const/16 v1, 0x39

    goto :goto_1e

    :sswitch_51
    const/16 v1, 0x3a

    goto :goto_1e

    :sswitch_54
    const/16 v1, 0x3b

    goto :goto_1e

    :sswitch_57
    const/16 v1, 0x3c

    goto :goto_1e

    :sswitch_5a
    const/16 v1, 0x3d

    goto :goto_1e

    :sswitch_5d
    const/16 v1, 0x42

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaStatus()I

    move-result v3

    if-nez v3, :cond_b4

    const/4 v2, 0x1

    :goto_69
    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDKErrorCode check if device compromised timaStatus-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and result-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1e

    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->checkTimaError(I)Z

    move-result v0

    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDKErrorCode deviceCompromised -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1e

    const/16 v1, 0x3e

    goto/16 :goto_1e

    :cond_b4
    const/4 v2, 0x0

    goto :goto_69

    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_39
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_3f
        0x7 -> :sswitch_42
        0x8 -> :sswitch_39
        0x9 -> :sswitch_45
        0xa -> :sswitch_42
        0xb -> :sswitch_39
        0xf -> :sswitch_39
        0x11 -> :sswitch_48
        0x12 -> :sswitch_4b
        0x13 -> :sswitch_4e
        0x14 -> :sswitch_51
        0x15 -> :sswitch_4e
        0x16 -> :sswitch_4e
        0x17 -> :sswitch_4e
        0x21 -> :sswitch_54
        0x22 -> :sswitch_57
        0x23 -> :sswitch_4e
        0x24 -> :sswitch_4e
        0x25 -> :sswitch_4e
        0x26 -> :sswitch_5a
        0x27 -> :sswitch_3f
        0x28 -> :sswitch_4e
        0xf0 -> :sswitch_5d
    .end sparse-switch
.end method

.method private getSW([B)S
    .registers 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/16 v1, 0x6700

    return v1

    :cond_7
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 8

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-nez v2, :cond_1f

    const-string/jumbo v4, "UCM.SCP.TADriver"

    const-string/jumbo v5, "getTimaStatus() - Tima Service is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1f
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v3

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_99

    :cond_31
    :goto_31
    sget-boolean v4, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v4, :cond_4f

    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimaStatus() - Tima Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return v3

    :cond_50
    :try_start_50
    const-string/jumbo v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v3

    goto :goto_31

    :cond_5e
    const-string/jumbo v5, "FIPS3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v3

    goto :goto_31

    :cond_6d
    sget-boolean v4, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v4, :cond_31

    const-string/jumbo v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_8d} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8d} :catch_99

    goto :goto_31

    :catch_8e
    move-exception v0

    const-string/jumbo v4, "UCM.SCP.TADriver"

    const-string/jumbo v5, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_99
    move-exception v1

    const-string/jumbo v4, "UCM.SCP.TADriver"

    const-string/jumbo v5, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private isEncryptableResp(S)Z
    .registers 5

    const/4 v1, 0x0

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v0, v2

    const/16 v2, -0x7000

    if-eq p1, v2, :cond_10

    const/16 v2, 0x62

    if-ne v0, v2, :cond_12

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :cond_11
    return v1

    :cond_12
    const/16 v2, 0x63

    if-ne v0, v2, :cond_11

    goto :goto_10
.end method

.method private updateTimaVersion()V
    .registers 7

    const-string/jumbo v3, "N/A"

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    :try_start_5
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "updateTimaVersion() - Tima Service is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v3, "2.0"

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v3, "2.0"

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_27} :catch_54

    :goto_27
    sget-boolean v3, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v3, :cond_47

    const-string/jumbo v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void

    :cond_48
    :try_start_48
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string/jumbo v3, "FIPS3.0"

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_27

    :catch_54
    move-exception v0

    const-string/jumbo v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_5f
    :try_start_5f
    const-string/jumbo v3, "3.0"

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_54

    goto :goto_27
.end method


# virtual methods
.method public createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "Not supported protocol"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    invoke-direct {p0, v6, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v3

    return-object v3

    :cond_1c
    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object v1

    if-eqz v1, :cond_2a

    array-length v3, v1

    if-gtz v3, :cond_45

    :cond_2a
    const-string/jumbo v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-direct {p0, v3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_39} :catch_3b

    move-result-object v3

    return-object v3

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x2

    invoke-direct {p0, v6, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v3

    return-object v3

    :cond_45
    aget-byte v2, v1, v7

    packed-switch v2, :pswitch_data_7a

    const-string/jumbo v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v3

    return-object v3

    :pswitch_69
    new-instance v3, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v4

    array-length v5, v1

    invoke-static {v1, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v6, 0x190

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v3

    :pswitch_data_7a
    .packed-switch 0x5
        :pswitch_69
    .end packed-switch
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACert(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x1

    return v1

    :cond_9
    return v1
.end method

.method public destroySecureChannel(I)I
    .registers 3

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destorySecureChannel(I)I

    move-result v0

    return v0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_10

    move-result-object v1

    invoke-static {p3, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v3, 0x1

    return v3

    :catch_10
    move-exception v0

    return v4

    :cond_12
    return v4
.end method

.method public processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 14

    packed-switch p2, :pswitch_data_16a

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :pswitch_a
    const/4 v5, 0x1

    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v0

    if-nez v0, :cond_23

    const-string/jumbo v5, "UCM.SCP.TADriver"

    const-string/jumbo v6, "Failed to encode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_23
    const/4 v5, 0x0

    aget-byte v4, v0, v5

    if-eqz v4, :cond_4d

    const-string/jumbo v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to encode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_4d
    new-instance v5, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v6

    array-length v7, v0

    const/4 v8, 0x1

    invoke-static {v0, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x191

    invoke-direct {v5, v8, v6, v9, v7}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v5

    :pswitch_61
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result v3

    const-string/jumbo v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SW of response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->isEncryptableResp(S)Z

    move-result v5

    if-nez v5, :cond_ae

    const-string/jumbo v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_ae
    const/4 v5, 0x0

    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v1

    if-nez v1, :cond_c7

    const-string/jumbo v5, "UCM.SCP.TADriver"

    const-string/jumbo v6, "Failed to decode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_c7
    const/4 v5, 0x0

    aget-byte v4, v1, v5

    if-eqz v4, :cond_f1

    const-string/jumbo v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to decode APDU 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_f1
    new-instance v5, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v6

    array-length v7, v1

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x191

    invoke-direct {v5, v8, v6, v9, v7}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v5

    :pswitch_105
    invoke-direct {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object v2

    if-eqz v2, :cond_10e

    array-length v5, v2

    if-gtz v5, :cond_11f

    :cond_10e
    const-string/jumbo v5, "UCM.SCP.TADriver"

    const-string/jumbo v6, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :cond_11f
    const/4 v5, 0x0

    aget-byte v4, v2, v5

    packed-switch v4, :pswitch_data_174

    const-string/jumbo v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown TZ response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5

    return-object v5

    :pswitch_145
    new-instance v5, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v6

    const/16 v7, 0x12c

    const/16 v8, 0x191

    const/4 v9, 0x0

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v5

    :pswitch_155
    new-instance v5, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v6

    array-length v7, v2

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x190

    invoke-direct {v5, v8, v6, v9, v7}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v5

    nop

    :pswitch_data_16a
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_61
        :pswitch_105
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x5
        :pswitch_155
        :pswitch_145
    .end packed-switch
.end method
