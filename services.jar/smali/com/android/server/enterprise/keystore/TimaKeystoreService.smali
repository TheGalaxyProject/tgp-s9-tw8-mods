.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final DOWNLOADABLEKEYSTORE_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.BIND_TIMA_KS_CCM"

.field private static final DOWNLOADABLEKEYSTORE_PACKAGE:Ljava/lang/String; = "com.sec.downloadablekeystore"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final GET_ADMINCONTAINER_CCMBUILDUPDATE:I = 0x5

.field private static final GET_ADMINLUIDLIST:I = 0x0

.field private static final GET_CONTAINEROWNERUID:I = 0x1

.field private static final GET_MUMCONTAINEROWNERUID:I = 0x2

.field private static final KNOX_DKS_INTERNAL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static final KNOX_KEYSTORE_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field private static final MSG_BIND_DOWNLOADABLEKS:I = 0x3

.field private static final RESTART_DKS_TIMEOUT_MILLIS:I = 0x1f4

.field private static final SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE:I = 0x3

.field private static final SET_USER_CCM_PROVISIONED:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"

.field private static mInternalHandler:Landroid/os/Handler;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private pReceiver:Landroid/content/BroadcastReceiver;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4()Z
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->bindDownlodableKeystoreService(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->scheduleDKSRestart(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->systemReady(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    const-string/jumbo v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "tima"

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TIMA_SERVICE:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    new-instance v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;)V

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    new-instance v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "TimaKeystoreService Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "tima"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_8b

    :try_start_6d
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_79

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Called TIMA service getTimaVersion"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_8b} :catch_c2

    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v3

    if-eqz v3, :cond_c1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_c1
    return-void

    :catch_c2
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method

.method private bindDownlodableKeystoreService(I)I
    .registers 6

    const/4 v0, -0x1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bindDownlodableKeystoreService - DOWNLOADABLEKEYSTORE_BIND_ACTION -- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :cond_10
    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v4, 0x2

    :try_start_2
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string/jumbo v4, "pkgName"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result v4

    return v4

    :catch_27
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackageRecord() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x1

    :try_start_2
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "pkgName"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1a

    move-result v3

    return v3

    :catch_1a
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deletePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private deletePackageRecordPerApp(ILjava/lang/String;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v4, 0x2

    :try_start_2
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string/jumbo v4, "pkgName"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "TimaKeystorePerAppPolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result v4

    return v4

    :catch_27
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackageRecordPerApp() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private enforcePermission()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private enforcePermissionDks()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforcePermissionPerApp()V
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    :try_start_15
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_13

    :catch_1f
    move-exception v1

    :try_start_20
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_13

    :catch_2a
    move-exception v2

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private enforcePermissionPerAppOnly()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 6

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    if-nez v2, :cond_1d

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.BIND_TIMA_KS_CCM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.downloadablekeystore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1d
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v2
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .registers 10

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3e

    move-result v3

    return v3

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method private insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z
    .registers 9

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePerAppPolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result v3

    return v3

    :catch_34
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertOrUpdatePackageRecordPerApp() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_22

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1b

    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    :cond_27
    const/4 v2, 0x1

    return v2
.end method

.method private scheduleDKSRestart(I)V
    .registers 7

    const/4 v4, 0x3

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    if-ne p1, v4, :cond_1b

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private setupIntentFilters()V
    .registers 6

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setupIntentFilters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static supportDKS()Z
    .registers 6

    const-string/jumbo v3, ""

    const-string/jumbo v4, "ro.build.flavor"

    const-string/jumbo v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "great"

    const-string/jumbo v1, "dream"

    const-string/jumbo v0, "cruiser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_2a
    return v4

    :cond_2b
    const/4 v4, 0x1

    goto :goto_2a
.end method

.method private systemReady(I)V
    .registers 7

    const/4 v4, 0x3

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() Phase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_30

    :cond_1d
    :goto_1d
    return-void

    :pswitch_1e
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    nop

    :pswitch_data_30
    .packed-switch 0x3e8
        :pswitch_1e
    .end packed-switch
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in enableTimaKeystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    iget-boolean v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v4, :cond_21

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_20

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return v6

    :cond_21
    if-eqz p1, :cond_61

    :try_start_23
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    const-string/jumbo v4, "defaultpackage"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_56} :catch_58

    move-result v4

    return v4

    :catch_58
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v6
.end method

.method public enableTimaKeystorePerApp(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in enableTimaKeystorePerApp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerApp()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystorePerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return v4

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_55

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_4c

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable is called, and caller is enabled. try to delete and return the result"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    :cond_55
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_61

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable is called, but caller is not enabled. return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_61} :catch_63

    :cond_61
    const/4 v2, 0x1

    return v2

    :catch_63
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystorePerApp() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v4
.end method

.method public getContainerAdminDetails(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 38

    sget-boolean v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v30, :cond_c

    sget-object v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "in getContainerAdminDetails"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionDks()V

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    packed-switch p1, :pswitch_data_232

    :cond_1b
    :goto_1b
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v21

    :pswitch_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v29, v0

    const/16 v23, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    aput-wide v30, v29, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_43

    :cond_58
    const-string/jumbo v30, "ADMINLUIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_64
    .catchall {:try_start_1f .. :try_end_64} :catchall_65

    goto :goto_1b

    :catchall_65
    move-exception v30

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v30

    :pswitch_6a
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v20

    const-string/jumbo v30, "CONTAINEROWNERUID"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b

    :pswitch_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v19

    const-string/jumbo v30, "MUMCONTAINEROWNERUID"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1b

    :pswitch_a1
    move/from16 v12, p2

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v30, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v30, "adminName"

    const-string/jumbo v31, "CCM-System"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v30, "canRemove"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v30, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    const-string/jumbo v31, "ADMIN_INFO"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    const-string/jumbo v30, "SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1b

    :pswitch_111
    move/from16 v27, p2

    const-string/jumbo v30, "user"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/UserManagerService;

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    goto/16 :goto_1b

    :pswitch_129
    const/4 v4, 0x0

    const/4 v11, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_135
    .catchall {:try_start_6a .. :try_end_135} :catchall_65

    :try_start_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "/data/system/enterprise.db"

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v30 .. v33}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_1d1

    const-string/jumbo v30, "SELECT * FROM MUMCONTAINER;"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1d1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v30

    if-eqz v30, :cond_1d1

    :goto_15d
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v30

    if-nez v30, :cond_1d1

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_188} :catch_189
    .catchall {:try_start_135 .. :try_end_188} :catchall_1dc

    goto :goto_15d

    :catch_189
    move-exception v18

    if-eqz v11, :cond_18f

    :try_start_18c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_18f
    if-eqz v4, :cond_194

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_194
    :goto_194
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1b

    sget-object v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "Container list"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1f4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_1f4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v23, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1bc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1e8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v28, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_1bc

    :cond_1d1
    if-eqz v11, :cond_1d6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1d6
    if-eqz v4, :cond_194

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_194

    :catchall_1dc
    move-exception v30

    if-eqz v11, :cond_1e2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1e2
    if-eqz v4, :cond_1e7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1e7
    throw v30

    :cond_1e8
    const-string/jumbo v30, "ADMINLUIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1f4
    if-eqz v15, :cond_1b

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_1b

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v23, 0x0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_20e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_223

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v28, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_20e

    :cond_223
    const-string/jumbo v30, "CONTAINERIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_22f
    .catchall {:try_start_18c .. :try_end_22f} :catchall_65

    goto/16 :goto_1b

    nop

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_6a
        :pswitch_85
        :pswitch_a1
        :pswitch_111
        :pswitch_129
    .end packed-switch
.end method

.method public isTimaKeyStoreDefaultForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v3, :cond_1f

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v3, 0x0

    return v3

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int/2addr v3, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_32

    const/4 v1, 0x1

    :goto_2b
    if-eqz v1, :cond_52

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_30} :catch_34

    move-result v3

    return v3

    :cond_32
    const/4 v1, 0x0

    goto :goto_2b

    :catch_34
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_6f

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return v2
.end method

.method public isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v6

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_28

    return v5

    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v5

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_36

    return v5

    :cond_36
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Binder.getCallingPid() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Binder.getCallingUid()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_6b
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "knox_timakeystore_policy"

    const-string/jumbo v4, "isTimaKeystoreEnabled"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_82

    return v5

    :cond_82
    return v6
.end method

.method public isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 19

    const/4 v11, 0x0

    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_d

    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v13, :cond_21

    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_1f

    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v13, 0x0

    return v13

    :cond_21
    :try_start_21
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {v8, v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    const-string/jumbo v13, "enabled"

    const/4 v14, 0x0

    aput-object v13, v3, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "TimaKeystorePolicy"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_81

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_81

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-eqz v4, :cond_7e

    const-string/jumbo v13, "enabled"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_7e
    if-eqz v6, :cond_63

    const/4 v11, 0x1

    :cond_81
    if-nez v11, :cond_8c

    if-eqz v1, :cond_8c

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_87} :catch_aa

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8c

    const/4 v11, 0x1

    :cond_8c
    :goto_8c
    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_a9

    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return v11

    :catch_aa
    move-exception v5

    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method public isTimaKeystoreEnabledForUKS(II)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in isTimaKeystoreEnabledForUKS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v3, :cond_20

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledForUKS - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v7

    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_29

    return v6

    :cond_29
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v0, p2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_39

    return v6

    :cond_39
    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binder.getCallingPid() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Binder.getCallingUid()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_6f
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "knox_timakeystore_policy"

    const-string/jumbo v5, "isTimaKeystoreEnabled"

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7e

    return v6

    :cond_7e
    :try_start_7e
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_8d

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_7e .. :try_end_8d} :catch_8e

    :cond_8d
    return v6

    :catch_8e
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_e

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in isTimaKeystoreEnabledInDB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v8, :cond_1f

    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v10

    :cond_1f
    const/4 v8, 0x1

    :try_start_20
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x0

    aput-object v8, v1, v9

    iget-object v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "TimaKeystorePolicy"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_60

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_60

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_5d

    const-string/jumbo v8, "enabled"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5c} :catch_7e

    move-result v4

    :cond_5d
    if-eqz v4, :cond_42

    const/4 v7, 0x1

    :cond_60
    :goto_60
    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_7d

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v7

    :catch_7e
    move-exception v3

    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_10

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in isTimaKeystoreEnabledInDBPerApp"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-boolean v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v11, :cond_21

    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_20

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return v13

    :cond_21
    :try_start_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_db

    move-result-object v0

    :goto_2f
    const/4 v11, 0x2

    :try_start_30
    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v11, "uid"

    const/4 v12, 0x0

    aput-object v11, v4, v12

    const-string/jumbo v11, "pkgName"

    const/4 v12, 0x1

    aput-object v11, v4, v12

    iget-object v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "TimaKeystorePerAppPolicy"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_bd

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_bd

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v11, "uid"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp, callingUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", caller = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", callerUid in DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", callerPkg in DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v3, v11, :cond_56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_56

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp matched. caller app can use TKS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_bc} :catch_e9

    const/4 v10, 0x1

    :cond_bd
    :goto_bd
    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_da

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp returning -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    return v10

    :catch_db
    move-exception v7

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp() get callingUid, caller failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f

    :catch_e9
    move-exception v8

    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp() failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd
.end method

.method public isTimaKeystoreEnabledInternal(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isTimaKeystoreEnabledInternal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_20

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v8

    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_29

    return v7

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v7

    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_37

    return v7

    :cond_37
    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Binder.getCallingPid() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Binder.getCallingUid()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_6d
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_84

    return v7

    :cond_84
    :try_start_84
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_93

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_93} :catch_94

    :cond_93
    return v7

    :catch_94
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public systemReady()V
    .registers 4

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Tima Keystore InternalHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    :cond_24
    return-void
.end method
