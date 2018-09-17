.class public Lcom/android/server/SdpServiceKeeper;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    }
.end annotation


# static fields
.field private static final SDP_LICENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field private static final SDP_LICENSE_PERMISSION_OLD:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_SDP"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "SdpServiceKeeper"

.field private static _instance:Lcom/android/server/SdpServiceKeeper;

.field private static mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/pm/PackageManagerService;

.field private mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

.field private final mSdpPolicyDbLock:Ljava/lang/Object;

.field private mSdpPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sdp/engine/SdpPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdpPolicyMapLock:Ljava/lang/Object;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;)V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mPM:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/SdpServiceKeeper;->initWhitelist()V

    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .registers 3

    if-eqz p1, :cond_15

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpServiceKeeper;->enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "com.sec.enterprise.permission.KNOX_SDP"

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpServiceKeeper;->enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private enforceCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 v1, 0x1

    return v1

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v1, "system_server"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v2

    :goto_10
    return-object v2

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method private getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 3

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdp/engine/SdpPolicy;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private initWhitelist()V
    .registers 3

    sget-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.spay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .registers 10

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mPM:Lcom/android/server/pm/PackageManagerService;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mPM:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mPM:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v2, :cond_2f

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_30

    move-result v3

    :cond_2f
    return v3

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    return v3
.end method

.method private isSystemServer(Landroid/content/Context;II)Z
    .registers 9

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpServiceKeeper;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_f

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    const-string/jumbo v4, "system"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    return v3
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_1c

    sget-object v2, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    return v2

    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method private policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static safe(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    return-object p0
.end method

.method private updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 7

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->-wrap1(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    move-result v0

    monitor-exit v2

    if-nez v0, :cond_19

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    monitor-exit v2

    :cond_19
    return v0

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    invoke-direct {p0, p4}, Lcom/android/server/SdpServiceKeeper;->policyExistsLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-string/jumbo v3, "SdpServiceKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addPolicy :: error, policy["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_41

    const/4 v3, -0x4

    monitor-exit v4

    return v3

    :cond_32
    monitor-exit v4

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v3

    if-nez v3, :cond_44

    const/4 v3, -0x7

    return v3

    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_44
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SdpServiceKeeper;->getDefaultEngineOwner(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v0

    :goto_4c
    new-instance v1, Lcom/android/server/sdp/engine/SdpPolicy;

    invoke-direct {v1, p4, v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_54
    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v3, p4, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->-wrap1(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_82

    move-result v2

    monitor-exit v4

    if-nez v2, :cond_6a

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_60
    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_85

    monitor-exit v4

    :cond_6a
    return v2

    :cond_6b
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v3

    if-eqz v3, :cond_7f

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_7f
    const/16 v3, -0xb

    return v3

    :catchall_82
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_85
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .registers 10

    const/16 v1, -0x63

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;->addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_24

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    :cond_1c
    monitor-exit v3

    if-nez v1, :cond_23

    invoke-direct {p0, p4, v0}, Lcom/android/server/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v1

    :cond_23
    :goto_23
    return v1

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_27
    const/4 v1, -0x7

    goto :goto_23
.end method

.method public declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/SdpServiceKeeper;
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/server/SdpServiceKeeper;

    invoke-direct {v0, p1}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    :cond_c
    sget-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    return v7

    :cond_17
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-eqz v5, :cond_1e

    return v8

    :cond_1e
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-object v6, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_27
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_51

    move-result-object v4

    monitor-exit v6

    if-nez v4, :cond_54

    const-string/jumbo v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can\'t find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catchall_51
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_54
    :try_start_54
    invoke-virtual {v4}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    if-eqz v2, :cond_6c

    if-eqz v3, :cond_6c

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_64} :catch_68

    move-result v5

    if-eqz v5, :cond_6c

    return v7

    :catch_68
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    return v8
.end method

.method public isLicensed(Landroid/content/Context;II)Z
    .registers 13

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v4, "Check permission { Package : %s, PID : %d, UID : %d, UserId : %d }"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpServiceKeeper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v4, "Identified as whitelisted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_40
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v4, "Identified as system app"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v4, "License activation required"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v1
.end method

.method public isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 15

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_f

    return v9

    :cond_f
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v7

    if-eqz v7, :cond_50

    iget-object v8, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_18
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_49

    move-result-object v5

    if-nez v5, :cond_24

    monitor-exit v8

    return v9

    :cond_24
    monitor-exit v8

    :try_start_25
    invoke-virtual {v5}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v2

    if-eqz v4, :cond_50

    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_44} :catch_4c

    move-result v7

    if-eqz v7, :cond_31

    const/4 v7, 0x1

    return v7

    :catchall_49
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_4c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_50
    return v9
.end method

.method public isSystemComponent(Landroid/content/Context;II)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v1, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->-wrap0(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_39

    move-result-object v0

    monitor-exit v2

    if-eqz v0, :cond_3f

    const-string/jumbo v1, "SdpServiceKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPolicy :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/sdp/engine/SdpPolicy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2e
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3c

    monitor-exit v2

    return-object v0

    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_3c
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3f
    return-object v3
.end method

.method public migratePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_sdp_policy_hash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/KeyProtector;->migrateFromTimaKeyStore(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "SdpServiceKeeper"

    const-string/jumbo v3, "Successfully migrated SDP policy!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_33
    :goto_33
    return v1

    :cond_34
    const-string/jumbo v2, "SdpServiceKeeper"

    const-string/jumbo v3, "Failed to migrate SDP policy..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 8

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-static {v0, p4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->-wrap2(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    monitor-exit v1

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I
    .registers 10

    const/16 v1, -0x63

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;->removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_24

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    :cond_1c
    monitor-exit v3

    if-nez v1, :cond_23

    invoke-direct {p0, p4, v0}, Lcom/android/server/SdpServiceKeeper;->updatePolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v1

    :cond_23
    :goto_23
    return v1

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_27
    const/4 v1, -0x7

    goto :goto_23
.end method
