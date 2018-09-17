.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$1;,
        Lcom/android/server/TimaService$2;,
        Lcom/android/server/TimaService$TimaServiceHandler;,
        Lcom/android/server/TimaService$TuiReceiver;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final ATTESTATION_BLOCK_UCM_PLUGIN_SIGNATURE:B = 0x47t

.field private static final ATTESTATION_BLOCK_UCM_VENDOR_ID:B = 0x46t

.field private static final ATTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_VERSION:Ljava/lang/String; = "3.0"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DEFAULT_DEVICE_CERTIFICATE_ALIAS:Ljava/lang/String; = "Samsung_default"

.field private static final ESE_CHIP_VENDOR:Ljava/lang/String; = "GEMALTO"

.field private static final ESE_CHIP_VERSION:Ljava/lang/String; = "UT5.0"

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mODEEnabled:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;

.field private timaThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/TimaService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TimaService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/TimaService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TimaService;->getCCMVersionBoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->setKapBuildProp()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->startAttestationBoot()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    iput-object v3, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    new-instance v2, Lcom/android/server/TimaService$1;

    invoke-direct {v2, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/TimaService$2;

    invoke-direct {v2, p0}, Lcom/android/server/TimaService$2;-><init>(Lcom/android/server/TimaService;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-direct {p0}, Lcom/android/server/TimaService;->registerTuiReceiver()V

    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "TimaService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_d2

    new-instance v2, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {p0}, Lcom/android/server/TimaService;->isDCMsupported()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "DCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    :cond_6b
    invoke-direct {p0}, Lcom/android/server/TimaService;->isESECOMMSupported()Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "ESECOMM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    :cond_77
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_restart_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_reset_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    :cond_bf
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    :cond_c2
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiverForKap()V

    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA: Start TimaService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    return-void

    :cond_d2
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "Failed getting looper for TimaServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_dc
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA: Start TimaService, only available gettimaversion"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private checkAttestationAccessPermission(I)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkAttestationAccessPermission : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2a

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2a
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    array-length v5, v4

    if-nez v5, :cond_54

    :cond_39
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get package name of callerUid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_54
    const/4 v5, 0x0

    :try_start_55
    aget-object v3, v4, v5

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-nez v5, :cond_84

    :cond_69
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get application info or seinfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_84
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Caller SEInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v6, "platform"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v6, "spay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c2

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string/jumbo v7, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_c2
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "request from platform signed app, so need to check license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_cb} :catch_fc

    :try_start_cb
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "checkAttestationAccessPermission"

    invoke-static {v5, v6}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/SecurityException; {:try_start_cb .. :try_end_d3} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_d3} :catch_fc

    return v9

    :catch_d4
    move-exception v2

    :try_start_d5
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Need to check license activation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/TimaService;->isActivated(I)Z
    :try_end_e1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d5 .. :try_end_e1} :catch_fc

    move-result v5

    if-eqz v5, :cond_fb

    :try_start_e4
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string/jumbo v7, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catch Ljava/lang/SecurityException; {:try_start_e4 .. :try_end_ef} :catch_f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_ef} :catch_fc

    return v9

    :catch_f0
    move-exception v2

    :try_start_f1
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f1 .. :try_end_fa} :catch_fc

    return v8

    :cond_fb
    return v8

    :catch_fc
    move-exception v1

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private static checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "TimaService"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p0, v2, v3, v1, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5f

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

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    :cond_5f
    return v4
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
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

.method private declared-synchronized getCCMVersionBoot()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "in getCCMVersionBoot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string/jumbo v1, "3.0"
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_46

    monitor-exit p0

    return-object v1

    :cond_30
    :try_start_30
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "getCCMVersionBoot - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_46

    monitor-exit p0

    return-object v4

    :cond_3b
    :try_start_3b
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "getCCMVersionBoot - ro.config.tima is not ture"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_46

    monitor-exit p0

    return-object v4

    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCollectorApkDigest(Ljava/lang/String;)[B
    .registers 11

    const/4 v8, 0x0

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculate APK Digest for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/TimaService;->getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_6a

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "APK file MessageDigest: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISV apkDigest size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return-object v0

    :cond_6a
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "ISV apkDigest is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_73} :catch_74

    goto :goto_69

    :catch_74
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v8
.end method

.method private getCollectorBlob(I)[B
    .registers 26

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_47

    const/16 v6, 0xa

    :goto_22
    const/16 v21, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4b

    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "This call was from System UID app."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    const/16 v21, 0x16

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_254

    return-object v18

    :cond_47
    move-object/from16 v0, v16

    array-length v6, v0

    goto :goto_22

    :cond_4b
    mul-int/lit8 v21, v6, 0x20

    add-int/lit8 v5, v21, 0x8

    new-array v4, v5, [B

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x1

    const/16 v22, 0x40

    aput-byte v22, v4, v21

    add-int/lit8 v10, v9, 0x1

    const/16 v21, 0x0

    aput-byte v21, v4, v9

    add-int/lit8 v9, v10, 0x1

    const/16 v21, 0x2

    aput-byte v21, v4, v10

    add-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v21, v6, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v9

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v4, v10

    add-int/lit8 v10, v9, 0x1

    const/16 v21, 0x41

    aput-byte v21, v4, v9

    add-int/lit8 v9, v10, 0x1

    mul-int/lit8 v21, v6, 0x20

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v10

    add-int/lit8 v10, v9, 0x1

    mul-int/lit8 v21, v6, 0x20

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v9

    const/4 v8, 0x0

    move v9, v10

    :goto_97
    if-ge v8, v6, :cond_e6

    aget-object v21, v16, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/TimaService;->getCollectorApkDigest(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_dc

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v2, v0, v4, v9, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v2

    move/from16 v21, v0

    add-int v9, v9, v21

    const-string/jumbo v21, "TimaService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ISV blob has been filled with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    :cond_dc
    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "ISV apkDigest is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    :cond_e6
    const-string/jumbo v21, "TimaService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ISV blob total size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v4

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_108
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_1fe

    :goto_10b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1, v6}, Lcom/android/server/TimaService;->writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1, v6}, Lcom/android/server/TimaService;->writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    const/16 v21, 0x0

    aget-object v21, v16, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1, v6}, Lcom/android/server/TimaService;->writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    const-string/jumbo v21, "com.samsung.ucs.ucsservice"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v20, :cond_1d5

    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "UCM ODE blob"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODESettingsConfiguration()Landroid/os/Bundle;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_23e

    const-string/jumbo v21, "odeEnabled"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_234

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    const-string/jumbo v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_21f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v15, v14

    const/16 v21, 0x46

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v21, v15, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v14, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_187
    const-string/jumbo v21, "odeSignature"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    if-eqz v12, :cond_22a

    array-length v13, v12

    const/16 v21, 0x47

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v21, v13, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v12, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1b5
    const-string/jumbo v21, "TimaService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ODESettingsConfiguration mODEEnabled : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TimaService;->mODEEnabled:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d5
    :goto_1d5
    :try_start_1d5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    const-string/jumbo v21, "TimaService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catchall {:try_start_1d5 .. :try_end_1f8} :catchall_24a

    if-eqz v3, :cond_1fd

    :try_start_1fa
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_1fd} :catch_248

    :cond_1fd
    :goto_1fd
    return-object v17

    :catch_1fe
    move-exception v7

    const-string/jumbo v21, "TimaService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception in getCollectorApkDigest : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    :cond_21f
    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "odeVendorId is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    :cond_22a
    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "odeSignature is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b5

    :cond_234
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    goto/16 :goto_1b5

    :cond_23e
    const-string/jumbo v21, "TimaService"

    const-string/jumbo v22, "odeData is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d5

    :catch_248
    move-exception v7

    goto :goto_1fd

    :catchall_24a
    move-exception v21

    if-eqz v3, :cond_250

    :try_start_24d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_250} :catch_251

    :cond_250
    :goto_250
    throw v21

    :catch_251
    move-exception v7

    goto :goto_250

    nop

    :array_254
    .array-data 1
        0x40t
        0x0t
        0x2t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x44t
        0x0t
        0x2t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
    .end array-data
.end method

.method private getDigestOfBytes([B)[B
    .registers 16

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_4
    const-string/jumbo v12, "SHA256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_10} :catch_85
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_6c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_3a
    .catchall {:try_start_4 .. :try_end_10} :catchall_9e

    :try_start_10
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v2, v11}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_15} :catch_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_cc
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_e7
    .catchall {:try_start_10 .. :try_end_15} :catchall_b4

    :try_start_15
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_cf
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_dc
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_eb
    .catchall {:try_start_15 .. :try_end_1a} :catchall_b7

    :cond_1a
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v12, -0x1

    if-ne v0, v12, :cond_1a

    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_24} :catch_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_24} :catch_d3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_f0
    .catchall {:try_start_1a .. :try_end_24} :catchall_bb

    move-result-object v12

    if-eqz v6, :cond_2a

    :try_start_27
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    :cond_2a
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_2f
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-object v12

    :catch_35
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catch_3a
    move-exception v9

    :goto_3b
    :try_start_3b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_9e

    if-eqz v5, :cond_43

    :try_start_40
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_43
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_48
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-object v13

    :catch_4e
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_53
    move-exception v8

    :goto_54
    :try_start_54
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_9e

    if-eqz v5, :cond_5c

    :try_start_59
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_5c
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_61
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_66} :catch_67

    goto :goto_4d

    :catch_67
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_6c
    move-exception v7

    :goto_6d
    :try_start_6d
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_9e

    if-eqz v5, :cond_75

    :try_start_72
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_75
    if-eqz v3, :cond_7a

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_7a
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_4d

    :catch_80
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_85
    move-exception v10

    :goto_86
    :try_start_86
    invoke-virtual {v10}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_9e

    if-eqz v5, :cond_8e

    :try_start_8b
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_8e
    if-eqz v3, :cond_93

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_93
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_98} :catch_99

    goto :goto_4d

    :catch_99
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catchall_9e
    move-exception v12

    :goto_9f
    if-eqz v5, :cond_a4

    :try_start_a1
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    :cond_a4
    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_a9
    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ae} :catch_af

    :cond_ae
    :goto_ae
    throw v12

    :catch_af
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ae

    :catchall_b4
    move-exception v12

    move-object v1, v2

    goto :goto_9f

    :catchall_b7
    move-exception v12

    move-object v1, v2

    move-object v5, v6

    goto :goto_9f

    :catchall_bb
    move-exception v12

    move-object v1, v2

    move-object v3, v4

    move-object v5, v6

    goto :goto_9f

    :catch_c0
    move-exception v10

    move-object v1, v2

    goto :goto_86

    :catch_c3
    move-exception v10

    move-object v1, v2

    move-object v5, v6

    goto :goto_86

    :catch_c7
    move-exception v10

    move-object v1, v2

    move-object v3, v4

    move-object v5, v6

    goto :goto_86

    :catch_cc
    move-exception v7

    move-object v1, v2

    goto :goto_6d

    :catch_cf
    move-exception v7

    move-object v1, v2

    move-object v5, v6

    goto :goto_6d

    :catch_d3
    move-exception v7

    move-object v1, v2

    move-object v3, v4

    move-object v5, v6

    goto :goto_6d

    :catch_d8
    move-exception v8

    move-object v1, v2

    goto/16 :goto_54

    :catch_dc
    move-exception v8

    move-object v1, v2

    move-object v5, v6

    goto/16 :goto_54

    :catch_e1
    move-exception v8

    move-object v1, v2

    move-object v3, v4

    move-object v5, v6

    goto/16 :goto_54

    :catch_e7
    move-exception v9

    move-object v1, v2

    goto/16 :goto_3b

    :catch_eb
    move-exception v9

    move-object v1, v2

    move-object v5, v6

    goto/16 :goto_3b

    :catch_f0
    move-exception v9

    move-object v1, v2

    move-object v3, v4

    move-object v5, v6

    goto/16 :goto_3b
.end method

.method private getDigestOfFile(Ljava/lang/String;)[B
    .registers 15

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_3
    const-string/jumbo v10, "SHA256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_f} :catch_70
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_34
    .catchall {:try_start_3 .. :try_end_f} :catchall_84

    :try_start_f
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v8, v9}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_14} :catch_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_a3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_b1
    .catchall {:try_start_f .. :try_end_14} :catchall_95

    const/16 v10, 0x2000

    :try_start_16
    new-array v0, v10, [B

    :cond_18
    array-length v10, v0

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11, v10}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v10

    if-gtz v10, :cond_18

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_23} :catch_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_23} :catch_a6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_b4
    .catchall {:try_start_16 .. :try_end_23} :catchall_98

    move-result-object v10

    if-eqz v2, :cond_29

    :try_start_26
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    :cond_29
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-object v10

    :catch_2f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_34
    move-exception v5

    :goto_35
    :try_start_35
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_84

    if-eqz v1, :cond_3d

    :try_start_3a
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    :cond_3d
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-object v12

    :catch_43
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_48
    move-exception v4

    :goto_49
    :try_start_49
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_84

    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    :cond_51
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_57

    goto :goto_42

    :catch_57
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_5c
    move-exception v3

    :goto_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_84

    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    :cond_65
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_42

    :catch_6b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_70
    move-exception v6

    :goto_71
    :try_start_71
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_84

    if-eqz v1, :cond_79

    :try_start_76
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    :cond_79
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7e} :catch_7f

    goto :goto_42

    :catch_7f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catchall_84
    move-exception v10

    :goto_85
    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    :cond_8a
    if-eqz v7, :cond_8f

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_90

    :cond_8f
    :goto_8f
    throw v10

    :catch_90
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    :catchall_95
    move-exception v10

    move-object v7, v8

    goto :goto_85

    :catchall_98
    move-exception v10

    move-object v7, v8

    move-object v1, v2

    goto :goto_85

    :catch_9c
    move-exception v6

    move-object v7, v8

    goto :goto_71

    :catch_9f
    move-exception v6

    move-object v7, v8

    move-object v1, v2

    goto :goto_71

    :catch_a3
    move-exception v3

    move-object v7, v8

    goto :goto_5d

    :catch_a6
    move-exception v3

    move-object v7, v8

    move-object v1, v2

    goto :goto_5d

    :catch_aa
    move-exception v4

    move-object v7, v8

    goto :goto_49

    :catch_ad
    move-exception v4

    move-object v7, v8

    move-object v1, v2

    goto :goto_49

    :catch_b1
    move-exception v5

    move-object v7, v8

    goto :goto_35

    :catch_b4
    move-exception v5

    move-object v7, v8

    move-object v1, v2

    goto/16 :goto_35
.end method

.method private getImei()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "INVALID IMEI"

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "INVALID IMEI"

    :cond_27
    return-object v0
.end method

.method private getKapState()Z
    .registers 11

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_3
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v7, "kapstate"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "knox_active_protection"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3d

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    if-eqz v1, :cond_3d

    const-string/jumbo v7, "kapstate"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_5a

    move-result v7

    if-ne v7, v9, :cond_58

    const/4 v6, 0x1

    :cond_3d
    :goto_3d
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getKapState ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_58
    const/4 v6, 0x0

    goto :goto_3d

    :catch_5a
    move-exception v2

    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getKapState failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private getTimaStatus()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: in getTimaStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .registers 7

    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "persist.sys.kap.date"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", oldBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", license: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "TimaService"

    const-string/jumbo v4, "handleBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v3

    if-eqz v3, :cond_68

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    :cond_68
    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v3, :cond_79

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    return-void

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79
.end method

.method private initCCMDatabase()Z
    .registers 8

    const/4 v6, 0x1

    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_2e
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_52

    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_52
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm/key_db"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6b} :catch_6c

    :goto_6b
    return v6

    :catch_6c
    move-exception v3

    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "Exception in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b
.end method

.method private isActivated(I)Z
    .registers 12

    const/4 v9, 0x0

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    array-length v6, v5

    if-nez v6, :cond_32

    :cond_17
    const-string/jumbo v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to get package name of callerUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_32
    const/4 v3, 0x0

    :goto_33
    array-length v6, v5

    if-ge v3, v6, :cond_7c

    aget-object v4, v5, v3

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4c

    :cond_40
    const-string/jumbo v6, "TimaService"

    const-string/jumbo v7, "packageName is empty, so continue..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_4c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "LICENSE"

    invoke-virtual {v2, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_49

    const-string/jumbo v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is activated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_7c
    return v9
.end method

.method private isDCMsupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private isESECOMMSupported()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "NXP"

    const-string/jumbo v2, "GEMALTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "OBERTHUR"

    const-string/jumbo v2, "GEMALTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "GEMALTO"

    const-string/jumbo v2, "GEMALTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_25
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "ro.security.ese.cosname --> UT5.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PEARL4.0"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, "JCOP3.3"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, "JCOP4.0"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, "UT2.0"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, "UT3.0"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, "UT5.0"

    const-string/jumbo v2, "UT5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_76
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "ESECOMM is supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_80
    return v0
.end method

.method private declared-synchronized isKapOnInternal()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKapSupported()Z
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.config.kap"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private isLicenseActive()Z
    .registers 11

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_3
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v7, "licensestate"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "knox_active_protection"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3d

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    if-eqz v1, :cond_3d

    const-string/jumbo v7, "licensestate"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_5a

    move-result v7

    if-ne v7, v9, :cond_58

    const/4 v6, 0x1

    :cond_3d
    :goto_3d
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLicenseActive ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_58
    const/4 v6, 0x0

    goto :goto_3d

    :catch_5a
    move-exception v2

    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLicenseActive failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    :try_start_8
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_11

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x1

    return v3

    :cond_10
    return v4

    :catch_11
    move-exception v0

    return v4
.end method

.method private isZeroModel()Z
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.config.kap_default_on"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .registers 7

    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.klmsagent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6f

    const-string/jumbo v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_6f
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_b3

    const-string/jumbo v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_b3
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .registers 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-gez v1, :cond_16

    :cond_11
    invoke-static {p1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    :cond_16
    if-nez v0, :cond_11

    return v0
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerBroadcastReceiverForKap()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTuiReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1}, Lcom/android/server/TimaService$TuiReceiver;-><init>()V

    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->notifyTLCServiceStart(Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized setKapBuildProp()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "in setKapBuildProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "persist.sys.kap.date"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "KAP_SAVED_BUILD_FINGERPRINT is set to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAttestationBoot()V
    .registers 10

    const/16 v8, 0x20

    monitor-enter p0

    :try_start_3
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "in startAttestationBoot"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_45

    const/16 v5, 0x20

    new-array v2, v5, [B

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v8, :cond_31

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_31
    invoke-virtual {p0, v2, v4}, Lcom/android/server/TimaService;->attestation([BI)[B

    move-result-object v0

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    if-nez v0, :cond_43

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Blob from TIMA is invalid"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_4f

    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "startAttestationBoot - disabled attestation"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4f

    goto :goto_43

    :catchall_4f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method static native timaAttestation([B[B[BI)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method private declared-synchronized timaSetLicenseStatusInternal(Z)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/TimaService;->timaSetLicenseStatus(Z)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    if-eqz p2, :cond_55

    move v7, p1

    :goto_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState - isKapOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isUserSet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_82

    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_44
    const-string/jumbo v9, "knox_active_protection"

    invoke-virtual {v4, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_8e
    .catchall {:try_start_2 .. :try_end_4a} :catchall_b8

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4f
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_54
    :goto_54
    return-void

    :cond_55
    :try_start_55
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v9, "/dev/knox_kap"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_8e
    .catchall {:try_start_55 .. :try_end_5d} :catchall_b8

    if-eqz v6, :cond_d6

    :try_start_5f
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_cb
    .catchall {:try_start_5f .. :try_end_64} :catchall_c4

    if-eqz v1, :cond_d2

    :try_start_66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d2

    const-string/jumbo v9, "11"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7e

    const-string/jumbo v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7b} :catch_ce
    .catchall {:try_start_66 .. :try_end_7b} :catchall_c7

    move-result v9

    if-eqz v9, :cond_d2

    :cond_7e
    const/4 v7, 0x1

    move-object v0, v1

    move-object v5, v6

    goto :goto_d

    :cond_82
    :try_start_82
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8d} :catch_8e
    .catchall {:try_start_82 .. :try_end_8d} :catchall_b8

    goto :goto_44

    :catch_8e
    move-exception v3

    :goto_8f
    :try_start_8f
    const-string/jumbo v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8f .. :try_end_ad} :catchall_b8

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_b2
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_54

    :catchall_b8
    move-exception v9

    :goto_b9
    if-eqz v0, :cond_be

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_be
    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_c3
    throw v9

    :catchall_c4
    move-exception v9

    move-object v5, v6

    goto :goto_b9

    :catchall_c7
    move-exception v9

    move-object v0, v1

    move-object v5, v6

    goto :goto_b9

    :catch_cb
    move-exception v3

    move-object v5, v6

    goto :goto_8f

    :catch_ce
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_8f

    :cond_d2
    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_d

    :cond_d6
    move-object v5, v6

    goto/16 :goto_d
.end method

.method private updateLicenseState(Z)V
    .registers 8

    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_20

    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_19
    const-string/jumbo v3, "knox_active_protection"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    :goto_1f
    return-void

    :cond_20
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_19

    :catch_2c
    move-exception v1

    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLicenseState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private validateRequest(II)Z
    .registers 5

    const/4 v0, 0x1

    const v1, 0xc350

    if-eq p1, v1, :cond_d

    const v1, 0xc351

    if-eq p1, v1, :cond_d

    :goto_b
    const/4 v0, 0x0

    :cond_c
    return v0

    :cond_d
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_c

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_c

    goto :goto_b
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .registers 14

    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "TimaService.writeCertificateDigests()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x44

    :try_start_b
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_30

    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "failed to get signatures"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    array-length v8, v6

    const/16 v9, 0xa

    if-le v8, v9, :cond_68

    const/16 v0, 0xa

    :goto_37
    if-nez p3, :cond_3a

    const/4 v0, 0x0

    :cond_3a
    ushr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v8, v0

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    mul-int/lit8 v1, v0, 0x20

    const/16 v8, 0x45

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v8, v1

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :goto_56
    if-ge v3, v0, :cond_7b

    aget-object v8, v6, v3

    if-nez v8, :cond_6a

    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "signature is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_68
    array-length v0, v6

    goto :goto_37

    :cond_6a
    aget-object v8, v6, v3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/TimaService;->getDigestOfBytes([B)[B

    move-result-object v7

    if-eqz v7, :cond_65

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_79} :catch_7c

    goto :goto_65

    :catch_7a
    move-exception v2

    :cond_7b
    :goto_7b
    return-void

    :catch_7c
    move-exception v4

    goto :goto_7b
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 12

    const/16 v7, 0x32

    :try_start_2
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TimaService.writePackageNames()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x42

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p3, :cond_45

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v7, :cond_39

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_2d
    add-int/lit8 v4, p3, -0x1

    if-ge v0, v4, :cond_36

    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_39
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2d

    :catch_43
    move-exception v1

    :goto_44
    return-void

    :cond_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v3, v4

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c5} :catch_43

    goto/16 :goto_44
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 12

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TimaService.writePackageVersions()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x43

    :try_start_b
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    mul-int/lit8 v3, p3, 0x4

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v3

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, p3, :cond_6d

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, p2, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TimaService.writePackageVersions() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " versionCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_69} :catch_6c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :catch_6c
    move-exception v0

    :cond_6d
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "Device_Default"
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e

    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/prov_data/dcm/dcm.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_51

    const-string/jumbo v5, "DCM"

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->restartTLCService(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate regeneration success!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_43
    .catchall {:try_start_4 .. :try_end_37} :catchall_4e

    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate regeneration failed!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43
    .catchall {:try_start_39 .. :try_end_42} :catchall_4e

    goto :goto_37

    :catch_43
    move-exception v3

    :try_start_44
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Could not get DCM certificate"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    goto :goto_37

    :catchall_4e
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_51
    :try_start_51
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_43
    .catchall {:try_start_51 .. :try_end_5a} :catchall_4e

    goto :goto_37
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2d

    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    move-result v0

    monitor-exit p0

    return v0

    :cond_2b
    monitor-exit p0

    return v2

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2d

    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    move-result v0

    monitor-exit p0

    return v0

    :cond_2b
    monitor-exit p0

    return v2

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_f

    if-nez p2, :cond_1a

    :cond_f
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_2f

    monitor-exit p0

    return-object v2

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2d
    monitor-exit p0

    return-object v2

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2e

    monitor-exit p0

    return-wide v2

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2e

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_2c
    monitor-exit p0

    return-wide v2

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init(Z)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    move-result v0

    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_f

    if-nez p2, :cond_1a

    :cond_f
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_31

    monitor-exit p0

    return v2

    :cond_1a
    if-eqz p4, :cond_f

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    move-result v0

    monitor-exit p0

    return v0

    :cond_2f
    monitor-exit p0

    return v2

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_40

    monitor-exit p0

    return-object v3

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_40

    monitor-exit p0

    return-object v1

    :cond_3e
    monitor-exit p0

    return-object v3

    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2d

    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    move-result v0

    monitor-exit p0

    return v0

    :cond_2b
    monitor-exit p0

    return v2

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_2d

    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    move-result v0

    monitor-exit p0

    return v0

    :cond_2b
    monitor-exit p0

    return v2

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_f

    if-nez p2, :cond_1a

    :cond_f
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_2f

    monitor-exit p0

    return-object v2

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2f

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2d
    monitor-exit p0

    return-object v2

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2e

    monitor-exit p0

    return-wide v2

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2e

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_2c
    monitor-exit p0

    return-wide v2

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    move-result v0

    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_f

    if-nez p2, :cond_1a

    :cond_f
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_31

    monitor-exit p0

    return v2

    :cond_1a
    if-eqz p4, :cond_f

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    move-result v0

    monitor-exit p0

    return v0

    :cond_2f
    monitor-exit p0

    return v2

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: KeyStore3_saw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_40

    monitor-exit p0

    return-object v3

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_40

    monitor-exit p0

    return-object v1

    :cond_3e
    monitor-exit p0

    return-object v3

    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([BI)[B
    .registers 14

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TIMA: attestation for callerUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    if-nez v7, :cond_2b

    const-string/jumbo v7, "TimaService"

    const-string/jumbo v8, "Context is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_a2

    monitor-exit p0

    return-object v10

    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-eq v7, p2, :cond_71

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "attestation"

    invoke-static {v7, v8}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I

    :cond_39
    const-string/jumbo v7, "TimaService"

    const-string/jumbo v8, "TimaService.attestation()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "1"

    const-string/jumbo v8, "ro.config.tima"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v5, -0x1

    if-eqz v6, :cond_a5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_a2

    move-result-wide v2

    :try_start_5a
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->getCollectorBlob(I)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/TimaService;->getImei()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget v5, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    invoke-static {p1, v0, v4, v5}, Lcom/android/server/TimaService;->timaAttestation([B[B[BI)[B
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6b} :catch_79
    .catchall {:try_start_5a .. :try_end_6b} :catchall_9d

    move-result-object v7

    :try_start_6c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a2

    monitor-exit p0

    return-object v7

    :cond_71
    :try_start_71
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->checkAttestationAccessPermission(I)Z
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_a2

    move-result v7

    if-nez v7, :cond_39

    monitor-exit p0

    return-object v10

    :catch_79
    move-exception v1

    :try_start_7a
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in attestation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_9d

    :try_start_98
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_a2

    monitor-exit p0

    return-object v10

    :catchall_9d
    move-exception v7

    :try_start_9e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_a5
    :try_start_a5
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TIMA: attestation is not support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_a2

    monitor-exit p0

    return-object v10
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_34
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "tima"

    const-string/jumbo v6, "ccmRegisterForDefaultCertificate"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9d

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

    const-string/jumbo v3, "ccmRegisterForDefaultCertificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tima"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9a
    .catchall {:try_start_2 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_9d
    monitor-exit p0

    return v7

    :cond_9f
    const/4 v2, -0x1

    monitor-exit p0

    return v2
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: checkEvent, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: checkHistory, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 24

    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_21

    return-void

    :cond_21
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    sget v20, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_34

    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_34
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Reporting violation to ISL"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_52} :catch_c6

    :cond_52
    :goto_52
    const-string/jumbo v18, " "

    :try_start_55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_d1

    move-result-object v18

    :goto_61
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v19, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_a7

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_dc

    :cond_a7
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_c6
    move-exception v7

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_d1
    move-exception v9

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "toLocalString() exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_dc
    const-string/jumbo v19, "0"

    const-string/jumbo v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_115

    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_115
    const-string/jumbo v19, "1"

    const-string/jumbo v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14e

    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA Internal Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14e
    const-string/jumbo v19, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    const-string/jumbo v11, ""

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_172

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_191

    :cond_172
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_191
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "MSG="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v19, "lkm_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20f

    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1c3
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyyMMddHHmmss"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :try_start_1d8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string/jumbo v20, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1e2} :catch_262

    :goto_1e2
    :try_start_1e2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string/jumbo v20, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1ec} :catch_26e

    :goto_1ec
    :try_start_1ec
    new-instance v6, Ljava/io/File;

    const-string/jumbo v19, "/data/misc/tima"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_27e

    const/16 v19, 0x0

    array-length v0, v10

    move/from16 v20, v0

    :goto_201
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_27e

    aget-object v17, v10, v19

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_20c} :catch_27a

    add-int/lit8 v19, v19, 0x1

    goto :goto_201

    :cond_20f
    const-string/jumbo v19, "seandroid_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_227

    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c3

    :cond_227
    const-string/jumbo v19, "kern_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23f

    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c3

    :cond_23f
    const-string/jumbo v19, "kern_metadata_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_258

    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1c3

    :cond_258
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_262
    move-exception v8

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Failed to create /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e2

    :catch_26e
    move-exception v8

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ec

    :catch_27a
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/misc/tima/tima.log."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :try_start_294
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "chmod 640 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_294 .. :try_end_2b3} :catch_2c1

    :goto_2b3
    sget-boolean v19, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v19, :cond_2e1

    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2c1
    move-exception v8

    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to change permissions of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b3

    :cond_2e1
    const-string/jumbo v19, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v19, "TIMA_LOG_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v19

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v21, "com.samsung.android.sm"

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/android/server/TimaService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_33f

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_33e
    return-void

    :cond_33f
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "com.android.settings"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_33e
.end method

.method public declared-synchronized dumpLog()[B
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: timaDumpLog is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA: getDeviceID"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_23
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA: in getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v0

    :cond_17
    const-string/jumbo v1, "F0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "Fake Tima enabled, -T option is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "3.0"
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_44

    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    const-string/jumbo v1, "F3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "Fake Tima enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "3.0"
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_44

    goto :goto_2c

    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTuiVersion()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .registers 13

    const-string/jumbo v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", licenseStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_fc

    :cond_2d
    :goto_2d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_30
    return-void

    :pswitch_31
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_2d

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_49

    goto :goto_2d

    :catch_49
    move-exception v1

    const-string/jumbo v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :pswitch_69
    const/4 v5, 0x0

    :try_start_6a
    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_2d

    :pswitch_83
    const-string/jumbo v5, "ro.build.date"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "persist.sys.kap.date"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_de

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_c6

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_b4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    :cond_b4
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    :cond_b8
    :goto_b8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string/jumbo v5, "persist.sys.kap.date"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_c6
    const-string/jumbo v5, "security.knox_kap_mode"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    goto :goto_b8

    :cond_de
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_f7

    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_f7

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    :cond_f7
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_fb} :catch_49

    goto :goto_b8

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_31
        :pswitch_69
        :pswitch_83
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .registers 5

    const/4 v3, 0x1

    const-string/jumbo v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TimaService;->iBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsBuildUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v0, :cond_3c

    return v3

    :cond_3c
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v0, :cond_47

    sget-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_47

    return v3

    :cond_47
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized keystoreInit()I
    .registers 2

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 2

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TIMA3: in loadTlcServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_3d

    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TIMA3: tlc_server already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_85

    monitor-exit p0

    return v8

    :cond_3d
    if-eqz v0, :cond_88

    :try_start_3f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/system/bin/tlc_server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_7c} :catch_7e
    .catchall {:try_start_3f .. :try_end_7c} :catchall_85

    :goto_7c
    monitor-exit p0

    return v8

    :catch_7e
    move-exception v1

    :try_start_7f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_88
    :try_start_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.security.tlc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " done : setprop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_88 .. :try_end_c7} :catchall_85

    goto :goto_7c

    :cond_c8
    const/4 v5, -0x1

    monitor-exit p0

    return v5
.end method

.method public declared-synchronized loadTui()I
    .registers 2

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKapMode(ZZ)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_9a

    :try_start_6
    const-string/jumbo v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode - isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", notifyKapState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_57

    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    if-nez p2, :cond_4e

    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    if-eqz p2, :cond_53

    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    :cond_53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_56
    return-void

    :cond_57
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v1

    if-eqz v1, :cond_90

    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6f} :catch_70

    goto :goto_43

    :catch_70
    move-exception v0

    const-string/jumbo v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_90
    :try_start_90
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_70

    goto :goto_66

    :cond_9a
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v4, "No Permission : setKapMode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiGetCerts()[B
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .registers 6

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .registers 7

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized unloadTui()I
    .registers 2

    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
