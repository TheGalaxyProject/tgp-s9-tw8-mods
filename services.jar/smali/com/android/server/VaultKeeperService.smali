.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final RSA2048_SIGNATURE_LEN:I = 0x100

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mServiceSupport:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "vaultkeeperjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    sput-object p1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    return-void
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
.end method

.method private native nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
.end method

.method private native nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    if-nez p2, :cond_29

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_39
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
    .registers 11

    const/4 v3, -0x2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_33

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    return v3

    :cond_3a
    if-eqz p3, :cond_64

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_ad

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_64
    if-eqz p4, :cond_96

    if-eqz p5, :cond_96

    array-length v0, p4

    if-nez v0, :cond_75

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_75
    array-length v0, p5

    const/16 v1, 0x100

    if-eq v0, v1, :cond_ad

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize : if signature is exist, it should be 256, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_96
    if-nez p4, :cond_a1

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    if-nez p5, :cond_ac

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return v3

    :cond_ad
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b6

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "getNonce"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return-object v3

    :cond_39
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_42

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x0

    iget v7, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v7, :cond_29

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VaultKeeper not support("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_29
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "system_server"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_4b

    const-string/jumbo v1, "system_server"
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_182

    monitor-exit v8

    return-object v1

    :cond_4b
    :try_start_4b
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_63

    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "ActivityManager is null, something wrong in framework"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_182

    monitor-exit v8

    return-object v11

    :cond_63
    :try_start_63
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_74

    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_182

    monitor-exit v8

    return-object v11

    :cond_74
    :try_start_74
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    if-ne v7, v9, :cond_7c

    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Matched clientPkgName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_b1
    .catchall {:try_start_74 .. :try_end_b1} :catchall_182

    move-result-object v4

    const/16 v7, 0x40

    :try_start_b4
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v7, v9, :cond_103

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not match uid("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_101} :catch_174
    .catchall {:try_start_b4 .. :try_end_101} :catchall_182

    :goto_101
    monitor-exit v8

    return-object v11

    :cond_103
    :try_start_103
    const-string/jumbo v7, "android"

    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_12f

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isn\'t signed with platform key."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_12d} :catch_174
    .catchall {:try_start_103 .. :try_end_12d} :catchall_182

    monitor-exit v8

    return-object v11

    :cond_12f
    :try_start_12f
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_151

    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_14f} :catch_174
    .catchall {:try_start_12f .. :try_end_14f} :catchall_182

    monitor-exit v8

    return-object v1

    :cond_151
    :try_start_151
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NOT Allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is signed with platform key. but, itn\'t registered."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_172} :catch_174
    .catchall {:try_start_151 .. :try_end_172} :catchall_182

    monitor-exit v8

    return-object v11

    :catch_174
    move-exception v2

    :try_start_175
    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v9, "Fail to check permission(Exception)"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_181
    .catchall {:try_start_175 .. :try_end_181} :catchall_182

    goto :goto_101

    :catchall_182
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    .registers 16

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_34

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    return v3

    :cond_3b
    if-eqz p3, :cond_65

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_65

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_65
    if-eqz p4, :cond_77

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_77

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if initialState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_77
    if-eqz p5, :cond_86

    array-length v0, p5

    if-nez v0, :cond_86

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if initialData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_86
    if-nez p6, :cond_92

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_92
    array-length v0, p6

    if-nez v0, :cond_9f

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9f
    if-nez p7, :cond_ab

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_ab
    array-length v0, p7

    const/16 v1, 0x100

    if-eq v0, v1, :cond_cc

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize : if signature is exist, it should be 256, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_cc
    array-length v0, p7

    array-length v1, p6

    add-int/2addr v0, v1

    new-array v6, v0, [B

    array-length v0, p7

    invoke-static {p7, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, p7

    array-length v1, p6

    invoke-static {p6, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_e3
    invoke-direct/range {v0 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e9

    move-result v0

    monitor-exit v7

    return v0

    :catchall_e9
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return v3

    :cond_39
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_42

    move-result v1

    monitor-exit v0

    return v1

    :catchall_42
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "readData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return-object v3

    :cond_39
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_42

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "readState"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return-object v3

    :cond_39
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_42

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return v3

    :cond_39
    if-nez p3, :cond_45

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : cert is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_45
    array-length v0, p3

    if-nez v0, :cond_52

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : certificate length is zero"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_52
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5b

    move-result v1

    monitor-exit v0

    return v1

    :catchall_5b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    .registers 9

    const/4 v2, -0x2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_33

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    return v2

    :cond_3a
    if-nez p4, :cond_48

    if-nez p5, :cond_48

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : There is nothing to do."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_48
    if-nez p3, :cond_54

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_54
    array-length v0, p3

    if-nez v0, :cond_61

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_61
    if-eqz p4, :cond_73

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_73

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if newState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_73
    if-eqz p5, :cond_82

    array-length v0, p5

    if-nez v0, :cond_82

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if newData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_82
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_85
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VaultKeeperService;->nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8b

    move-result v1

    monitor-exit v0

    return v1

    :catchall_8b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_32

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    return-object v3

    :cond_39
    if-nez p3, :cond_45

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_45
    array-length v0, p3

    if-nez v0, :cond_52

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_52
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5b

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_5b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    .registers 11

    const/16 v2, 0x20

    const/4 v3, -0x2

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_35

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v3

    :cond_3c
    if-eqz p3, :cond_4e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4e

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if state is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4e
    if-eqz p4, :cond_5d

    array-length v0, p4

    if-nez v0, :cond_5d

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if data is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5d
    if-eqz p5, :cond_85

    array-length v0, p5

    if-eq v0, v2, :cond_85

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write : if passcode is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_85
    if-eqz p6, :cond_ad

    array-length v0, p6

    if-eq v0, v2, :cond_ad

    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_ad
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b6

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b6
    move-exception v1

    monitor-exit v0

    throw v1
.end method
