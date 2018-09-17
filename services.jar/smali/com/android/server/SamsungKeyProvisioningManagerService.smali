.class public final Lcom/android/server/SamsungKeyProvisioningManagerService;
.super Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;
.source "SamsungKeyProvisioningManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;
    }
.end annotation


# static fields
.field private static final ERROR_EXCEPTION:I = -0x5a

.field private static final ERROR_NO_PERMISSION:I = -0x5b

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SamsungKeyProvisioningManagerService"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mRequestedProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "sec_skpm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/16 v2, 0x3e8

    invoke-direct {p0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    invoke-direct {v0}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "com.sec.keyverifier"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const-string/jumbo v1, "security.sec.com.skpmtest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->add(Ljava/lang/String;I)V

    :cond_39
    return-void
.end method

.method private native changeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native createGetSessionKey(BLjava/lang/String;[BB)I
.end method

.method private native generateServiceKey()I
.end method

.method private hasAccessPermission(II)Z
    .registers 12

    const-string/jumbo v1, ""

    :try_start_3
    sget-object v6, Lcom/android/server/SamsungKeyProvisioningManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2e

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_1c

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_5a

    :cond_2e
    :goto_2e
    sget-object v6, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6b

    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

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

    iput-object v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    :goto_59
    return v5

    :catch_5a
    move-exception v2

    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

    const-string/jumbo v7, "Error occurs on checking package name."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, ""

    goto :goto_2e

    :cond_6b
    sget-object v6, Lcom/android/server/SamsungKeyProvisioningManagerService;->mJavaPkgAllowList:Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;

    const v7, 0x186a0

    rem-int v7, p2, v7

    invoke-virtual {v6, v1, v7}, Lcom/android/server/SamsungKeyProvisioningManagerService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9c

    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], called from secure container"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_59

    :cond_9c
    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

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

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/SamsungKeyProvisioningManagerService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_59
.end method

.method private native injectKey(BBLjava/lang/String;[BB)I
.end method

.method private native readKeyUID(BBLjava/lang/String;[B)I
.end method

.method private native releaseGetSessionKey()I
.end method

.method private native verifyKey(BBLjava/lang/String;)I
.end method


# virtual methods
.method public create_keySession(BLjava/lang/String;[BB)I
    .registers 10

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, -0x5b

    return v2

    :cond_12
    :try_start_12
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1e

    :try_start_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SamsungKeyProvisioningManagerService;->createGetSessionKey(BLjava/lang/String;[BB)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v1

    :try_start_19
    monitor-exit v2

    :goto_1a
    return v1

    :catchall_1b
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create_keySession. keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", encodingType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    goto :goto_1a
.end method

.method public generate_serviceKey()V
    .registers 7

    const-string/jumbo v2, "ro.factory.factory_binary"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "factory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_3a

    sget-object v3, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService;->generateServiceKey()I

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to generateServiceKey. ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3d

    :cond_39
    monitor-exit v3

    :cond_3a
    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_14

    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public get_keyUid(BBLjava/lang/String;[B)I
    .registers 10

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, -0x5b

    return v2

    :cond_12
    :try_start_12
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1e

    :try_start_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SamsungKeyProvisioningManagerService;->readKeyUID(BBLjava/lang/String;[B)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v1

    :try_start_19
    monitor-exit v2

    :goto_1a
    return v1

    :catchall_1b
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get_keyUid. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    goto :goto_1a
.end method

.method public release_keySession()I
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, -0x5b

    return v1

    :cond_12
    sget-object v1, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/SamsungKeyProvisioningManagerService;->releaseGetSessionKey()I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1b
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public set_otaServer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, -0x5b

    return v2

    :cond_12
    :try_start_12
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1e

    :try_start_15
    invoke-direct {p0, p1, p2}, Lcom/android/server/SamsungKeyProvisioningManagerService;->changeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v1

    :try_start_19
    monitor-exit v2

    :goto_1a
    return v1

    :catchall_1b
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set_otaServer. serverAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", serverPort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    goto :goto_1a
.end method

.method public verify_key(BBLjava/lang/String;)I
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, -0x5b

    return v2

    :cond_12
    :try_start_12
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1e

    :try_start_15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->verifyKey(BBLjava/lang/String;)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v1

    :try_start_19
    monitor-exit v2

    :goto_1a
    return v1

    :catchall_1b
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to verify_key. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    goto :goto_1a
.end method

.method public write_key(BBLjava/lang/String;[BB)I
    .registers 11

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SamsungKeyProvisioningManagerService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, -0x5b

    return v2

    :cond_12
    :try_start_12
    sget-object v2, Lcom/android/server/SamsungKeyProvisioningManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1e

    :try_start_15
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SamsungKeyProvisioningManagerService;->injectKey(BBLjava/lang/String;[BB)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    move-result v1

    :try_start_19
    monitor-exit v2

    :goto_1a
    return v1

    :catchall_1b
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "SamsungKeyProvisioningManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to write_key. injectionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keyName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", encodingType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5a

    goto :goto_1a
.end method
