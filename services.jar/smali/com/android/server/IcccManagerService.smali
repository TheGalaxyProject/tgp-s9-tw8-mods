.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IcccManagerService$1;
    }
.end annotation


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field private static final CURR_BIN_STATUS:I = -0xffff6

.field private static final ICCC_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_iccc/"

.field private static final ICCC_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field private static final ICCC_DRK_SERVICE_NAME:Ljava/lang/String; = "ICCC"

.field private static final NOK:I = 0x2

.field private static final NONCE_SIZE:I = 0x20

.field private static final NOT_SCANNED:I = -0x1

.field private static final OK:I = 0x1

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field private static final SYSSCOPE_FLAG:I = -0xe00000

.field static TAG:Ljava/lang/String; = null

.field private static final URANDOM_DRIVER_PATH:Ljava/lang/String; = "/dev/urandom"

.field private static final WARRANTY_BIT:I = -0xffff4

.field private static mContext:Landroid/content/Context;

.field private static mSysScopeResult:I


# instance fields
.field icccBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return v0
.end method

.method static synthetic -set0(I)I
    .registers 1

    sput p0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/IcccManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/IcccManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->createNonce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/IcccManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->setSysScopeField()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "ICCC"

    sput-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    new-instance v1, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Start IcccManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_22

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v1, "IcccManagerService"

    sget-object v2, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_66

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IcccManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_66
    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "IcccManagerService() - Valid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private createNonce()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x0

    const/16 v8, 0x20

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/dev/urandom"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v5, v8, [B

    const/4 v3, 0x0

    :try_start_e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_25
    .catchall {:try_start_e .. :try_end_13} :catchall_35

    :try_start_13
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_3d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_40
    .catchall {:try_start_13 .. :try_end_16} :catchall_3a

    move-result v6

    if-eq v6, v8, :cond_1d

    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v9

    :cond_1d
    :try_start_1d
    invoke-static {v5}, Lcom/android/server/IcccManagerService;->bytesToHex([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_40
    .catchall {:try_start_1d .. :try_end_20} :catchall_3a

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v7

    :catch_25
    move-exception v1

    :goto_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_35

    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2c
    return-object v9

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2c

    :catchall_35
    move-exception v7

    :goto_36
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    :catchall_3a
    move-exception v7

    move-object v3, v4

    goto :goto_36

    :catch_3d
    move-exception v0

    move-object v3, v4

    goto :goto_2e

    :catch_40
    move-exception v1

    move-object v3, v4

    goto :goto_26
.end method

.method private deleteIcccKey()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/tz_iccc/"

    const-string/jumbo v2, "key.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private enforcePermission()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private generateIcccKey()[B
    .registers 15

    const/4 v13, 0x0

    const/4 v5, 0x0

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v10, "/data/misc/tz_iccc/"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_13
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v10, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string/jumbo v10, "ICCC"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_40

    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "key.dat"

    invoke-direct {v4, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_39} :catch_4c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_39} :catch_44
    .catchall {:try_start_2 .. :try_end_39} :catchall_54

    :try_start_39
    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_5c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_5f
    .catchall {:try_start_39 .. :try_end_3c} :catchall_59

    invoke-virtual {p0, v6}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v7

    :cond_40
    invoke-virtual {p0, v5}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    :goto_43
    return-object v13

    :catch_44
    move-exception v3

    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_54

    invoke-virtual {p0, v5}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_43

    :catch_4c
    move-exception v2

    :goto_4d
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_54

    invoke-virtual {p0, v5}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_43

    :catchall_54
    move-exception v10

    :goto_55
    invoke-virtual {p0, v5}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v10

    :catchall_59
    move-exception v10

    move-object v5, v6

    goto :goto_55

    :catch_5c
    move-exception v2

    move-object v5, v6

    goto :goto_4d

    :catch_5f
    move-exception v3

    move-object v5, v6

    goto :goto_45
.end method

.method static native get_Trusted_Boot_Data()I
.end method

.method private declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    const v1, -0xffff4

    :try_start_5
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0xffff6

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, -0xe00000

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_65

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_65
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static native iccc_device_status(I[B[BZ)[B
.end method

.method static native iccc_load()I
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method static native iccc_unload()I
.end method

.method private readIcccKey()[B
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/data/misc/tz_iccc/"

    const-string/jumbo v8, "key.dat"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_24

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_29
    .catchall {:try_start_1 .. :try_end_17} :catchall_39

    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v6, v5, [B

    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_20} :catch_41
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_44
    .catchall {:try_start_17 .. :try_end_20} :catchall_3e

    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v6

    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    :goto_27
    const/4 v7, 0x0

    return-object v7

    :catch_29
    move-exception v1

    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_39

    invoke-virtual {p0, v2}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_27

    :catch_31
    move-exception v0

    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    invoke-virtual {p0, v2}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_39
    move-exception v7

    :goto_3a
    invoke-virtual {p0, v2}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    :catchall_3e
    move-exception v7

    move-object v2, v3

    goto :goto_3a

    :catch_41
    move-exception v0

    move-object v2, v3

    goto :goto_32

    :catch_44
    move-exception v1

    move-object v2, v3

    goto :goto_2a
.end method

.method private releaseDrk()Z
    .registers 9

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v3, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failure releasing drk service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private declared-synchronized setSysScopeField()V
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    const-wide/16 v0, 0x1

    :cond_14
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v6, :cond_28

    const-wide/16 v2, 0x78

    cmp-long v2, v0, v2

    if-lez v2, :cond_28

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "There is some problem in SysScope. Keep it uninitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_3b

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_3e

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    goto :goto_26

    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3e
    :try_start_3e
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v8, :cond_51

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : NOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_26

    :cond_51
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v6, :cond_26

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : NOT_SCANNED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_3b

    goto :goto_26
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized getDeviceStatus(I[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v6, "getDeviceStatus"

    invoke-static {v6}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    move-result v6

    if-eqz v6, :cond_18

    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "iccc_load failure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_8a

    monitor-exit p0

    return-object v8

    :cond_18
    :try_start_18
    new-instance v0, Ljava/io/File;

    const-string/jumbo v6, "/data/misc/tz_iccc/"

    const-string/jumbo v7, "key.dat"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_48

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->generateIcccKey()[B

    move-result-object v3

    const/4 v1, 0x0

    :goto_2e
    if-nez v3, :cond_4e

    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "wrappedKey is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "iccc_unload failure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_8a

    :cond_46
    monitor-exit p0

    return-object v8

    :cond_48
    :try_start_48
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->readIcccKey()[B

    move-result-object v3

    const/4 v1, 0x1

    goto :goto_2e

    :cond_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {p1, p2, v3, v1}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B[BZ)[B

    move-result-object v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "iccc_unload failure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    if-nez v1, :cond_88

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->releaseDrk()Z

    if-eqz v2, :cond_72

    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_88

    :cond_72
    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "response is not as expected, delete ICCC key for a new try"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v6

    if-nez v6, :cond_88

    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "deleteIcccKey failure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_48 .. :try_end_88} :catchall_8a

    :cond_88
    monitor-exit p0

    return-object v2

    :catchall_8a
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getSecureData(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTrustedBootData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSecureData(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    move-result v0

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_18

    const/4 v0, -0x1

    goto :goto_c

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method
