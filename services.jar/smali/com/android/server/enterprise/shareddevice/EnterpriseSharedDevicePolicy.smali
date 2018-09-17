.class public Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.super Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;
.source "EnterpriseSharedDevicePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final KNOX_VERSION_SUPPORT_SD_APP_CONFIG:I

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final PERMISSION_SHARED_DEVICES:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SHARED_DEVICE"

.field private static final SD_KEYGUARD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard"

.field private static final SD_KEYGUARD_RECEIVER_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardReceiver"

.field private static final SD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_STATUS:Ljava/lang/String; = "shared_device_status"

.field public static final SHARED_PWD:Ljava/lang/String; = "SharedDevice"

.field private static final TAG:Ljava/lang/String;

.field private static sContextStatic:Landroid/content/Context;

.field private static sSharedDevicesStateInternal:Z


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mELM:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxAttempts:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mSDAgentInstallerPackageUid:I

.field private mSDAgentMDMComponentName:Landroid/content/ComponentName;

.field private mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

.field private mSharedDevicesState:Z

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mTimaVersion:Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;

.field private mWhere:Landroid/content/ContentValues;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Lcom/samsung/android/knox/license/LicenseInfo;)[Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteAndroidKeystoreCertificates()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyRuntimePermissionsToSDAgent()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSDAgentMDMPackageUid()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->showProgressDialog(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->KNOX_VERSION_SUPPORT_SD_APP_CONFIG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iput-boolean v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMaxAttempts:I

    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TIMA_SERVICE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicesState()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    :cond_44
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    if-eqz v7, :cond_57

    :try_start_51
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_57} :catch_9f

    :cond_57
    :goto_57
    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tima Version:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Registering broadcast SDAgentPackageStateReceiver!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_9f
    move-exception v6

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method

.method private applyPolicies()V
    .registers 6

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Applying Policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_9
    iget v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMaxAttempts:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPasswordPolicy(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_34

    move-result v3

    and-int v0, v2, v3

    :goto_1a
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Policies Applied? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_34
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private applyRuntimePermissionsToSDAgent()I
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->applyRuntimePermissions(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    move-result v0

    packed-switch v0, :pswitch_data_52

    const/4 v0, -0x3

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "permissions not applied"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return v0

    :pswitch_23
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Application not compiled with M"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_2c
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed because of invalid input"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_35
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed because of invalid signature"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_3e
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed for an unknown reason"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    goto :goto_22

    :pswitch_48
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Runtime permissions applied successfully"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_22

    :pswitch_data_52
    .packed-switch -0x4
        :pswitch_23
        :pswitch_35
        :pswitch_3e
        :pswitch_2c
        :pswitch_48
    .end packed-switch
.end method

.method private static checkCallerUID()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkPackageSignature()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static checkPackageSignature()Z
    .registers 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    if-nez v2, :cond_6

    return v5

    :cond_6
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    :cond_3a
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sContextStatic:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4b

    const/4 v1, 0x1

    :cond_4a
    :goto_4a
    return v1

    :cond_4b
    const/4 v1, 0x0

    goto :goto_4a
.end method

.method private checkSDSignature()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2b

    const/4 v0, 0x1

    :goto_11
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Is SD Agent platform signed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private clearAllNotifications(I)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v1, 0x0

    :try_start_5
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_1a
    .catchall {:try_start_5 .. :try_end_15} :catchall_28

    :cond_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    :catch_1a
    move-exception v0

    :try_start_1b
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to clear notification bar"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_28

    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_28
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearClipboardData()Z
    .registers 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearClipboardData in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getDeviceSecurityPolicy()Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->clearClipboardData()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    move-result v1

    :goto_11
    return v1

    :catch_12
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private clearRecentTasks()Z
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cleartask in Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    const/4 v1, 0x1

    return v1

    :catch_13
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private deleteAndroidKeystoreCertificates()Z
    .registers 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteAndroidKeystoreCertificates in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Android Keystore Reset Successful!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return v1

    :cond_23
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Android Keystore Reset Failed!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    goto :goto_22

    :catch_2c
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method private deleteUserInstalledCerts(IZ)Z
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v6

    if-eqz v6, :cond_a4

    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v7, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    :cond_24
    if-nez p2, :cond_61

    if-eqz v5, :cond_a4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a4

    const/4 v3, 0x0

    :goto_2f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a4

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychain user"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_61
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->getCertificateAliases()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a4

    const/4 v3, 0x0

    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a4

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "all certs"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9c} :catch_a0

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :catch_a0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a4
    return v4
.end method

.method private disableSDKeyguard()V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableSDKeyguard"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shared_device_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsDataForPersona(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v6

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private disableSDKeyguardOnBoot()V
    .registers 7

    const/4 v2, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableSDKeyguardOnBoot"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_23

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_23
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceKeyguardInstalled()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_33
    return-void
.end method

.method private enableSD()V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enabling Shared Devices!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shared_device_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPolicies()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSDKeyguard()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->startSDKeyguard()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sendNotificationToKLMSAgent()V

    return-void
.end method

.method private enableSDKeyguard()V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsDataForPersona(I)V

    return-void
.end method

.method private findSDAgentMDMComponentName()Landroid/content/ComponentName;
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSDAgentMDMPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findSDAgentMDMComponentName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4a
    return-object v7
.end method

.method private forceStopApp(Ljava/lang/String;I)Z
    .registers 8

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopApp is called"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14

    const/4 v1, 0x1

    :cond_13
    :goto_13
    return v1

    :catch_14
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "RemoteException on force stop"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_11

    :try_start_4
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_14

    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private getDeviceSecurityPolicy()Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceSecurityPolicy()Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDeviceSecurityPolicy:Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getELM()Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mELM:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    return-object v0
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getKeyStore()Landroid/security/KeyStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    return-object v0
.end method

.method private getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    return-object v0
.end method

.method private getSDAgentMDMPackageName()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "SHAREDDEVICE"

    const-string/jumbo v6, "adminPkg"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDAgentMDMPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_8d

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSDAgentMDMPackageNameByPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8d

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSDAgentMDMPackageUid()I

    move-result v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v5, "adminPkg"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    const-string/jumbo v5, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "SHAREDDEVICE"

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Put Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_8e

    :cond_8d
    :goto_8d
    return-object v1

    :catch_8e
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method private getSDAgentMDMPackageNameByPolicy()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string/jumbo v3, "MDMPkgName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v3, "MDMPkgName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-result-object v2

    :cond_21
    return-object v2

    :catch_22
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSDAgentMDMPackageUid()I
    .registers 9

    const v2, 0x7fffffff

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "SHAREDDEVICE"

    const-string/jumbo v6, "adminUid"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDAgentMDMPackageUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_ad

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSDAgentMDMPackageNameByPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_ad

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v5, "adminPkg"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    const-string/jumbo v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "SHAREDDEVICE"

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Put Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDAgentMDMPackageUid: mdmPkgUid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ad} :catch_b3

    :cond_ad
    :goto_ad
    if-gez v2, :cond_b2

    const v2, 0x7fffffff

    :cond_b2
    return v2

    :catch_b3
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad
.end method

.method private getSharedDevicesState()Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSharedDevicesState in Service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string/jumbo v4, "SHAREDDEVICE"

    const-string/jumbo v5, "enabled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_34

    const/4 v2, 0x1

    :cond_34
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4e

    :goto_4d
    return v2

    :catch_4e
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private getTimaInstance()Lcom/android/server/pm/TimaHelper;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v1, :cond_13

    :try_start_5
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getTimaInstance success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_16

    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method private isActiveMDMPresent()Z
    .registers 12

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isConfiguredByKC()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    return v6

    :cond_9
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getELM()Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1f

    return v3

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

    if-eqz v6, :cond_91

    if-eqz v2, :cond_91

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Checking license for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Lcom/samsung/android/knox/license/LicenseInfo;

    array-length v9, v8

    move v6, v7

    :goto_67
    if-ge v6, v9, :cond_8f

    aget-object v4, v8, v6

    invoke-virtual {v4}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_92

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is Active MDM!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_8f
    if-eqz v3, :cond_36

    :cond_91
    return v3

    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_67
.end method

.method private isConfiguredByKC()Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicePolicies()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string/jumbo v2, "NoLicenseCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "NoLicenseCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConfiguredByKC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return v1
.end method

.method public static isSharedDeviceEnabledInternal()Z
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private isSharedDeviceKeyguardInstalled()Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 v1, 0x1

    return v1

    :catch_e
    move-exception v0

    return v4
.end method

.method private removeAccounts(I)Z
    .registers 11

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v5, 0x0

    return v5

    :cond_b
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_11
    if-eqz v0, :cond_41

    array-length v5, v0

    if-ge v3, v5, :cond_41

    aget-object v5, v0, v3

    invoke-virtual {v1, v5, v8, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccounts --- Account deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v5

    and-int/2addr v4, v5

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_41
    return v4
.end method

.method private removeAppliedPolicies()V
    .registers 6

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Removing applied policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_37

    move-result v3

    and-int v1, v2, v3

    :goto_1d
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Policies Removed? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_37
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private resetTheme()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "current_sec_active_themepackage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.themecenter.APPLY_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.themecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendNotificationToKLMSAgent()V
    .registers 6

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Sending Broadcast to KLMSAgent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.action.knox.B2B_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.klmsagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "musd"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.sec.knox.permission.KLMS_AGENT"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send intent to KLMS Agent. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Creating ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const v2, 0x10402fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Displaying ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private startSDKeyguard()V
    .registers 5

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Launching SD Keyguard!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "SharedDeviceKeyguardEventFlag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateEnterpriseDBForEnableSharedDevice()Z
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v8, :cond_a7

    const/16 v3, 0x3e8

    const/4 v7, 0x0

    :try_start_9
    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-nez v8, :cond_16

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "default admin uid already exist"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_37
    if-nez v7, :cond_87

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "adminName"

    const-string/jumbo v9, "SD-System"

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "canRemove"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ADMIN_INFO"

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_7f

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "insert admin info table - DB operation failed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_7f
    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "success default admin uid"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_87} :catch_88

    :cond_87
    return v13

    :catch_88
    move-exception v6

    sget-object v8, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to update default admin uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_a7
    return v12
.end method


# virtual methods
.method public applyPasswordPolicy(I)Z
    .registers 8

    const/4 v5, 0x5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getSharedDevicePolicies()Landroid/os/Bundle;

    move-result-object v0

    sget v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->KNOX_VERSION_SUPPORT_SD_APP_CONFIG:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_48

    if-eqz v0, :cond_48

    const-string/jumbo v4, "MaxFailAttempts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "MaxFailAttempts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_48

    const-string/jumbo v4, "MaxFailAttempts"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v5, :cond_48

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    const-string/jumbo v5, "MaxFailAttempts"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v1

    :goto_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_47
    return v1

    :cond_48
    sget v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->KNOX_VERSION_SUPPORT_SD_APP_CONFIG:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-lez p1, :cond_5d

    if-gt p1, v5, :cond_5d

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v1

    goto :goto_44

    :cond_5d
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v1

    goto :goto_44
.end method

.method public cancelProgressDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mDialog:Landroid/app/ProgressDialog;

    :cond_14
    return-void
.end method

.method public checkTIMAStatusSD(I)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_16

    return v5

    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to check TKS status..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Lcom/android/server/pm/TimaException; {:try_start_16 .. :try_end_2c} :catch_2d

    :cond_2c
    return v5

    :catch_2d
    move-exception v1

    return v4

    :cond_2f
    return v4
.end method

.method public clearData(I)I
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_4b

    :try_start_44
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteAndroidKeystoreCertificates()Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    and-int/lit8 v3, p1, 0x10

    if-lez v3, :cond_57

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    move-result v3

    if-eqz v3, :cond_57

    or-int/lit8 v2, v2, 0x10

    :cond_57
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_63

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearClipboardData()Z

    move-result v3

    if-eqz v3, :cond_63

    or-int/lit8 v2, v2, 0x2

    :cond_63
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_74

    const-string/jumbo v3, "com.android.phone"

    const/16 v6, 0x3e9

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->forceStopApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_74

    or-int/lit8 v2, v2, 0x4

    :cond_74
    and-int/lit8 v3, p1, 0x8

    if-lez v3, :cond_7d

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->resetTheme()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7b} :catch_9a
    .catchall {:try_start_44 .. :try_end_7b} :catchall_a8

    or-int/lit8 v2, v2, 0x8

    :cond_7d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_80
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_9a
    move-exception v1

    :try_start_9b
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_a8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_80

    :catchall_a8
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_ad
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80
.end method

.method public clearDataWithUserID(II)I
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v3, p1, 0x20

    if-lez v3, :cond_4c

    :try_start_44
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAccounts(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/16 v2, 0x20

    :cond_4c
    and-int/lit8 v3, p1, 0x40

    if-lez v3, :cond_59

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteUserInstalledCerts(IZ)Z

    move-result v3

    if-eqz v3, :cond_59

    or-int/lit8 v2, v2, 0x40

    :cond_59
    and-int/lit16 v3, p1, 0x80

    if-lez v3, :cond_66

    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->deleteUserInstalledCerts(IZ)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_61} :catch_83
    .catchall {:try_start_44 .. :try_end_61} :catchall_91

    move-result v3

    if-eqz v3, :cond_66

    or-int/lit16 v2, v2, 0x80

    :cond_66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_69
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_83
    move-exception v1

    :try_start_84
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_91

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_69

    :catchall_91
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_96
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method

.method public clearSDTIMA(Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_15

    return v4

    :cond_15
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SharedDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    :cond_38
    return v4
.end method

.method public getSharedDevicePolicies()Landroid/os/Bundle;
    .registers 9

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_15

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->findSDAgentMDMComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    :cond_15
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1e
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    const-string/jumbo v6, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_38
    .catchall {:try_start_1e .. :try_end_2a} :catchall_46

    move-result-object v1

    :goto_2b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_2f
    :try_start_2f
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getSharedDevicePolicies: ComponentName is null "

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38
    .catchall {:try_start_2f .. :try_end_37} :catchall_46

    goto :goto_2b

    :catch_38
    move-exception v2

    :try_start_39
    sget-object v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_46

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_46
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_4b
    return-object v7
.end method

.method public hideScrim()V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " hide scrim"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->hideScrim()V

    return-void
.end method

.method public isSharedDeviceEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shared Device service is added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method public notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    .registers 7

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_b
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "notifyUserSignedIn in Service"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearRecentTasks()Z

    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/samsung/android/knox/shareddevice/UserCredentials;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->start()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_24
    .catchall {:try_start_b .. :try_end_20} :catchall_32

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_23
    return-void

    :catch_24
    move-exception v0

    :try_start_25
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_32
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
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

.method public performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I
    .registers 8

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v4

    if-nez v4, :cond_8

    return v0

    :cond_8
    :try_start_8
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "performUserAuthentication in Service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/knox/shareddevice/UserCredentials;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->start()V

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->getAuthStatus()I
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_26} :catch_28

    move-result v0

    :goto_27
    return v0

    :catch_28
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public sendIntentforBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_1c

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast: Failed due to intent value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast in Service called by: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending Intent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7c

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7b
.end method

.method public setSharedDeviceState(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 15

    const/4 v4, -0x1

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSharedDeviceState in Service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_48

    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v5, v8, :cond_59

    :cond_34
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3d

    return v4

    :catch_3d
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_59

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_59
    if-eqz p3, :cond_6b

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_6b

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Shared Device does not support Samsung DeX mode."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x4

    return v5

    :cond_6b
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_70
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isActiveMDMPresent()Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_df
    .catchall {:try_start_70 .. :try_end_73} :catchall_ed

    move-result v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_77
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Active MDM Present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    const v8, 0x7fffffff

    if-ne v5, v8, :cond_ad

    :try_start_97
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "managed configuration is not configured! so setting SDAgent as Default ID"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ad} :catch_f2

    :cond_ad
    :goto_ad
    if-eqz p3, :cond_ce

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_ce

    const/4 p3, 0x0

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting Shared Device state to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    :cond_ce
    const/4 v3, 0x0

    :try_start_cf
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->updateEnterpriseDBForEnableSharedDevice()Z

    move-result v5

    if-nez v5, :cond_fd

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "update db failed"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_dd} :catch_1cb

    const/4 v4, -0x1

    return v4

    :catch_df
    move-exception v0

    :try_start_e0
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_ed

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_77

    :catchall_ed
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_f2
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    :cond_fd
    :try_start_fd
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_1bc

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_121
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    const-string/jumbo v8, "adminUid"

    iget v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v8, "SHAREDDEVICE"

    iget-object v9, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    iget-object v10, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Put Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mWhere:Landroid/content/ContentValues;

    if-eqz v3, :cond_169

    if-eqz v1, :cond_169

    const/4 v4, 0x0

    :cond_169
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_182} :catch_1cb

    :goto_182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz v3, :cond_1d6

    if-eqz p3, :cond_1d6

    const/4 v5, 0x1

    :try_start_18b
    iput-boolean v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_1b1

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Dismiss default keyguard"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    :cond_1b1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->enableSD()V

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyRuntimePermissionsToSDAgent()I
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1b7} :catch_1f6
    .catchall {:try_start_18b .. :try_end_1b7} :catchall_204

    move-result v4

    :cond_1b8
    :goto_1b8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1bb
    return v4

    :cond_1bc
    :try_start_1bc
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c9} :catch_1cb

    goto/16 :goto_121

    :catch_1cb
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_182

    :cond_1d6
    if-eqz v3, :cond_1b8

    xor-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_1b8

    :try_start_1dc
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->sSharedDevicesStateInternal:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "shared_device_status"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1f5} :catch_1f6
    .catchall {:try_start_1dc .. :try_end_1f5} :catchall_204

    goto :goto_1b8

    :catch_1f6
    move-exception v0

    :try_start_1f7
    sget-object v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_200
    .catchall {:try_start_1f7 .. :try_end_200} :catchall_204

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1bb

    :catchall_204
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public showScrim()V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " show scrim"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDeviceKeyguardScrim:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->showScrim(Z)V

    return-void
.end method

.method public signOutUser(Z)Z
    .registers 11

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkCallerUID()Z

    move-result v6

    if-nez v6, :cond_8

    return v4

    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v6

    iput v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mMaxAttempts:I

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V

    :try_start_16
    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "signOutUser in Service\nUser Switch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v1, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Z)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->isSuccessful()Z

    move-result v4

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->clearAllNotifications(I)Z

    move-result v2

    if-eqz v2, :cond_54

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "clear all notification is successful"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_54} :catch_58

    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->applyPolicies()V

    return v4

    :catch_58
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method public systemReady()V
    .registers 5

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "systemReady called!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shared_device_status"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->findSDAgentMDMComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentMDMComponentName:Landroid/content/ComponentName;

    :goto_27
    return-void

    :cond_28
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguardOnBoot()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_27

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
