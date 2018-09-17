.class public final Lcom/android/server/EngineeringModeService;
.super Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EngineeringModeService$1;,
        Lcom/android/server/EngineeringModeService$EMApplication;,
        Lcom/android/server/EngineeringModeService$EMClient;,
        Lcom/android/server/EngineeringModeService$EMClientList;,
        Lcom/android/server/EngineeringModeService$EMSConnectionTask;,
        Lcom/android/server/EngineeringModeService$EMSystemServer;,
        Lcom/android/server/EngineeringModeService$GeneralApplication;,
        Lcom/android/server/EngineeringModeService$PlatformApplication;,
        Lcom/android/server/EngineeringModeService$SystemApplication;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final EM_STATE_PROP:Ljava/lang/String; = "security.em.tstate"

.field private static final EM_SYNC_SERVER_DATE_ACTION:Ljava/lang/String; = "com.android.server.em.EM_SYNC_SERVER_DATE"

.field private static final EM_VERSION10:I = 0xa

.field private static final EM_VERSION11:I = 0xb

.field private static final EM_VERSION20:I = 0x14

.field private static final EM_VERSION_PROP:Ljava/lang/String; = "ro.em.version"

.field private static final MODE_CUST_KERNEL:I = 0x3

.field private static final MODE_DEBUG_LOG:I = 0x2

.field private static final MODE_ENABLE_BIXBY_LOG:I = 0xf

.field private static final MODE_ENG_KERNEL:I = 0x0

.field private static final MODE_FAC_MAIN:I = 0x8

.field private static final MODE_KEEP_USB_DEBUG_UNDER_KNOX:I = 0xe

.field private static final MODE_KEY_STRING:I = 0x6

.field private static final MODE_KNOX_TEST:I = 0x4

.field private static final MODE_KS_DISABLE:I = 0x7

.field private static final MODE_RUN_KEY_STRING_APP:I = 0x9

.field private static final MODE_SKIP_MTP_POPUP:I = 0xd

.field private static final MODE_SKIP_SUW:I = 0xc

.field private static final MODE_TEST_ENV:I = 0x1

.field private static final MODE_USB_DEBUG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

.field private mEmServerDate:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mModel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVersion:I

.field private tokenState:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/EngineeringModeService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/EngineeringModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20Init()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "engmode2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/16 v3, 0x14

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/EngineeringModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/EngineeringModeService$1;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-direct {v1, p0}, Lcom/android/server/EngineeringModeService$EMClientList;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    const-string/jumbo v1, "ro.em.version"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    iput v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    :goto_39
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerClients()V

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerForBroadcasts()V

    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v3, :cond_69

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_46
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SetTstate()I
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_99

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->updateTokenState()V

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EM Service is started, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EM Service is started as version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_86
    const-string/jumbo v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_39

    :cond_94
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_39

    :catchall_99
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_24

    aget-byte v0, p1, v2

    const-string/jumbo v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkTokenExist()Z
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e

    :cond_d
    return v2

    :cond_e
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    const-string/jumbo v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    const-string/jumbo v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    return v2

    :cond_25
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TokenState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private convertErrorCode(I)I
    .registers 4

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    return p1

    :cond_7
    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    return p1

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private getImei()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v2, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_18

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v3, "Failed to get TelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_18
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result-object v2

    return-object v2

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method private getPackageName(I)Ljava/lang/String;
    .registers 12

    iget-object v8, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    const-string/jumbo v1, "Unknown"

    const-string/jumbo v3, ""
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5b

    :try_start_9
    iget v7, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v9, 0x14

    if-ne v7, v9, :cond_21

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetProcessName(I)Ljava/lang/String;

    move-result-object v3

    :goto_13
    const-string/jumbo v7, "system_server"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const-string/jumbo v1, "system_server"
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_56
    .catchall {:try_start_9 .. :try_end_1f} :catchall_5b

    :cond_1f
    :goto_1f
    monitor-exit v8

    return-object v1

    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_26
    sget-object v7, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_56
    .catchall {:try_start_21 .. :try_end_31} :catchall_5b

    if-nez v0, :cond_35

    monitor-exit v8

    return-object v1

    :cond_35
    :try_start_35
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_56
    .catchall {:try_start_35 .. :try_end_38} :catchall_5b

    move-result-object v6

    if-nez v6, :cond_3d

    monitor-exit v8

    return-object v1

    :cond_3d
    :try_start_3d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_41

    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_41

    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_56
    .catchall {:try_start_3d .. :try_end_55} :catchall_5b

    goto :goto_1f

    :catch_56
    move-exception v2

    :try_start_57
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_1f

    :catchall_5b
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private isEmApplication(II)Z
    .registers 8

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmApplication(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "com.sec.android.app.emservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private isEmClient(III)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EMClient : ProcName = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-object v0

    :cond_35
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No Permission : ProcName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "UID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MODE = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_34
.end method

.method private isEmClient(Ljava/lang/String;III)Ljava/lang/String;
    .registers 10

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    invoke-direct {p0, p2}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    move-object v0, p1

    :cond_13
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMClient : ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-object v1

    :cond_41
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMClient : PacageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_40

    :cond_70
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], MODE = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_40
.end method

.method private isEmService(II)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.security"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v3

    :cond_13
    const-string/jumbo v2, "com.sec.android.app.emservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v3

    :cond_1d
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmService(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    :goto_2b
    return v1

    :cond_2c
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private isNetworkConnected()Z
    .registers 7

    const/4 v0, 0x0

    sget-object v4, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_26

    :cond_1e
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const-string/jumbo v4, "EngineeringModeService"

    const-string/jumbo v5, "isNetworkConnected : false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private isOkToUseDevCert(ILjava/lang/String;)Z
    .registers 4

    const v0, -0xffff68

    if-ne p1, v0, :cond_d

    const-string/jumbo v0, "com.sec.android.app.emservice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private makeTimeReq()[B
    .registers 5

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_51

    monitor-exit v1

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4b

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "makeTimeReq is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_51

    monitor-exit v1

    return-object v0

    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTimeReq()[B
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_51

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeEM20GetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeEM20GetStatus(ILjava/lang/String;Z)I
.end method

.method private native nativeEM20GetTUC(I)I
.end method

.method private native nativeEM20Init()V
.end method

.method private native nativeEM20InstallToken([B)I
.end method

.method private native nativeEM20IsTokenInstalled(Ljava/lang/String;)I
.end method

.method private native nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeTimeReq()[B
.end method

.method private native nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeTokenReqForESS(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20ReadToken()[B
.end method

.method private native nativeEM20RecoveryITL([B)I
.end method

.method private native nativeEM20RemoveToken()I
.end method

.method private native nativeEM20SendFuseCmd()I
.end method

.method private native nativeEM20SetTstate()I
.end method

.method private native nativeEM20UpdateTime([B)Ljava/lang/String;
.end method

.method private native nativeGetId()[B
.end method

.method private native nativeGetNumOfModes()I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetStatus(I)I
.end method

.method private native nativeInstallToken([B)I
.end method

.method private native nativeIsTokenInstalled()I
.end method

.method private native nativeRemoveToken()I
.end method

.method private native nativeSendFuseCmd()I
.end method

.method private registerClients()V
    .registers 22

    :try_start_0
    new-instance v9, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string/jumbo v19, "com.sec.android.app.emservice"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v10, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string/jumbo v19, "com.samsung.security"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0x9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0xd

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0xe

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v18, Lcom/android/server/EngineeringModeService$EMSystemServer;

    const-string/jumbo v19, "system_server"

    const/16 v20, 0x3e8

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$EMSystemServer;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v5, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.samsung.android.MtpApplication"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f7

    const/16 v19, 0xd

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v6, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.sec.bcservice"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v13, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v19, "com.sec.keystringscreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_309

    const/16 v19, 0x9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v12, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.samsung.toolkit.ga_settingapplication"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v12, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_316

    const/16 v19, 0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v16, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.sec.android.app.servicemodeapp"

    const/16 v20, 0x3e8

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v11, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.sdet.fotaagent"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_323

    const/16 v19, 0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_1f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.samsung.knox.kss"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_330

    const/16 v19, 0xe

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_22b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v15, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v19, "com.samsung.knox.securefolder"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33d

    const/16 v19, 0xe

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v7, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v19, "com.samsung.android.bixby.agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_34a

    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v4, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.sec.factory"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v17, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v19, "com.sec.android.sherlocksetting"

    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v19, v0

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_357

    const/16 v19, 0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_2e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    :goto_2f6
    return-void

    :cond_2f7
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_302} :catch_304

    goto/16 :goto_10d

    :catch_304
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f6

    :cond_309
    const/16 v19, 0x1

    :try_start_30b
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_163

    :cond_316
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_197

    :cond_323
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_1f7

    :cond_330
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_22b

    :cond_33d
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_25b

    :cond_34a
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto/16 :goto_28b

    :cond_357
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_364} :catch_304

    goto :goto_2e9
.end method

.method private registerForBroadcasts()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/EngineeringModeService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EngineeringModeService$2;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTime([B)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_4e

    move-result v0

    if-nez v0, :cond_37

    monitor-exit v1

    return-object v4

    :cond_37
    :try_start_37
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_48

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "updateTime is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_4e

    monitor-exit v1

    return-object v4

    :cond_48
    :try_start_48
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20UpdateTime([B)Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateTokenState()V
    .registers 4

    const-string/jumbo v1, "security.em.tstate"

    const-string/jumbo v2, "ES"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->tokenState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExpiryDate() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_33

    return-object v3

    :cond_33
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_49

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_49

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getID is only supported in EM version 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_49
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getID()[B
    .registers 5

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getID() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_57

    monitor-exit v1

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_51

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_51

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 1"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_57

    monitor-exit v1

    return-object v0

    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_57

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNumOfModes()I
    .registers 5

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNumOfModes() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_57

    move-result v0

    if-nez v0, :cond_38

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_51

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_51

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getNumOfModes is only supported in EM version 1"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_57

    const/16 v0, -0x3e8

    monitor-exit v1

    return v0

    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetNumOfModes()I
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_57

    move-result v0

    monitor-exit v1

    return v0

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .registers 13

    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRequestMsg() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_78

    monitor-exit v7

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_51

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_51

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getRequestMsg(SSBI) is only supported in EM version 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_78

    monitor-exit v7

    return-object v0

    :cond_51
    :try_start_51
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/EngineeringModeService;->nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_78

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_78
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public getServerTime()J
    .registers 21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_5
    const-string/jumbo v9, ""

    const-string/jumbo v14, "EngineeringModeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getServerTime() is called. EM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v16, 0x14

    move/from16 v0, v16

    if-eq v14, v0, :cond_4a

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "getServerTime is only supported in EM version from 2.0"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_d2

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_4a
    :try_start_4a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->isNetworkConnected()Z

    move-result v14

    if-nez v14, :cond_5f

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Network isn\'t connected, skip getting server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_d2

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_5f
    :try_start_5f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v16, 0x14

    move/from16 v0, v16

    if-ne v14, v0, :cond_80

    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_80

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "skip getting server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_d2

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    if-nez v14, :cond_f9

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTimeReq()[B

    move-result-object v6

    new-instance v4, Lcom/android/server/EngineeringModeService$EMSConnectionTask;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;-><init>(Lcom/android/server/EngineeringModeService;[B)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :cond_9c
    invoke-virtual {v4}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->getResponseBody()[B
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_d2

    move-result-object v7

    if-nez v7, :cond_c6

    const-wide/16 v16, 0x64

    :try_start_a4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_c4
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_d2

    :goto_a7
    :try_start_a7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    const-wide/16 v18, 0x7d0

    cmp-long v14, v16, v18

    if-ltz v14, :cond_9c

    :goto_b3
    if-nez v7, :cond_d5

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "No valid response from EMS server!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_d2

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :catch_c4
    move-exception v3

    goto :goto_a7

    :cond_c6
    :try_start_c6
    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "responseBody isn\'t null"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_d2

    goto :goto_b3

    :catchall_d2
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/EngineeringModeService;->nativeEM20UpdateTime([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_f5

    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Failed to verify server time"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;
    :try_end_f1
    .catchall {:try_start_d5 .. :try_end_f1} :catchall_d2

    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16

    :cond_f5
    :try_start_f5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    :cond_f9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_d2

    if-eqz v14, :cond_15f

    :try_start_ff
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyyMMdd"

    invoke-direct {v8, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string/jumbo v14, "EngineeringModeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EM Server time ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/text/ParseException; {:try_start_ff .. :try_end_149} :catch_14b
    .catchall {:try_start_ff .. :try_end_149} :catchall_d2

    monitor-exit v15

    return-wide v10

    :catch_14b
    move-exception v5

    :try_start_14c
    const-string/jumbo v14, "EngineeringModeService"

    const-string/jumbo v16, "Failed to parse server date"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_15f
    .catchall {:try_start_14c .. :try_end_15f} :catchall_d2

    :cond_15f
    const-wide/16 v16, -0x3e8

    monitor-exit v15

    return-wide v16
.end method

.method public getStatus(I)I
    .registers 10

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c0

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v3

    return v4

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(III)Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_c0

    move-result-object v0

    if-nez v0, :cond_1e

    const/16 v2, -0x514

    monitor-exit v3

    return v2

    :cond_1e
    :try_start_1e
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatus() is called. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / mode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]) EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6a

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "getStatus(i) Failed to get EM Server time. Use current value"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_76

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_7f

    :cond_76
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v1

    :goto_7a
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->updateTokenState()V
    :try_end_7d
    .catchall {:try_start_1e .. :try_end_7d} :catchall_c0

    monitor-exit v3

    return v1

    :cond_7f
    :try_start_7f
    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ne v2, v4, :cond_b4

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_9b

    const/4 v1, 0x1

    goto :goto_7a

    :cond_9b
    const/16 v2, -0x5dc

    if-ne v1, v2, :cond_a8

    const-string/jumbo v2, "Your EM token can\'t be used temporary. Please connect network and try again"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/EngineeringModeService;->showToast(Ljava/lang/String;I)V

    const/4 v1, 0x0

    goto :goto_7a

    :cond_a8
    invoke-direct {p0, v1, v0}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    const v1, -0xffff68

    goto :goto_7a

    :cond_b2
    const/4 v1, 0x0

    goto :goto_7a

    :cond_b4
    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "Invalid version"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_7f .. :try_end_bd} :catchall_c0

    const/16 v1, -0x3e8

    goto :goto_7a

    :catchall_c0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getStatus(ILjava/lang/String;)I
    .registers 11

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c0

    move-result v2

    if-nez v2, :cond_c

    monitor-exit v3

    return v4

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p2, v2, v4, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_c0

    move-result-object v0

    if-nez v0, :cond_1e

    const/16 v2, -0x514

    monitor-exit v3

    return v2

    :cond_1e
    :try_start_1e
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatus() is called.. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / mode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]) EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6a

    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_76

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_7f

    :cond_76
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v1

    :goto_7a
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->updateTokenState()V
    :try_end_7d
    .catchall {:try_start_1e .. :try_end_7d} :catchall_c0

    monitor-exit v3

    return v1

    :cond_7f
    :try_start_7f
    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ne v2, v4, :cond_b4

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_9b

    const/4 v1, 0x1

    goto :goto_7a

    :cond_9b
    const/16 v2, -0x5dc

    if-ne v1, v2, :cond_a8

    const-string/jumbo v2, "Your EM token can\'t be used temporary. Please connect network and try again"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/EngineeringModeService;->showToast(Ljava/lang/String;I)V

    const/4 v1, 0x0

    goto :goto_7a

    :cond_a8
    invoke-direct {p0, v1, v0}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    const v1, -0xffff68

    goto :goto_7a

    :cond_b2
    const/4 v1, 0x0

    goto :goto_7a

    :cond_b4
    const-string/jumbo v2, "EngineeringModeService"

    const-string/jumbo v4, "Invalid version"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_7f .. :try_end_bd} :catchall_c0

    const/16 v1, -0x3e8

    goto :goto_7a

    :catchall_c0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getTUC(I)I
    .registers 6

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTUC() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_51

    move-result v0

    if-nez v0, :cond_38

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4b

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getTUC is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_51

    const/16 v0, -0x3e8

    monitor-exit v1

    return v0

    :cond_4b
    :try_start_4b
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetTUC(I)I
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_51

    move-result v0

    monitor-exit v1

    return v0

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getToken()[B
    .registers 5

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getToken() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_51

    monitor-exit v1

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4b

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getToken is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_51

    monitor-exit v1

    return-object v0

    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20ReadToken()[B
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_51

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method public installToken([B)I
    .registers 7

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installToken() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_64

    move-result v1

    if-nez v1, :cond_38

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_38
    :try_start_38
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_44

    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4d

    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v0

    :goto_48
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->updateTokenState()V
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_64

    monitor-exit v2

    return v0

    :cond_4d
    :try_start_4d
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_58

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20InstallToken([B)I

    move-result v0

    goto :goto_48

    :cond_58
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_64

    const/16 v0, -0x3e8

    goto :goto_48

    :catchall_64
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isTokenInstalled()I
    .registers 9

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTokenInstalled() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_79

    move-result v1

    if-nez v1, :cond_38

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_4b

    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_57

    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_60

    :cond_57
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v0

    :goto_5b
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->updateTokenState()V
    :try_end_5e
    .catchall {:try_start_38 .. :try_end_5e} :catchall_79

    monitor-exit v2

    return v0

    :cond_60
    :try_start_60
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_6d

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEmServerDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM20IsTokenInstalled(Ljava/lang/String;)I

    move-result v0

    goto :goto_5b

    :cond_6d
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_60 .. :try_end_76} :catchall_79

    const/16 v0, -0x3e8

    goto :goto_5b

    :catchall_79
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeITLReq() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_50

    monitor-exit v1

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4a

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_50

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_4a
    :try_start_4a
    invoke-direct {p0, p1, p2}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_50

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 12

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeTokenReq() is called EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5a

    monitor-exit v6

    return-object v0

    :cond_38
    :try_start_38
    iget v0, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4b

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "makeTokenReq(SSBS) is only supported in EM version 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_5a

    monitor-exit v6

    return-object v0

    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5a

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_5a
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .registers 5

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeTokenReqForESS() is called EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public recoveryITL([B)I
    .registers 6

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoveryITL() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_3e

    move-result v0

    if-nez v0, :cond_38

    const/16 v0, -0x514

    monitor-exit v1

    return v0

    :cond_38
    :try_start_38
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20RecoveryITL([B)I
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeToken()I
    .registers 6

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeToken() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_61

    move-result v1

    if-nez v1, :cond_38

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_38
    :try_start_38
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_44

    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4a

    :cond_44
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_61

    move-result v0

    :goto_48
    monitor-exit v2

    return v0

    :cond_4a
    :try_start_4a
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_55

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20RemoveToken()I

    move-result v0

    goto :goto_48

    :cond_55
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_61

    const/16 v0, -0x3e8

    goto :goto_48

    :catchall_61
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendFuseCmd()I
    .registers 6

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v1, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFuseCmd() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_61

    move-result v1

    if-nez v1, :cond_38

    const/16 v1, -0x514

    monitor-exit v2

    return v1

    :cond_38
    :try_start_38
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_44

    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4a

    :cond_44
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_61

    move-result v0

    :goto_48
    monitor-exit v2

    return v0

    :cond_4a
    :try_start_4a
    iget v1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_55

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SendFuseCmd()I

    move-result v0

    goto :goto_48

    :cond_55
    const-string/jumbo v1, "EngineeringModeService"

    const-string/jumbo v3, "Invalid version"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_61

    const/16 v0, -0x3e8

    goto :goto_48

    :catchall_61
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return-void
.end method
