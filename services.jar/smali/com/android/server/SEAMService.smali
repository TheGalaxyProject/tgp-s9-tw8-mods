.class public Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$BrHandler;,
        Lcom/android/server/SEAMService$SpdHandler;
    }
.end annotation


# static fields
.field private static final AASA_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/aasa/"

.field private static final APM_PERMS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURITY"

.field private static final BBCAgent:Ljava/lang/String; = "com.samsung.android.bbc.bbcagent"

.field public static final BBC_CONTAINER:I = 0x3

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final ERROR:I = -0x1

.field private static final FBE_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.type"

.field private static final HEX:[C

.field private static final KNOX_CON_END_NUM:I = 0xc2

.field private static final KNOX_CON_START_NUM:I = 0x64

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x2

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEAMS_OLD_PERMS:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS"

.field private static final SEAMS_PERMS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPD_COMPLETE_INTENT:Ljava/lang/String; = "com.samsung.spdsuccess"

.field private static final SPD_KNOX_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.KNOX"

.field private static final SPD_SBARELOAD_PERMISSION:Ljava/lang/String; = "com.samsung.spd.SBA_RELOAD"

.field private static final SPD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/spota/"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static mSPDCompleteReceiver:Landroid/content/BroadcastReceiver; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private GOOD_SECURED_APPTYPE:I

.field private GOOD_TRUSTED_APPTYPE:I

.field PERMS:Ljava/util/ArrayList;

.field exit_macPermFiles:[Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mSKHandler:Landroid/os/Handler;

.field private final sHandler:Lcom/android/server/SEAMService$SpdHandler;

.field private final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SEAMService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/SKLogger;
    .registers 1

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sput v3, Lcom/android/server/SEAMService;->SELF_PID:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "good"

    aput-object v1, v0, v3

    const-string/jumbo v1, "fixmo"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "container"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "mycontainer"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/server/SEAMService;->HEX:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SEAMService;->NeedBadge:Ljava/util/HashMap;

    sput-object v4, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sput v5, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    sput-object v4, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    sput v5, Lcom/android/server/SEAMService;->policyFileSize:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    const/high16 v0, 0x3200000

    sput v0, Lcom/android/server/SEAMService;->MAX_BYTE_ARRAY_SIZE:I

    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    sput-object v4, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sput-object v4, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    sput-boolean v3, Lcom/android/server/SEAMService;->bootCompleted:Z

    return-void

    nop

    :array_5e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/io/File;

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/data/security/bbccontainer/mac_permissions.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iput-object v8, p0, Lcom/android/server/SEAMService;->exit_macPermFiles:[Ljava/io/File;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/SEAMService;->GOOD_SECURED_APPTYPE:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/SEAMService;->GOOD_TRUSTED_APPTYPE:I

    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/HandlerThread;

    const-string/jumbo v9, "SEAMService"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Lcom/android/server/SEAMService$BrHandler;

    iget-object v9, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    new-instance v8, Landroid/os/HandlerThread;

    const-string/jumbo v9, "SPD"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Lcom/android/server/SEAMService$SpdHandler;

    iget-object v9, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/SEAMService$SpdHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerBootReceiver()V

    const-string/jumbo v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    iput-object v8, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerSPDCompleteReceiver()V

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v8, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v6, Lcom/android/server/SEAMService$1;

    const-string/jumbo v8, "Service Keeper Thread"

    invoke-direct {v6, p0, v8}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    sput v8, Lcom/android/server/SEAMService;->SELF_PID:I

    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->checkFingerprintAndRelabelIfNeeded()I

    move-result v3

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_e4

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "create SPD Dir"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    :try_start_e4
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/security/spota/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_128

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_116

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not exist. Creating dir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_116
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_128
    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "/data/security/aasa/"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_167

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_15a

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not exist. Creating dir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15a
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_167
    const/4 v8, 0x1

    if-ne v3, v8, :cond_27c

    const-string/jumbo v8, "ro.crypto.state"

    const-string/jumbo v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "unencrypted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b6

    const-string/jumbo v8, "vold.decrypt"

    const-string/jumbo v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "trigger_restart_framework"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b6

    const-string/jumbo v8, "vold.decrypt"

    const-string/jumbo v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "trigger_reset_main"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b6

    const-string/jumbo v8, "ro.crypto.type"

    const-string/jumbo v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27c

    :cond_1b6
    const-string/jumbo v8, "ro.build.date"

    const-string/jumbo v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27c

    const-string/jumbo v8, "NONE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_27c

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1cf
    iget-object v8, p0, Lcom/android/server/SEAMService;->exit_macPermFiles:[Ljava/io/File;

    aget-object v8, v8, v4

    if-eqz v8, :cond_256

    iget-object v8, p0, Lcom/android/server/SEAMService;->exit_macPermFiles:[Ljava/io/File;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_209

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_206

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "There isn\'t policy file[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1cf

    :cond_209
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Using policy file[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SEAMService;->exit_macPermFiles:[Ljava/io/File;

    aget-object v8, v8, v4

    invoke-direct {p0, v8}, Lcom/android/server/SEAMService;->migrationMacFiles(Ljava/io/File;)I

    move-result v5

    if-lez v5, :cond_252

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The migration is done!! result is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_252
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1cf

    :cond_256
    const-string/jumbo v8, "persist.sys.drs.date"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_27c

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isNewBuild : setprop persist.sys.drs.date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_27c} :catch_27d

    :cond_27c
    :goto_27c
    return-void

    :catch_27d
    move-exception v2

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Issue with SPD directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27c
.end method

.method private addOrUpdateAPMWhiteListInternal(IILjava/util/List;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_d

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addOrUpdateAPMWhiteListInternal"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    if-nez v11, :cond_1e

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "Failed to get PackageManager"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    return v14

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_132

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    if-nez v9, :cond_40

    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_3d

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "AppIdentity is null, so continue..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_40
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_52

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_52

    if-nez v13, :cond_60

    :cond_52
    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_3d

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "AppIdentity information is not proper, so continue..."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_60
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_52

    const/4 v10, 0x0

    const/16 v14, 0x40

    :try_start_69
    move/from16 v0, p2

    invoke-interface {v11, v8, v14, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_99

    move-result-object v10

    :cond_6f
    :goto_6f
    if-eqz v10, :cond_bb

    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_7e

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "App is installed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/SEAMService;->convertToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v5

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/android/server/SEAMService;->compareSignatures([Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v7

    if-nez v7, :cond_bb

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "Input signature is not matched with installed application"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    return v14

    :catch_99
    move-exception v3

    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_6f

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "App is not installed in user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_bb
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "adminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "apm_userId"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "apm_packageName"

    invoke-virtual {v1, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "apm_signature"

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "adminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "apm_userId"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v14, "apm_packageName"

    invoke-virtual {v2, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_ff
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "APM_WhitelistTable"

    invoke-virtual {v14, v15, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eqz v12, :cond_127

    sget-boolean v14, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v14, :cond_3d

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addOrUpdateAPMWhiteListInternal success"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_119} :catch_11b

    goto/16 :goto_3d

    :catch_11b
    move-exception v3

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addOrUpdateAPMWhiteListInternal is failed during putValues"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, -0x1

    return v14

    :cond_127
    :try_start_127
    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addOrUpdateAPMWhiteListInternal is failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_130} :catch_11b

    const/4 v14, -0x1

    return v14

    :cond_132
    const/4 v14, 0x0

    return v14
.end method

.method private checkFingerprintAndRelabelIfNeeded()I
    .registers 14

    const-string/jumbo v9, "ro.build.date"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_2a

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "current build fingerprint: ro.build.date="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string/jumbo v9, "persist.sys.drs.date"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_54

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "old build fingerprint: persist.sys.drs.date="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    const/4 v4, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_117

    const/4 v4, 0x1

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_6b

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "build fingerprint has changed, and prepare to relabel data"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const/4 v0, 0x0

    const/4 v6, 0x0

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_7c

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Relabel data for KEA is started"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    const/4 v1, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/SEAMService;->getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_fd

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_fd

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v9, :cond_fd

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v9, :cond_fd

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v1

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_108

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_ab
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_cb

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Relabel data for KEA is started : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v10, 0x80

    invoke-virtual {v9, v7, v10, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v9, v7, v1, v10}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_da} :catch_db

    goto :goto_9f

    :catch_db
    move-exception v3

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pkgName Relabel error occured :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_fd
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "pkglist is empty or PMS or Persona is null"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_108
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_117

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Relabel data for KEA is done"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_117
    return v4
.end method

.method private checkSEAMSPermission(IILjava/util/List;Z)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_49

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkSEAMSPermission, uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", user_id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", pid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", system uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x3e8

    if-ne p1, v9, :cond_68

    sget v9, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne p2, v9, :cond_68

    :cond_57
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_66

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "checkSEAMSPermission, caller: system"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    const/4 v9, 0x1

    return v9

    :cond_68
    const/16 v9, 0x3e8

    if-ne p1, v9, :cond_75

    const-string/jumbo v9, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_75
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_95

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkSEAMSPermission: packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :try_start_95
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9f
    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v2, v6, v5, v8}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_9f

    if-eqz p4, :cond_c4

    if-eqz v8, :cond_c4

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "checkSEAMSPermission, ownerOnly condition not met for global scope api"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_9f

    :cond_c4
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_d3

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "ownerOnly condition met"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    const/4 v7, 0x1

    :cond_d4
    if-nez v7, :cond_e1

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "checkSEAMSPermission, perm denied"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e1} :catch_e2

    :cond_e1
    :goto_e1
    return v7

    :catch_e2
    move-exception v1

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "expection in check SEAMS permissions"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e1
.end method

.method private checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v6, 0x1

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext_begin, ownerOnly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz p3, :cond_55

    :try_start_23
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_54

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext, ownerOnly:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", return true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    return v6

    :cond_55
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_6e

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "checkSEAMSPermissionByContext, return true"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_6e} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_6e} :catch_6f

    :cond_6e
    return v6

    :catch_6f
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "checkSEAMSPermissionByContext, false is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :catch_a0
    move-exception v1

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_93
.end method

.method private compareSignatures([Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_10

    :cond_6
    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "compareSignatures, input data is not proper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_30

    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "signature is matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v1, 0x1

    return v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_30
    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "signature is not matched!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private convertToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_9
    const-string/jumbo v0, "SEAMService"

    const-string/jumbo v1, "convertToSignature, sign is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_13
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 14

    const/4 v5, 0x0

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "/data/security/"

    invoke-direct {v4, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_11} :catch_87
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_3d
    .catchall {:try_start_4 .. :try_end_11} :catchall_d3

    :try_start_11
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_14} :catch_ff
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_102
    .catchall {:try_start_11 .. :try_end_14} :catchall_fc

    const/4 v5, 0x1

    if-eqz v3, :cond_1a

    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return v5

    :catch_1b
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_3d
    move-exception v1

    :goto_3e
    :try_start_3e
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "copyFile failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_d3

    const/4 v5, 0x0

    if-eqz v2, :cond_1a

    :try_start_61
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_1a

    :catch_65
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_87
    move-exception v0

    :goto_88
    :try_start_88
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File Not Found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_88 .. :try_end_a8} :catchall_d3

    const/4 v5, 0x0

    if-eqz v2, :cond_1a

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b0

    goto/16 :goto_1a

    :catch_b0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :catchall_d3
    move-exception v6

    :goto_d4
    if-eqz v2, :cond_d9

    :try_start_d6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    :cond_d9
    :goto_d9
    throw v6

    :catch_da
    move-exception v1

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing OutputStream"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    :catchall_fc
    move-exception v6

    move-object v2, v3

    goto :goto_d4

    :catch_ff
    move-exception v0

    move-object v2, v3

    goto :goto_88

    :catch_102
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3e
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_23

    const/4 v2, 0x1

    :goto_d
    if-ltz v2, :cond_20

    sget-object v3, Lcom/android/server/SEAMService;->HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .registers 13

    :goto_0
    :try_start_0
    const-string/jumbo v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_14

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_14
    const/4 v3, 0x1

    aget-object v1, v2, v3

    const-string/jumbo v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_27
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2c
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string/jumbo v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_27

    :catch_4d
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In getAVCDetails [Exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    :try_start_6f
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_4d

    goto :goto_27
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .registers 6

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1f

    packed-switch p0, :pswitch_data_2e

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "getInstance, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_16
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    :cond_1f
    :goto_1f
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    return-object v0

    :pswitch_24
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/BBCContainer;

    invoke-direct {v1, p1}, Lcom/android/server/BBCContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1f

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_16
        :pswitch_24
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "persist.sys.mdm.auto"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    and-int v1, v0, p1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "getMdmProperties, FALSE is returned."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method private getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3

    invoke-static {p1}, Lcom/android/server/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    return-object v0
.end method

.method private getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v1, "getSeinfo"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v4, "SEAMS"

    const-string/jumbo v5, "getSeinfo"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_25

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_25
    if-nez p1, :cond_33

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: packageName is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_33
    iget-object v4, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v4, :cond_43

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: mPMS  is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_43
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v6, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "Entered hashset_to_int_array in SELinuxMMAC"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_20

    :cond_16
    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_20
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    goto :goto_2b

    :cond_43
    return-object v0
.end method

.method private isAddedInAPMWhiteListInternal(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .registers 16

    const/4 v0, 0x0

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v9, "apm_userId"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "apm_packageName"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x1

    aput-object p1, v6, v9

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v9, "apm_signature"

    const/4 v10, 0x0

    aput-object v9, v5, v10

    iget-object v9, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "APM_WhitelistTable"

    invoke-virtual {v9, v10, v4, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_57

    :cond_37
    sget-boolean v9, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v9, :cond_55

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "This app is not added in whitelist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const/4 v9, 0x0

    return v9

    :cond_57
    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v9, "apm_signature"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_74

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_81

    :cond_74
    sget-boolean v9, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v9, :cond_81

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "Stored signature value is not proper, so continue..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_84
    if-nez v7, :cond_95

    sget-boolean v9, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v9, :cond_93

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "Failed to get signature"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    const/4 v9, 0x0

    return v9

    :cond_95
    invoke-direct {p0, v7}, Lcom/android/server/SEAMService;->convertToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v2

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v9, v2}, Lcom/android/server/SEAMService;->compareSignatures([Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_b0

    sget-boolean v9, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v9, :cond_ae

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "This app is added in whitelist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/4 v9, 0x1

    return v9

    :cond_b0
    const/4 v9, 0x0

    return v9
.end method

.method public static isBootComplete()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return v0
.end method

.method private migrationMacFiles(Ljava/io/File;)I
    .registers 15

    const/4 v5, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_14

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/File;->setWritable(Z)Z

    :cond_14
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    invoke-virtual {p0, v1}, Lcom/android/server/SEAMService;->changeAttributeName(Lorg/w3c/dom/Document;)I

    move-result v5

    if-lez v5, :cond_3a

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v6, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return v5

    :catch_3b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "migrationMacFiles_Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 12

    const-string/jumbo v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    :cond_12
    return-void
.end method

.method private processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    return-void
.end method

.method private static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 6

    const-string/jumbo v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    return-void
.end method

.method private registerBootReceiver()V
    .registers 7

    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1d

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/SEAMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$2;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot register mBootReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private registerSPDCompleteReceiver()V
    .registers 7

    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2e

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "Entered registerSPDCompleteReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.spdsuccess"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/SEAMService$3;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$3;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.sec.android.permission.KNOX"

    iget-object v5, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot register mSPDCompleteReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private removeAPMWhiteListInternal(IILjava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    sget-boolean v8, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v8, :cond_d

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "removeAPMWhiteListInternal"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_c4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    if-nez v3, :cond_2c

    sget-boolean v8, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v8, :cond_29

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "AppIdentity is null, so continue..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2c
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3e

    if-nez v7, :cond_4c

    :cond_3e
    sget-boolean v8, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v8, :cond_29

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "AppIdentity information is not proper, so continue..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_4c
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3e

    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v8, "adminUid"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const-string/jumbo v8, "apm_userId"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const-string/jumbo v8, "apm_packageName"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const-string/jumbo v8, "apm_signature"

    const/4 v9, 0x3

    aput-object v8, v5, v9

    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v2, v6, v8

    const/4 v8, 0x3

    aput-object v7, v6, v8

    :try_start_84
    iget-object v8, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "APM_WhitelistTable"

    invoke-virtual {v8, v9, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    sget-boolean v8, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v8, :cond_ab

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeAPMWhiteListInternal : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    if-nez v4, :cond_29

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "Failed to remove whitelist"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b6} :catch_b8

    const/4 v8, -0x1

    return v8

    :catch_b8
    move-exception v0

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "Exception in removeAPMWhiteListInternal"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, -0x1

    return v8

    :cond_c4
    const/4 v8, 0x0

    return v8
.end method

.method private removePolicyFiles()Z
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/security/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_15
    if-ge v6, v7, :cond_6e

    aget-object v4, v0, v6

    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/data/security/"

    invoke-direct {v2, v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2a

    :goto_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_27

    :catch_2e
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception during removePolicyFiles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_50
    if-eqz v5, :cond_79

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_61

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "removePolicyFiles succeeded."

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    return v5

    :cond_62
    :try_start_62
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "/data/security/ is not a directory."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_6e
    const-string/jumbo v6, "selinux.reload_policy"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_77} :catch_2e

    const/4 v5, 0x1

    goto :goto_50

    :cond_79
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_61

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "removePolicyFiles failed."

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method private resetPolicyAssets()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/android/server/SEAMService;->policyFileSize:I

    sput-object v1, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sput-object v1, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    sput v0, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1d

    or-int/2addr v0, v1

    :cond_e
    :goto_e
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    :try_start_11
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_22

    monitor-exit v3

    return-void

    :cond_1d
    if-nez p2, :cond_e

    not-int v2, v1

    and-int/2addr v0, v2

    goto :goto_e

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .registers 8

    const/4 v1, -0x1

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "In method: setPolicyUpdateProperty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz p1, :cond_47

    :try_start_12
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_24

    :try_start_15
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_21

    :try_start_1e
    monitor-exit v3

    const/4 v1, 0x0

    :goto_20
    return v1

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_20

    :cond_47
    :try_start_47
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_24

    :try_start_4a
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string/jumbo v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_56

    :try_start_53
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_20

    :catchall_56
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_24
.end method


# virtual methods
.method public APMSwitchChanged(IZ)Z
    .registers 8

    const/high16 v4, 0x4000000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v1

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    and-int v2, v1, v3

    if-eqz v2, :cond_10

    sub-int/2addr v1, v3

    :cond_10
    and-int v2, v1, v4

    if-eqz v2, :cond_16

    sub-int/2addr v1, v4

    const/4 v0, 0x1

    :cond_16
    :goto_16
    invoke-virtual {p0, p1, v1}, Lcom/android/server/SEAMService;->setAPMStatusAsUser(II)V

    return v0

    :cond_1a
    or-int/2addr v1, v3

    goto :goto_16
.end method

.method public activateDomain(Z)I
    .registers 12

    const/4 v9, -0x2

    const-string/jumbo v3, "activateDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "activateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_21
    :try_start_21
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "activateDomain"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_39

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Unauthorized call to activateDomain. "

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_39
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v2, v5, p1}, Lcom/android/server/SEAMSContainer;->activateDomain(IZ)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_44} :catch_46

    move-result v6

    return v6

    :catch_46
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in method:activateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6a
    const/4 v6, -0x1

    return v6
.end method

.method public addAppToAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    const/4 v8, -0x1

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "addAppToAPMWhiteList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "ContextInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/SEAMService;->enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    if-eqz p2, :cond_21

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2b

    :cond_21
    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "Input parameter is not proper"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    sget-boolean v5, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v5, :cond_4d

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adminUid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    sget-boolean v5, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v5, :cond_6b

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6f
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/SEAMService;->addOrUpdateAPMWhiteListInternal(IILjava/util/List;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_77
    .catchall {:try_start_6f .. :try_end_72} :catchall_85

    move-result v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_77
    move-exception v1

    :try_start_78
    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "Exception in addAppToAPMWhiteList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_85

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_85
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public addAppToBlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToBlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 16

    const-string/jumbo v3, "addAppToContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_23

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "addAppToContainer: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    return v7

    :cond_23
    :try_start_23
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v5

    return v5

    :cond_37
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v5

    return v5

    :cond_4b
    const-string/jumbo v7, "SEAMS"

    const-string/jumbo v8, "addAppToContainer"

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7c

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unauthorized call to addAppToContainer for package name ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "). "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    return v7

    :cond_7c
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_87} :catch_89

    move-result v5

    return v5

    :catch_89
    move-exception v1

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in methodaddAppToContainer, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ad
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "addAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 21

    const-string/jumbo v8, "changeAppDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v12, "SEAMS"

    const-string/jumbo v13, "changeAppDomain"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11, v12, v13}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_2a

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    return v12

    :cond_2a
    packed-switch p2, :pswitch_data_9e

    :cond_2d
    :goto_2d
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "changeAppDomain POLICY_FAILED is returned "

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    return v12

    :pswitch_3a
    :try_start_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SEAMService;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p4, :cond_4f

    if-eqz p3, :cond_4f

    const-string/jumbo v12, "untrusted"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4f

    const/4 v12, -0x1

    return v12

    :cond_4f
    if-eqz p4, :cond_60

    if-eqz p3, :cond_60

    const-string/jumbo v12, "trustonicpartner"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_60

    const/4 v12, -0x1

    return v12

    :cond_60
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v13, v12}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v7

    if-eqz v7, :cond_2d

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_76} :catch_78

    move-result v10

    return v10

    :catch_78
    move-exception v6

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception in methodchangeAppDomain, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    nop

    :pswitch_data_9e
    .packed-switch 0x3
        :pswitch_3a
    .end packed-switch
.end method

.method public changeAttributeName(Lorg/w3c/dom/Document;)I
    .registers 18

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/16 v13, 0x8

    const/16 v14, 0x10

    const/16 v15, 0x20

    filled-new-array {v11, v12, v13, v14, v15}, [I

    move-result-object v7

    const/4 v11, 0x5

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v11, "category"

    const/4 v12, 0x0

    aput-object v11, v6, v12

    const-string/jumbo v11, "allowcategory"

    const/4 v12, 0x1

    aput-object v11, v6, v12

    const-string/jumbo v11, "bbccategory"

    const/4 v12, 0x2

    aput-object v11, v6, v12

    const-string/jumbo v11, "bbcallowcategory"

    const/4 v12, 0x3

    aput-object v11, v6, v12

    const-string/jumbo v11, "containerallowcategory"

    const/4 v12, 0x4

    aput-object v11, v6, v12

    const/4 v11, 0x5

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v11, "space"

    const/4 v12, 0x0

    aput-object v11, v5, v12

    const-string/jumbo v11, "allowSpace"

    const/4 v12, 0x1

    aput-object v11, v5, v12

    const-string/jumbo v11, "bbcSpace"

    const/4 v12, 0x2

    aput-object v11, v5, v12

    const-string/jumbo v11, "bbcAllowSpace"

    const/4 v12, 0x3

    aput-object v11, v5, v12

    const-string/jumbo v11, "containerAllowSpace"

    const/4 v12, 0x4

    aput-object v11, v5, v12

    const-string/jumbo v11, "seinfo"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v3, 0x0

    :goto_59
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_ac

    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v4, 0x0

    :goto_66
    const/4 v11, 0x5

    if-ge v4, v11, :cond_a9

    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a6

    sget-boolean v11, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v11, :cond_93

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "changeAttributeName is called,  oldAttr = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v11, v5, v4

    invoke-interface {v2, v11, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    aget v11, v7, v4

    or-int/2addr v8, v11

    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_ac
    const-string/jumbo v11, "service"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v3, 0x0

    :goto_b6
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_109

    invoke-interface {v10, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v4, 0x0

    :goto_c3
    const/4 v11, 0x5

    if-ge v4, v11, :cond_106

    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_103

    sget-boolean v11, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v11, :cond_f0

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "changeAttributeName is called,  oldAttr = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f0
    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v11, v5, v4

    invoke-interface {v2, v11, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v11, v6, v4

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    aget v11, v7, v4

    or-int/2addr v8, v11

    :cond_103
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    :cond_106
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_109
    return v8
.end method

.method public clearSBABlacklist(II)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearSBABlacklist(II)I

    move-result v0

    return v0
.end method

.method public clearWhitelist(II)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearWhitelist(II)I

    move-result v0

    return v0
.end method

.method public createSEContainer()I
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v0, 0x1

    :cond_17
    iget-object v5, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_2d

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "createSEContainer: License validation failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_2d
    if-eqz v0, :cond_3d

    :try_start_2f
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    :goto_36
    if-eqz v2, :cond_69

    invoke-virtual {v2, v4, v3}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I

    move-result v5

    return v5

    :cond_3d
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_43} :catch_45

    move-result-object v2

    goto :goto_36

    :catch_45
    move-exception v1

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in createSEContainer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "createSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5
.end method

.method public deActivateDomain()I
    .registers 11

    const/4 v9, -0x2

    const-string/jumbo v3, "deActivateDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "deActivateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_21
    :try_start_21
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "deActivateDomain"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3d

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_3c

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Unauthorized call to deActivateDomain. "

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return v9

    :cond_3d
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_48} :catch_4a

    move-result v6

    return v6

    :catch_4a
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in method:deActivateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "deActivateDomain, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 16

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string/jumbo v6, "getAMSLog"

    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_1b

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAMSLog: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return-object v10

    :cond_1b
    const-string/jumbo v7, "all"

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_3e

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "In getAMSLog() containerType ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :try_start_3e
    const-string/jumbo v0, "/data/misc/audit/ams.log"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5c
    :goto_5c
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v10

    if-eqz v10, :cond_c5

    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "Allowed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b8

    invoke-direct {p0, v7, v4, v8, v5}, Lcom/android/server/SEAMService;->processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_72} :catch_73

    goto :goto_5c

    :catch_73
    move-exception v2

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in method:getAMSLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_97
    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_b7

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "In getAMSLog(): AMS Log ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    return-object v1

    :cond_b8
    :try_start_b8
    const-string/jumbo v10, "Denied"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/server/SEAMService;->processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_5c

    :cond_c5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Scanner;->close()V
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_cc} :catch_73

    goto :goto_97
.end method

.method public getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 10

    const-string/jumbo v2, "getAMSLogLevel"

    iget-object v4, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v4

    if-nez v4, :cond_19

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSLogLevel: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    return v4

    :cond_19
    const/4 v0, -0x1

    const/4 v3, 0x0

    :try_start_1b
    const-string/jumbo v4, "persist.security.ams.verbose"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_2c

    move-result v0

    :cond_2b
    return v0

    :catch_2c
    move-exception v1

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAMSLogLevel: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 11

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string/jumbo v2, "getAMSMode"

    iget-object v4, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v4

    if-nez v4, :cond_1a

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    return v4

    :cond_1a
    const/4 v3, 0x0

    :try_start_1b
    const-string/jumbo v4, "persist.security.ams.enforcing"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_2e

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_52

    return v6

    :catch_2e
    move-exception v1

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in method:getAMSMode, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_52
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: FALSE is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public getAPMStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 15

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "getAPMStatus"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "ContextInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    return v10

    :cond_16
    const/4 v5, 0x0

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_44

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAPMStatus userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_5a

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11, v8}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v10

    const/4 v11, -0x3

    if-ne v10, v11, :cond_5a

    invoke-direct {p0, p1}, Lcom/android/server/SEAMService;->enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_5a
    const-wide/16 v6, 0x0

    :try_start_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v3, 0x0

    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    const-string/jumbo v10, "apm_userId"

    const/4 v11, 0x1

    aput-object v10, v0, v11

    const-string/jumbo v10, "apm_status"

    const/4 v11, 0x2

    aput-object v10, v0, v11

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "APM_EnforcedTable"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_ab

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_ab

    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_a6

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAPMStatus, Can not get apm_status user Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_a6} :catch_f5
    .catchall {:try_start_5c .. :try_end_a6} :catchall_140

    :cond_a6
    const/4 v10, -0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_ab
    :try_start_ab
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_af
    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_bb} :catch_f5
    .catchall {:try_start_ab .. :try_end_bb} :catchall_140

    :try_start_bb
    const-string/jumbo v10, "apm_userId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_af

    const-string/jumbo v10, "apm_status"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d2} :catch_d5
    .catchall {:try_start_bb .. :try_end_d2} :catchall_140

    move-result v10

    or-int/2addr v5, v10

    goto :goto_af

    :catch_d5
    move-exception v4

    :try_start_d6
    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_af

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAPMStatus, Can not get apm_status user Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f4} :catch_f5
    .catchall {:try_start_d6 .. :try_end_f4} :catchall_140

    goto :goto_af

    :catch_f5
    move-exception v4

    :try_start_f6
    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_103

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Exception in getAPMStatus"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_f6 .. :try_end_106} :catchall_140

    const/4 v10, -0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_10b
    :try_start_10b
    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_129

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAPMStatus, status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_129} :catch_f5
    .catchall {:try_start_10b .. :try_end_129} :catchall_140

    :cond_129
    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_132

    const/4 v10, 0x2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_132
    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_13b

    const/4 v10, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_13b
    const/4 v10, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_140
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public getAPMStatusAsUser(I)I
    .registers 14

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_10

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getAPMStatusAsUser,"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "apm_userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "APM_StatusTable"

    const-string/jumbo v9, "apm_status"

    invoke-virtual {v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/android/server/SEAMService;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    const-string/jumbo v7, "5242951"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_aa

    :try_start_47
    const-string/jumbo v7, "apm_status"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_8a

    move-result v6

    :cond_52
    :goto_52
    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_86

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAPMStatusAsUser, userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isAPMenforced: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    packed-switch v4, :pswitch_data_10a

    return v6

    :catch_8a
    move-exception v3

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_52

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAPMStatusAsUser, can not get old status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_aa
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "apm_userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "apm_status"

    const-string/jumbo v8, "5242951"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "APM_StatusTable"

    invoke-virtual {v7, v8, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_f1

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAPMStatusAsUser APM Status is set default, putValues: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    if-eqz p1, :cond_52

    invoke-virtual {p0, v10}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    goto/16 :goto_52

    :pswitch_f8
    and-int v7, v6, v11

    if-eqz v7, :cond_fd

    sub-int/2addr v6, v11

    :cond_fd
    const-string/jumbo v7, "5242951"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, v6

    return v7

    :pswitch_106
    or-int v7, v6, v11

    return v7

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_106
        :pswitch_f8
    .end packed-switch
.end method

.method public getAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "getAPMWhiteList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_17

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "ContextInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/SEAMService;->enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "adminUid"

    aput-object v6, v0, v9

    const-string/jumbo v6, "apm_userId"

    const/4 v7, 0x1

    aput-object v6, v0, v7

    const-string/jumbo v6, "apm_packageName"

    const/4 v7, 0x2

    aput-object v6, v0, v7

    iget-object v6, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "APM_WhitelistTable"

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4f

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "Can not getAPMWhiteList, cvList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_4f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    :try_start_5f
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v6, v7, :cond_53

    new-instance v6, Lcom/samsung/android/knox/AppIdentity;

    const-string/jumbo v7, "apm_packageName"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7e} :catch_7f

    goto :goto_53

    :catch_7f
    move-exception v4

    goto :goto_53

    :cond_81
    return-object v5
.end method

.method public getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 16

    const/4 v1, 0x0

    const-string/jumbo v10, "getAVCLog"

    iget-object v0, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAVCLog: License validation failed"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1a
    const-string/jumbo v1, "all"

    const/4 v7, 0x0

    :try_start_1e
    const-string/jumbo v6, "/data/misc/audit/audit.log"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "avc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_53} :catch_54

    goto :goto_3c

    :catch_54
    move-exception v8

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in method:getAVCLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_78
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_98

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AVC Log ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    return-object v7

    :cond_99
    :try_start_99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_a0} :catch_54

    goto :goto_78
.end method

.method public getActivationStatus()I
    .registers 11

    const/4 v9, -0x2

    const-string/jumbo v3, "getActivationStatus"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_21
    :try_start_21
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "getActivationStatus"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_39

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Unauthorized call to getActivationStatus. "

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_39
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_44} :catch_46

    move-result v6

    return v6

    :catch_46
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Exception in method:getActivationStatus, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6a
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public getAllSEContainerCategory()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_14

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory begin"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v10, 0x2

    :try_start_15
    new-array v9, v10, [Ljava/lang/String;

    const-string/jumbo v10, "containerID"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "mode"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "SeamsClipboardTable"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v9, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_3c

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory, got the results for database entries"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    if-eqz v7, :cond_a7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v10, "containerID"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_81

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory, cat:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_88} :catch_89

    goto :goto_4a

    :catch_89
    move-exception v5

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory() failed with exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    return-object v8

    :cond_a7
    :try_start_a7
    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_b6

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory, calling getSEContainerIDsForSystem"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v10, :cond_c5

    const-string/jumbo v10, "package"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    iput-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    :cond_c5
    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsForSystem()Ljava/util/List;

    move-result-object v8

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eqz v8, :cond_a6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a6

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_de
    :goto_de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v10, "containerID"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_117

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    :cond_117
    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_de

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory, added entry to database for cat:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_137} :catch_89

    goto :goto_de
.end method

.method public getBBCFlag()Z
    .registers 2

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v0

    return v0
.end method

.method public getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16

    const/4 v11, 0x0

    const-string/jumbo v6, "getDataType"

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_19

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataType: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_19
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-gez p3, :cond_2c

    :try_start_20
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataTypeuserId is less than 0."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_2c
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_4c

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "callingUid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v7, 0x80

    invoke-interface {v3, p2, v7, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_64

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataTypeappInfo is null."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_64
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_6c} :catch_71

    move-result-object v1

    :goto_6d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_71
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_6d
.end method

.method public getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16

    const/4 v11, 0x0

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_10

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain_begin"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v6, "getDomain"

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_28

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_28
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-gez p3, :cond_3b

    :try_start_2f
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain, userId is less than 0."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_3b
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_5b

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v7, 0x80

    invoke-interface {v3, p2, v7, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_73

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain, appInfo is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_73
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_8b

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain_end"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8b} :catch_8f

    :cond_8b
    :goto_8b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_8f
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_8b
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 14

    const/4 v10, 0x0

    const-string/jumbo v3, "getPackageNamesFromSEContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_30

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getPackageNamesFromSEContainer, License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_30
    if-eqz v0, :cond_40

    :try_start_32
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    :goto_39
    if-eqz v2, :cond_6c

    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_40
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_46} :catch_48

    move-result-object v2

    goto :goto_39

    :catch_48
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in method:getPackageNamesFromSEContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getPackageNamesFromSEContainer, null is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromSBABlacklist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ResourceManager;->getPackagesFromSBAList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromWhitelist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgNamesFromContainer(IZ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string/jumbo v0, "getPkgNamesFromContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v3, "SEAMS"

    const-string/jumbo v4, "getPkgNamesFromContainer"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1a

    return-object v5

    :cond_1a
    if-eqz p2, :cond_24

    if-ne p1, v6, :cond_23

    invoke-static {v6}, Lcom/android/server/pm/SELinuxMMAC;->getAllPackageNamesFromSEContainer(I)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_23
    return-object v5

    :cond_24
    return-object v5
.end method

.method public getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 15

    const-string/jumbo v4, "getSEAMSLog"

    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog_begin"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v9

    if-nez v9, :cond_25

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return-object v9

    :cond_25
    :try_start_25
    const-string/jumbo v7, "/data/misc/audit/sk.log"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_43
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_54} :catch_55

    goto :goto_43

    :catch_55
    move-exception v0

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in method:getSEAMSLog, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_79
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_85
    :try_start_85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_8c} :catch_55

    goto :goto_79
.end method

.method public getSEContainerClipboardMode(I)I
    .registers 14

    const/4 v11, -0x1

    const-string/jumbo v4, "getSEContainerClipboardMode"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_23

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getSEContainerClipboardMode: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    return v7

    :cond_23
    sget v7, Lcom/android/server/SEAMService;->SELF_PID:I

    if-eq v5, v7, :cond_82

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v3

    if-eqz v3, :cond_6a

    iget-object v7, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v7, v8, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_91

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "containerID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not owned by caller:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_6a
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "mdmID is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_76
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "unable to get instance"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_82
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_91

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "caller is  system_server..proceed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "SeamsClipboardTable"

    const-string/jumbo v9, "mode"

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_112

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-eqz v7, :cond_112

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_106

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CHecking if entry already exists:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the clipboard status for container:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "mode"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    const-string/jumbo v7, "mode"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    :cond_112
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_144

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "cvOld is null or size is 0"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the clipboard status for container:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_144
    return v11
.end method

.method public getSEContainerIDs()[I
    .registers 13

    const/4 v11, 0x0

    const-string/jumbo v4, "getSEContainerIDs"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_30

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getSEContainerIDs, License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_30
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_49

    :try_start_37
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    :goto_3e
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;

    move-result-object v1

    :cond_44
    invoke-static {v1}, Lcom/android/server/SEAMService;->hashset_to_int_array(Ljava/util/HashSet;)[I

    move-result-object v7

    return-object v7

    :cond_49
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_51

    move-result-object v3

    goto :goto_3e

    :catch_51
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in getSEContainerIDs:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getSEContainerIDs, null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 16

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string/jumbo v5, "getSEContainerIDsFromPackageName"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v8

    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :cond_24
    iget-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_38

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_38
    if-eq p2, v9, :cond_3c

    if-ne p2, v10, :cond_55

    :cond_3c
    :try_start_3c
    const-string/jumbo v8, "SEAMS"

    const-string/jumbo v9, "getSEContainerIDsFromPackageName"

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_91

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    if-eqz v4, :cond_91

    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    return-object v8

    :cond_55
    if-eqz v0, :cond_65

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    :goto_5e
    if-eqz v4, :cond_91

    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    return-object v8

    :cond_65
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6b} :catch_6d

    move-result-object v4

    goto :goto_5e

    :catch_6d
    move-exception v3

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in method:getSEContainerIDsFromPackageName, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_91
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 8

    const-string/jumbo v1, "getSELinuxMode"

    :try_start_3
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    return v2

    :catch_b
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method:getSELinuxMode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "getSELinuxMode, FALSE is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 9

    const-string/jumbo v1, "getSepolicyVersion"

    const/4 v2, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "getSepolicyVersion_end"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    :cond_17
    return-object v2

    :catch_18
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in method:getSepolicyVersion, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 13

    const/4 v10, 0x0

    const-string/jumbo v1, "getSignatureFromCertificate"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v2, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromCertificate: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_21
    :try_start_21
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_49

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v6, "-----BEGIN CERTIFICATE-----"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-----END CERTIFICATE-----"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->encodeBase16([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6e} :catch_70

    move-result-object v6

    return-object v6

    :catch_70
    move-exception v0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in byte array operations when getting signature."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromCertificate: null is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x0

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromMac: Enter"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_29

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromMac: packageName is null"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v0, 0x1

    :cond_36
    if-eqz v0, :cond_64

    :try_start_38
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_63

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BBC getSignatureFromMac: ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-object v4

    :cond_64
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_63

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SEAMS getSignatureFromMac: ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8f} :catch_90

    goto :goto_63

    :catch_90
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getInstance fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    const-string/jumbo v5, "getSignatureFromPackage"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v12

    if-nez v12, :cond_2b

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: License validation failed"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_2b
    if-nez p1, :cond_3a

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_13d

    const/16 v12, 0x40

    :try_start_43
    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_8b

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_4f
    array-length v12, v10

    if-ge v4, v12, :cond_13d

    const-string/jumbo v12, ""

    aget-object v13, v10, v4

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_88

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    sget-boolean v12, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v12, :cond_87

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Returning signature at position: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    return-object v9

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_8b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_98

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_98

    const/4 v1, 0x1

    :cond_98
    if-eqz v1, :cond_10c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v12, :cond_ff

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v2

    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_f2

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_b6
    array-length v12, v10

    if-ge v4, v12, :cond_13d

    const-string/jumbo v12, ""

    aget-object v13, v10, v4

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ef

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    sget-boolean v12, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v12, :cond_ee

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Returning signature at position: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    return-object v9

    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_f2
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, pi is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_ff
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, mPersona is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_10c
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, bbcFlag is false"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_117} :catch_119

    const/4 v12, 0x0

    return-object v12

    :catch_119
    move-exception v3

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception in method:getSignatureFromPackage, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13d
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, null is returned"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12
.end method

.method public hasKnoxContainers()I
    .registers 10

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - begin"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_14
    iget-object v5, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v5, :cond_43

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_27

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - get mPersona - 1"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v5, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_43

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - got mPersona - 2"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    iget-object v5, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v5, :cond_75

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_56

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - mPersona not null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-object v5, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_75

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_74

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - KNOX2.0 exists"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const/4 v4, 0x1

    :cond_75
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_84

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "hasKnoxContainers - end"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_84} :catch_88

    :cond_84
    :goto_84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_88
    move-exception v0

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasKnoxContainers - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84
.end method

.method public hasSEContainers()I
    .registers 8

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "hasSEContainers - begin"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasSEContainers()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    const/4 v2, 0x0

    const-string/jumbo v3, "persist.security.good.enable"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_3e

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "hasSEContainers - end"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return v1

    :catch_3e
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasSEContainers - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_2e
.end method

.method public isAPMEnabled(I)Z
    .registers 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "SEAMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAPMEnabled, userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public isAPMWhiteListAPP(Ljava/lang/String;)I
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string/jumbo v3, "setAPMFlag"

    iget-object v7, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/16 v9, 0x80

    invoke-virtual {v7, p1, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string/jumbo v8, "privapp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    return v10

    :cond_1f
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string/jumbo v8, "platform"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    :cond_2a
    return v10

    :cond_2b
    const-string/jumbo v8, "release"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    const-string/jumbo v8, "spay"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    const-string/jumbo v8, "shared"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    :cond_46
    invoke-static {p1}, Lcom/android/server/ServiceKeeper;->isAPMWhiteListAPP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    return v10

    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_6f

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callingUid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_91

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    if-nez v5, :cond_a1

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Failed to get PackageManager"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_a1
    const/4 v4, 0x0

    const/16 v7, 0x40

    :try_start_a4
    invoke-interface {v5, p1, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_b4

    move-result-object v4

    :cond_a8
    :goto_a8
    if-nez v4, :cond_d4

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Failed to get package info"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_b4
    move-exception v2

    sget-boolean v7, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v7, :cond_a8

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App is not installed in user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_d4
    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/SEAMService;->isAddedInAPMWhiteListInternal(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_db

    return v10

    :cond_db
    return v11
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/SEAMService;->bootCompleted:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_a

    :cond_9
    return v5

    :cond_a
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_24

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_23

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "Returning 0 directly as tables are not ready in SK."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return v5

    :cond_24
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isBBCAgent()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->isSBAApp(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 9

    const/4 v5, 0x1

    const-string/jumbo v1, "isSEAndroidLogDumpStateInclude"

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_19

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_19
    :try_start_19
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_2d

    move-result v3

    if-eqz v3, :cond_51

    return v5

    :catch_2d
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in method:isSEAndroidLogDumpStateInclude, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude, FALSE is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3
.end method

.method public isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 16

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "isSEPolicyAutoUpdateEnabled"

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_2a

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: Entered"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "In method: isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: Entered"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_40

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x2

    return v10

    :cond_40
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v10, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v10}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-gez v10, :cond_11e

    const-wide/16 v2, 0x0

    :try_start_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const-string/jumbo v11, "android"

    const-string/jumbo v12, "com.sec.android.app.msa"

    invoke-interface {v10, v11, v12}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_cf

    const/4 v5, 0x1

    :goto_65
    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_96

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Value of contentResolver is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", msaInstalled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService;->getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d1

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "security_update_db"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_cb

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isSEPolicyAutoUpdateEnabled res: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_cb} :catch_102
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_cb} :catch_110

    :cond_cb
    :goto_cb
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_ce
    return v7

    :cond_cf
    const/4 v5, 0x0

    goto :goto_65

    :cond_d1
    if-eqz v5, :cond_cb

    :try_start_d3
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "cr_msa_auto_update"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_cb

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "MSA && permissive combination: isSEPolicyAutoUpdateEnabled res: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_101} :catch_102
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_101} :catch_110

    goto :goto_cb

    :catch_102
    move-exception v6

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "remote exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_cb

    :catch_110
    move-exception v1

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_cb

    :cond_11e
    :try_start_11e
    const-string/jumbo v10, "spd_control_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v8

    rem-int/lit8 v7, v8, 0x2
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_12f} :catch_130

    goto :goto_ce

    :catch_130
    move-exception v6

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_ce
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->isWhitelistApp(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 8

    const-string/jumbo v0, "loadContainerSetting"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "loadContainerSetting: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_21
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "loadContainerSetting: POLICY_FAILED is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 16

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v4, "relabelAppDir"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v5, v8, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_22

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "relabelAppDir: License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x2

    return v8

    :cond_22
    if-nez p1, :cond_30

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "packageName is null"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_30
    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    if-eqz v1, :cond_67

    iget-object v8, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v7

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_67

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "change userID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :try_start_67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v8, 0x80

    invoke-interface {v3, p1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    iput-object v8, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_a2

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AppInfo of package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", is NULL, return false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_a2
    const-string/jumbo v8, "/data/system"

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "The package has /data/system/ datadir, dataDir:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " and cannot be relabeled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_d3
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v8, :cond_d9

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_d9
    if-eqz v1, :cond_125

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BBC case, relabelAppDir with packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", bbcseInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", userID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v8, p1, v7, v9}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17d

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "BBC case, mPMS.relabelAppData returned false"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_125
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "non-BBC (Good/generic) case, relabelAppDir with packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", seinfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v10, v9}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17d

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "non-BBC case, mPMS.relabelAppData returned false"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_16f} :catch_170

    return v12

    :catch_170
    move-exception v2

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "relabelAppDir cannot get app list"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_17d
    return v13
.end method

.method public relabelData(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 8

    const/4 v5, 0x1

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "relabel whole /data"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v0, "relabelData"

    iget-object v1, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "relabelData: License validation failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_28
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calling userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->relabelData()Z

    move-result v1

    if-nez v1, :cond_6f

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "mPMS.relabelData returned false"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_6f
    return v5
.end method

.method public removeAppFromAPMWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    const/4 v8, -0x1

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "removeAppFromAPMWhiteList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "ContextInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/SEAMService;->enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    if-eqz p2, :cond_21

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2b

    :cond_21
    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "Input parameter is not proper"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    sget-boolean v5, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v5, :cond_4d

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adminUid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    sget-boolean v5, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v5, :cond_6b

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6f
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/SEAMService;->removeAPMWhiteListInternal(IILjava/util/List;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_77
    .catchall {:try_start_6f .. :try_end_72} :catchall_85

    move-result v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_77
    move-exception v1

    :try_start_78
    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "Exception in removeAppFromAPMWhiteList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_85

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_85
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public removeAppFromBlacklist(ILjava/lang/String;I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromBlacklist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 16

    const-string/jumbo v3, "removeAppFromContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v4, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_21

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "removeAppFromContainer: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    return v7

    :cond_21
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_23
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v5

    return v5

    :cond_37
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v5

    return v5

    :cond_4b
    const-string/jumbo v7, "SEAMS"

    const-string/jumbo v8, "removeAppFromContainer"

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7c

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unauthorized call to removeAppFromContainer for package name ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    return v7

    :cond_7c
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_87} :catch_89

    move-result v5

    return v5

    :catch_89
    move-exception v1

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in method:removeAppFromContainer, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ad
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "removeAppFromContainer: POLICY_FAILED is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 v0, -0x2

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeSEContainer(I)I
    .registers 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v0, 0x1

    :cond_17
    iget-object v5, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_2d

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "activateDomain: License validation failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_2d
    if-eqz v0, :cond_3d

    :try_start_2f
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    :goto_36
    if-eqz v2, :cond_69

    invoke-virtual {v2, v4, v3, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I

    move-result v5

    return v5

    :cond_3d
    iget-object v5, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_43} :catch_45

    move-result-object v2

    goto :goto_36

    :catch_45
    move-exception v1

    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in removeSEContainer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    sget-object v5, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMService"

    const-string/jumbo v7, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5
.end method

.method public setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 10

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-string/jumbo v1, "setAMSLogLevel"

    :try_start_5
    iget-object v2, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setAMSLogLevel: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    return v2

    :cond_1b
    if-ltz p2, :cond_20

    const/4 v2, 0x2

    if-le p2, v2, :cond_2c

    :cond_20
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "Flag with a wrong value"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2c
    const-string/jumbo v2, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    return v4

    :catch_37
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAMSLogLevel failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public setAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 16

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "setAPMStatus"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "ContextInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    return v10

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/SEAMService;->enforceAPMPermission(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_20
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "apm_userId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "apm_userId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "apm_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "APM_EnforcedTable"

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    if-eqz v10, :cond_a8

    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_a3

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setAPMStatus, Put Admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", userID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_a3} :catch_ad
    .catchall {:try_start_20 .. :try_end_a3} :catchall_c2

    :cond_a3
    const/4 v10, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_a8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_ab
    const/4 v10, -0x1

    return v10

    :catch_ad
    move-exception v2

    :try_start_ae
    sget-boolean v10, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v10, :cond_bb

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Exception in setAPMStatus"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_ae .. :try_end_be} :catchall_c2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ab

    :catchall_c2
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public setAPMStatusAsUser(II)V
    .registers 24

    sget-boolean v18, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v18, :cond_31

    const-string/jumbo v18, "SEAMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setAPMStatusAsUser userId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v18, "apm_userId"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v18, "apm_userId"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v18, "apm_status"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "APM_StatusTable"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    const/4 v6, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v18, "apm_userId"

    const/16 v19, 0x0

    aput-object v18, v3, v19

    const-string/jumbo v18, "apm_status"

    const/16 v19, 0x1

    aput-object v18, v3, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "APM_StatusTable"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    const/4 v14, 0x0

    :try_start_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_16c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "persona"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_be} :catch_1a3

    :cond_be
    :goto_be
    const/4 v15, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v6, :cond_c9

    xor-int/lit8 v18, v16, 0x1

    if-eqz v18, :cond_1a9

    :cond_c9
    sget-boolean v18, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v18, :cond_d6

    const-string/jumbo v18, "SEAMService"

    const-string/jumbo v19, "Can not set APM status, cvList is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "APM_StatusTable"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    sget-boolean v18, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v18, :cond_109

    const-string/jumbo v18, "SEAMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setAPMStatusAsUser APM Status is set default, putValues: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    sget-boolean v18, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v18, :cond_152

    const-string/jumbo v18, "SEAMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "SystemProperties.set: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", off count: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    if-eqz v6, :cond_1f7

    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_1f7

    if-ne v9, v15, :cond_1f7

    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, p2

    if-eqz v18, :cond_1f7

    const-string/jumbo v18, "persist.app.permission.monitor"

    const-string/jumbo v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16b
    return-void

    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_be

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_be

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_184
    :goto_184
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_be

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v18, v0

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_19d} :catch_1a3

    move-result v18

    if-nez v18, :cond_184

    add-int/lit8 v14, v14, 0x1

    goto :goto_184

    :catch_1a3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_be

    :cond_1a9
    if-lez v9, :cond_109

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1af
    :goto_1af
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_109

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    :try_start_1bb
    const-string/jumbo v18, "apm_status"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c7} :catch_1d3

    move-result v17

    or-int p2, p2, v17

    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, v17

    if-eqz v18, :cond_1af

    add-int/lit8 v15, v15, 0x1

    goto :goto_1af

    :catch_1d3
    move-exception v10

    sget-boolean v18, Lcom/samsung/android/knox/devicesecurity/APMPolicy;->APM_DBG:Z

    if-eqz v18, :cond_1af

    const-string/jumbo v18, "SEAMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setAPMStatusAsUser, Can not get apm_status user Id : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1af

    :cond_1f7
    const/high16 v18, 0x4000000

    and-int v18, v18, p2

    if-eqz v18, :cond_201

    const/high16 v18, 0x4000000

    sub-int p2, p2, v18

    :cond_201
    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, p2

    if-eqz v18, :cond_20b

    const/high16 v18, 0x40000000    # 2.0f

    sub-int p2, p2, v18

    :cond_20b
    const-string/jumbo v18, "persist.app.permission.monitor"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16b
.end method

.method public setBBCFlag(Z)I
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v0, "setBBCFlag"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v3, "SEAMS"

    const-string/jumbo v4, "setBBCFlag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1a

    const/4 v3, -0x1

    return v3

    :cond_1a
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->setBBCFlag(Z)I

    return v5
.end method

.method public setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 9

    const-string/jumbo v1, "setSEAndroidLogDumpStateInclude"

    iget-object v2, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    return v2

    :cond_19
    :try_start_19
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_3d

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting dumpstate property to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    if-eqz p2, :cond_4a

    const-string/jumbo v2, "persist.security.mdm.SElogs"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    const/4 v2, 0x0

    return v2

    :cond_4a
    const-string/jumbo v2, "persist.security.mdm.SElogs"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_53} :catch_54

    goto :goto_48

    :catch_54
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method:setSEAndroidLogDumpStateInclude, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: POLICY_FAILED is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method public setSEContainerClipboardMode(II)I
    .registers 18

    const-string/jumbo v7, "setSEContainerClipboardMode"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {p0, v10, v8, v11, v12}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v11

    if-nez v11, :cond_23

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    const-string/jumbo v13, "setSEContainerClipboardMode: License validation failed"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x2

    return v11

    :cond_23
    if-ltz p2, :cond_2a

    const/4 v11, 0x1

    move/from16 v0, p2

    if-le v0, v11, :cond_4a

    :cond_2a
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    return v11

    :cond_4a
    iget-object v11, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-static {v12, v11}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    if-eqz v5, :cond_b9

    :try_start_53
    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    if-nez v6, :cond_80

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "containerID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mdmID is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    return v11

    :cond_80
    iget-object v11, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v12, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v11, v12, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_e5

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "containerID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not owned by caller:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    return v11

    :cond_b9
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    const-string/jumbo v13, "unable to get instance"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_c4} :catch_c6

    const/4 v11, -0x1

    return v11

    :catch_c6
    move-exception v4

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setSEContainerClipboardMode() failed with exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    return v11

    :cond_e5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    const-string/jumbo v13, "mode"

    invoke-virtual {v11, v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_16a

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-eqz v11, :cond_16a

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CHecking if entry already exists:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    :cond_14a
    :goto_14a
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setSecontainerClipboardMode: ret = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_18a

    const/4 v11, 0x0

    :goto_169
    return v11

    :cond_16a
    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    const-string/jumbo v13, "CvOld null or size 0"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_14a

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    goto :goto_14a

    :cond_18a
    const/4 v11, -0x1

    goto :goto_169
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 20

    const-string/jumbo v9, "updateAppToContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const/4 v11, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v12, v10, v1, v2}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "updateAppToContainer: License validation failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_23
    :try_start_23
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v0

    if-eqz v0, :cond_b6

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v11

    return v11

    :cond_41
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v0

    if-eqz v0, :cond_b6

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v11

    return v11

    :cond_5f
    const-string/jumbo v1, "SEAMS"

    const-string/jumbo v2, "updateAppToContainer"

    invoke-virtual {p0, v10, v12, v1, v2}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_90

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unauthorized call to updateAppToContainer for package name ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_90
    iget-object v1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v0

    if-eqz v0, :cond_b6

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_a5} :catch_a7

    move-result v11

    return v11

    :catch_a7
    move-exception v8

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "Exception in methodupdateAppToContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b6
    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "updateAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method
