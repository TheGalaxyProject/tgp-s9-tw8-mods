.class public final Lcom/android/server/DeviceRootKeyService;
.super Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$AllowList;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
    }
.end annotation


# static fields
.field private static final ERR_INVALID_ARUGEMENTS:I = -0x2

.field private static final ERR_PERMISSION_DENIED:I = -0x5

.field private static final ERR_WRITE_KEY_ERROR:I = -0xa

.field private static final KEY_TYPE_EC:I = 0x4

.field private static final KEY_TYPE_RSA:I = 0x1

.field private static final NO_ERROR:I = 0x0

.field private static final PERM_ALL:I = 0x3f

.field private static final PERM_CREATE_SERVICE_KEY:I = 0x4

.field private static final PERM_DEFAULT:I = 0x17

.field private static final PERM_EXIST_DRK:I = 0x1

.field private static final PERM_GET_DRK_CERT:I = 0x10

.field private static final PERM_GET_UID:I = 0x2

.field private static final PERM_LIMIT:I = 0x3

.field private static final PERM_PSEUDO_AT_CMD:I = 0x8

.field private static final PERM_SELF_TEST_SERV_BLOB:I = 0x20

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyService(1.1.3)"

.field private static final THREAD_TAG:Ljava/lang/String; = "DeviceRootKeyServiceSocket(1.1.3)"

.field private static final USER_UID:I = -0x270f

.field private static final VERSION:Ljava/lang/String; = "1.1.3"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

.field private static final mLock:Ljava/lang/Object;

.field private static mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;


# instance fields
.field private isSocketThreadRequest:Z

.field private mIsActivityManagerReady:Z

.field private mNativeRequestedProcess:Ljava/lang/String;

.field private mRequestedProcess:Ljava/lang/String;

.field private mSatsService:Lcom/samsung/android/service/sats/ISatsService;

.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method static synthetic -set0(Lcom/android/server/DeviceRootKeyService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DeviceRootKeyService;IIZI)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->verifyTestDrkCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "dk_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/16 v7, 0x3f

    const/16 v6, 0x37

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;-><init>()V

    iput-boolean v5, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    iput-boolean v5, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    sput-object p1, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    const-string/jumbo v2, "DeviceRootKeyServiceSocket(1.1.3)"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->init()V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.sec.keyverifier"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.spayfw"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.spayfw"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.softsim"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.attestationproxy"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.android.server.IcccManagerService"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.samsungpay.gear"

    const/16 v2, -0x270f

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.app.devicerootkeyserviceclient"

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    :cond_90
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "/system/bin/sem_daemon"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "TmsService.Process"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.sec.downloadablekeystore"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "/system/bin/otp_server"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "com.samsung.android.activation"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "dk_native_client_test"

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "pseudoAtCmd"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;II)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "/data/sem"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "testMLDAP"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "/data/skpm"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "qsee-lib-test"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    :cond_105
    return-void
.end method

.method private executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v3, "It is only supported on eng binary."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v2

    if-nez v2, :cond_28

    return-object v6

    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    if-nez v2, :cond_39

    const-string/jumbo v2, "SatsService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/sats/ISatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/sats/ISatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    :cond_39
    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService;->mSatsService:Lcom/samsung/android/service/sats/ISatsService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/sats/ISatsService;->executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_3e} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3e} :catch_40

    move-result-object v2

    return-object v2

    :catch_40
    move-exception v0

    const-string/jumbo v2, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v3, "Failed to execute PsudoDrkAtCommand."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6

    :catch_4e
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v3, "Failed to connect SatsService."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v6
.end method

.method private native generateServiceKey(Ljava/lang/String;IZ)[B
.end method

.method private native getDrkCertificate(I)[B
.end method

.method private native getProcessName(I)Ljava/lang/String;
.end method

.method private hasAccessPermission(IIZI)Z
    .registers 14

    const-string/jumbo v1, ""

    if-eqz p3, :cond_37

    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v6, v1, p2, p4}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;II)Z

    move-result v5

    :goto_f
    if-eqz v5, :cond_7d

    const-string/jumbo v6, "DeviceRootKeyService(1.1.3)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_7a

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    :goto_36
    return v5

    :cond_37
    :try_start_37
    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_62

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_50

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_62} :catch_69

    :cond_62
    :goto_62
    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v6, v1, p2, p4}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;II)Z

    move-result v5

    goto :goto_f

    :catch_69
    move-exception v2

    const-string/jumbo v6, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v7, "Error occurs on checking package name."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, ""

    goto :goto_62

    :cond_7a
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_36

    :cond_7d
    const-string/jumbo v6, "DeviceRootKeyService(1.1.3)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied. Package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], UID = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], Permission = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_bd

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    goto/16 :goto_36

    :cond_bd
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto/16 :goto_36
.end method

.method private native init()V
.end method

.method private native isExistDRK(I)I
.end method

.method private native isTzDaemonReady()Z
.end method

.method private native prepareProv()Z
.end method

.method private native readDrkUID(I)Ljava/lang/String;
.end method

.method private native releaseSession()V
.end method

.method private native tlvAdd(I[B)I
.end method

.method private native tlvInit()I
.end method

.method private native updateCertificateIssuedList(Ljava/lang/String;)Z
.end method

.method private native verifyProvBlob([B)[B
.end method

.method private native verifyTestDrkCommand(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .registers 16

    if-nez p3, :cond_15

    const/4 v1, 0x0

    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v7

    if-nez v7, :cond_17

    const/4 v7, 0x0

    return-object v7

    :cond_15
    const/4 v1, 0x1

    goto :goto_3

    :cond_17
    packed-switch p2, :pswitch_data_15a

    :pswitch_1a
    const-string/jumbo v7, "DeviceRootKeyService(1.1.3)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is invalid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return-object v7

    :pswitch_3d
    if-eqz v1, :cond_9f

    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->tlvInit()I

    move-result v4

    if-eqz v4, :cond_61

    const-string/jumbo v7, "DeviceRootKeyService(1.1.3)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to init Tlv. Ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return-object v7

    :cond_61
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getValidKeyList()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p3, v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getTlvValue(I)[B

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/DeviceRootKeyService;->tlvAdd(I[B)I

    move-result v4

    if-eqz v4, :cond_69

    const-string/jumbo v7, "DeviceRootKeyService(1.1.3)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to add Tlv. Ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return-object v7

    :cond_9f
    :try_start_9f
    sget-object v7, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_11a

    :try_start_a2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/DeviceRootKeyService;->generateServiceKey(Ljava/lang/String;IZ)[B
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_117

    move-result-object v3

    :try_start_a6
    monitor-exit v7
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a7} :catch_11a

    :goto_a7
    new-instance v2, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Process : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    if-eqz v7, :cond_152

    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    :goto_d4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , ServiceName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , Result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_155

    const-string/jumbo v7, "Success."

    :goto_ef
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/DeviceRootKeyService;->updateCertificateIssuedList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_110

    const-string/jumbo v7, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v8, "Failed to update list."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    return-object v3

    :catchall_117
    move-exception v8

    :try_start_118
    monitor-exit v7

    throw v8
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11a} :catch_11a

    :catch_11a
    move-exception v0

    const-string/jumbo v7, "DeviceRootKeyService(1.1.3)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to generate. Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", keyType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_a7

    :cond_152
    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_d4

    :cond_155
    const-string/jumbo v7, "Failure."

    goto :goto_ef

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_1a
        :pswitch_1a
        :pswitch_3d
    .end packed-switch
.end method

.method public doSelfTestProvServiceBlob(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .registers 12

    const/4 v7, 0x0

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v4, "It is only supported on eng binary."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v3

    if-nez v3, :cond_28

    return-object v7

    :cond_28
    sget-object v4, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->prepareProv()Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v5, "Failed to prepare prov."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_50

    monitor-exit v4

    return-object v7

    :cond_3c
    monitor-exit v4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v2

    if-nez v2, :cond_53

    const-string/jumbo v3, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v4, "Failed to createServiceKeySession."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    return-object v7

    :catchall_50
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_53
    const/4 v0, 0x0

    :try_start_54
    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_63
    .catchall {:try_start_54 .. :try_end_57} :catchall_86

    :try_start_57
    invoke-direct {p0, v2}, Lcom/android/server/DeviceRootKeyService;->verifyProvBlob([B)[B
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_60

    move-result-object v0

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_63
    .catchall {:try_start_5b .. :try_end_5c} :catchall_86

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    :goto_5f
    return-object v0

    :catchall_60
    move-exception v4

    :try_start_61
    monitor-exit v3

    throw v4
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_63} :catch_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_86

    :catch_63
    move-exception v1

    :try_start_64
    const-string/jumbo v3, "DeviceRootKeyService(1.1.3)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to verify certificate. Ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_86

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    goto :goto_5f

    :catchall_86
    move-exception v3

    invoke-virtual {p0}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    throw v3
.end method

.method public getDeviceRootKeyCertificate(I)[B
    .registers 9

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v2

    if-nez v2, :cond_13

    return-object v6

    :cond_13
    packed-switch p1, :pswitch_data_66

    :pswitch_16
    const-string/jumbo v2, "DeviceRootKeyService(1.1.3)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :pswitch_38
    :try_start_38
    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_44

    :try_start_3b
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getDrkCertificate(I)[B
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_41

    move-result-object v1

    :try_start_3f
    monitor-exit v2

    :goto_40
    return-object v1

    :catchall_41
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_44

    :catch_44
    move-exception v0

    const-string/jumbo v2, "DeviceRootKeyService(1.1.3)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get certificate. Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_40

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_38
        :pswitch_16
        :pswitch_16
        :pswitch_38
    .end packed-switch
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v5

    :cond_12
    packed-switch p1, :pswitch_data_6e

    :pswitch_15
    const-string/jumbo v1, "DeviceRootKeyService(1.1.3)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_37
    :try_start_37
    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_43

    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->readDrkUID(I)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_40

    move-result-object v2

    :try_start_3e
    monitor-exit v1

    return-object v2

    :catchall_40
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    const-string/jumbo v1, "DeviceRootKeyService(1.1.3)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to read. Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], Err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_15
        :pswitch_15
        :pswitch_37
    .end packed-switch
.end method

.method public isExistDeviceRootKey(I)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v1

    if-nez v1, :cond_12

    return v4

    :cond_12
    packed-switch p1, :pswitch_data_72

    :pswitch_15
    const-string/jumbo v1, "DeviceRootKeyService(1.1.3)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_37
    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->isExistDRK(I)I
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_42

    move-result v0

    monitor-exit v1

    if-nez v0, :cond_45

    return v3

    :catchall_42
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_45
    const-string/jumbo v1, "DeviceRootKeyService(1.1.3)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] , Ret = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_37
        :pswitch_15
        :pswitch_15
        :pswitch_37
    .end packed-switch
.end method

.method public isServiceReady()Z
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    if-nez v1, :cond_15

    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    :cond_15
    :goto_15
    iget-boolean v1, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->isTzDaemonReady()Z

    move-result v1

    return v1

    :cond_1e
    iput-boolean v3, p0, Lcom/android/server/DeviceRootKeyService;->mIsActivityManagerReady:Z

    goto :goto_15

    :cond_21
    const-string/jumbo v1, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v2, "Service is waiting to load other necessary services."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public releaseServiceKeySession()I
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZI)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, -0x5

    return v0

    :cond_12
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->releaseSession()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return v3

    :catchall_1a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDeviceRootKey([B)I
    .registers 4

    const-string/jumbo v0, "DeviceRootKeyService(1.1.3)"

    const-string/jumbo v1, "This function is deprecated."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
