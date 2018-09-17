.class public Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$1;,
        Lcom/android/server/pm/PersonaManagerService$2;,
        Lcom/android/server/pm/PersonaManagerService$3;,
        Lcom/android/server/pm/PersonaManagerService$4;,
        Lcom/android/server/pm/PersonaManagerService$5;,
        Lcom/android/server/pm/PersonaManagerService$6;,
        Lcom/android/server/pm/PersonaManagerService$7;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;,
        Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;
    }
.end annotation


# static fields
.field private static final ADMININFO_TABLE_NAME:Ljava/lang/String; = "ADMIN_INFO"

.field private static final ALLOWED_INSTALLER_LIST_SP:Ljava/lang/String; = "AllowedInstallerListForUser"

.field private static final APPROVED_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_AUTH_TYPE:Ljava/lang/String; = "authenticationType"

.field private static final ATTR_BBC_PERSONA:Ljava/lang/String; = "isBBCContainer"

.field private static final ATTR_CAN_USE_BLUETOOTH:Ljava/lang/String; = "canUseBluetooth"

.field private static final ATTR_CAN_USE_EXT_SDCARD:Ljava/lang/String; = "canUseExtSdcard"

.field private static final ATTR_CMK_ALGO:Ljava/lang/String; = "cmkFormat"

.field private static final ATTR_CONTAINER_ATTRIBUTES:Ljava/lang/String; = "containerAttributes"

.field private static final ATTR_CONTAINER_BACKUP_PIN:Ljava/lang/String; = "CreationElapsedTime"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field private static final ATTR_ENCRYPTED_ID:Ljava/lang/String; = "encryptedId"

.field private static final ATTR_FINGERPRINT_HASH_LIST:Ljava/lang/String; = "fingerprintHash"

.field private static final ATTR_FINGERPRINT_INDEX_LIST:Ljava/lang/String; = "fingerprintIndex"

.field private static final ATTR_FIRMWARE_VERSION:Ljava/lang/String; = "fwversion"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FOTA_UPGRADE_VERSION:Ljava/lang/String; = "fotaupgradeversion"

.field private static final ATTR_FS_MOUNTED:Ljava/lang/String; = "fsMounted"

.field private static final ATTR_HELP_FOLDER:Ljava/lang/String; = "shownFolderHelp"

.field private static final ATTR_HELP_LAUNCHER:Ljava/lang/String; = "shownLauncherHelp"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INSTALLED_PKG_LIST:Ljava/lang/String; = "installedPkgList"

.field private static final ATTR_IS_ENCODING:Ljava/lang/String; = "isEncoding"

.field private static final ATTR_IS_EULA_SHOWN:Ljava/lang/String; = "isEulaShown"

.field private static final ATTR_IS_QUICK_ACCESS_UI_ENABLED:Ljava/lang/String; = "isQuickAccessUIEnabled"

.field private static final ATTR_KIOSK_MODE:Ljava/lang/String; = "kioskModeEnabled"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_LOGGED_OUT_TIME:Ljava/lang/String; = "lastLoggedOut"

.field private static final ATTR_LIGHTWEIGHT_PERSONA:Ljava/lang/String; = "isLightWeightContainer"

.field private static final ATTR_OLD_STATE:Ljava/lang/String; = "oldState"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PEROSNA_SETUPWIZARDAPK:Ljava/lang/String; = "setupapklocation"

.field private static final ATTR_PEROSNA_TYPE:Ljava/lang/String; = "personatype"

.field private static final ATTR_PERSONA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "adminpackagename"

.field private static final ATTR_PERSONA_ADMIN_UID:Ljava/lang/String; = "adminuid"

.field private static final ATTR_PERSONA_FRAMEWORK_VERSION:Ljava/lang/String; = "personaFwkVersion"

.field private static final ATTR_REMOVE_PERSONA:Ljava/lang/String; = "removePersona"

.field private static final ATTR_RESET_CONTAINER_ON_REBOOT:Ljava/lang/String; = "resetPersonaOnReboot"

.field private static final ATTR_RESET_PASSWORD:Ljava/lang/String; = "resetPassword"

.field private static final ATTR_SAMSUNGACOOUNT:Ljava/lang/String; = "samsungAccount"

.field private static final ATTR_SDP_ACTIVE:Ljava/lang/String; = "sdpActive"

.field private static final ATTR_SDP_ENABLED:Ljava/lang/String; = "sdpEnabled"

.field private static final ATTR_SDP_MINOR:Ljava/lang/String; = "isSdpMinor"

.field private static final ATTR_SECURE_FOLDER:Ljava/lang/String; = "isSecureFolder"

.field private static final ATTR_SECURITY_TIMEOUT:Ljava/lang/String; = "securityTimeout"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setupComplete"

.field private static final ATTR_STATE:Ljava/lang/String; = "personastate"

.field private static final ATTR_TIMA_ECRYTPFS_INDEX:Ljava/lang/String; = "timaEcrytfsIndex"

.field private static final ATTR_TIMA_PASSWORDHINT_INDEX:Ljava/lang/String; = "timaPasswordHintIndex"

.field private static final ATTR_TIMA_PASSWORD_INDEX:Ljava/lang/String; = "timaPasswordIndex"

.field private static final ATTR_TIMA_PWD_RESET_TOKEN_INDEX:Ljava/lang/String; = "timaPwdResetTokenIndex"

.field private static final ATTR_TIMA_VERSION:Ljava/lang/String; = "timaVersion"

.field private static final ATTR_USER_MANAGED_PERSONA:Ljava/lang/String; = "isUserManaged"

.field private static final ATTR_USE_FINGERPRINT_INDEX:Ljava/lang/String; = "isEnabledFingerprintIndex"

.field public static final CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final CONTAINER_MULTIWINDOWLOCK_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.MultiwindowLockActivity"

.field private static final DEBUG:Z

.field private static final DEFAULT_SMS_PKG:Ljava/lang/String; = "com.android.mms"

.field private static final ENTERPRISE_DB_NAME:Ljava/lang/String; = "/data/system/enterprise.db"

.field private static final FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final FINGERPRINT_PASSWORD_UPDATED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

.field private static final FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final FLAG_CLEARVIEW_KNOX_KEYGUARD:I = 0x2

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FORCED_RESIZABLE_INFO_ACTIVITY:Ljava/lang/String; = "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final FOTA_PERMISSION_MODE:I = -0x1

.field private static final FOTA_UPGRADE_VERSION:I = 0x9

.field private static final HARD_CODED_CMK:Ljava/lang/String; = "ContainerMasterK"

.field private static final HOME_CROSS_PROFILE_FILTER_PACKAGE:Ljava/lang/String; = "com.sec.knox.home.crossprofilefilter"

.field private static final IRIS_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_ADDED"

.field private static final IRIS_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_REMOVED"

.field private static final IRIS_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_RESET"

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KEYMGNT_LOG_TAG:Ljava/lang/String; = "PersonaManagerService.KeyMgnt"

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "knox.power_button_instantly_locks"

.field private static final LOG_FOTA_TAG:Ljava/lang/String; = "PersonaManagerService:FOTA"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field private static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MSG_ACTION_SCREEN_OFF:I = 0xb

.field private static final MSG_BOOT_COMPLETE_RECEIVED:I = 0xd

.field private static final MSG_BOOT_LOAD_PERSONA_SYSTEMREADY:I = 0xf

.field private static final MSG_DRAW_KNOX_BADGE:I = 0x6

.field private static final MSG_HIDE_KNOX_BADGE:I = 0x34

.field private static final MSG_NAVIBAR_SET_WINDOWSTATE:I = 0x32

.field private static final MSG_REFLASH_SECURE_FLAG:I = 0x8

.field private static final MSG_REMOVE_KNOX_BADGE:I = 0x7

.field private static final MSG_SHOW_KNOX_BADGE:I = 0x33

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_RESET:I = 0x2

.field private static final MSG_WAKE_LOCK_CHANGE:I = 0xa

.field private static final MUMCONTAINER_TABLE_NAME:Ljava/lang/String; = "MUMCONTAINER"

.field private static final NAME_KNOX:Ljava/lang/String; = "KNOX"

.field private static final NAME_KNOXII:Ljava/lang/String; = "KNOX II"

.field private static final PERSONA_CACHE_FILENAME:Ljava/lang/String; = "persona_cache.xml"

.field private static final PERSONA_FRAMEWORK_VERSION:I = 0x1

.field private static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final SEAMS_RESOURCE_TYPE_SDCARD:I = 0x0

.field private static final SKMMV2_ENABLED:Z = true

.field private static final StatusBlockTAG_AdminLock:Ljava/lang/String; = "container_adminlock"

.field private static final StatusBlockTAG_KSS:Ljava/lang/String; = "container_keyguard"

.field private static final StatusBlockTAG_KioskMode:Ljava/lang/String; = "container_kioskmode"

.field private static final TAG_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final TAG_CACHE:Ljava/lang/String; = "cache"

.field private static final TAG_FOTA_VERSION:Ljava/lang/String; = "fotaversion"

.field private static final TAG_FW_VERSION:Ljava/lang/String; = "fwversion"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PERSONA_CACHE:Ljava/lang/String; = "personacache"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_USERS_WITH_PERSONA:Ljava/lang/String; = "userswithpersona"

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "PersonaManagerService.Tima"

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final UNUSED_DUMMY_TIMEOUT:I = -0x10000

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field private static containerCriticalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field private static mKnoxSecurityTimeMigrationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static mPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/PersonaManagerService;


# instance fields
.field private COMMON_SHARE_DIR:Ljava/lang/String;

.field private COMMON_SHARE_PKG:Ljava/lang/String;

.field private final INTENT_CONTAINERAGENT_FROM_KLMS_LICENSEKEY_CHECK:Ljava/lang/String;

.field private final KLMS_CONTAINER_ID:Ljava/lang/String;

.field private final KNOX_SECURITY_TIMEOUT_DEFAULT:I

.field private final KnoxBTPkgName:Ljava/lang/String;

.field private final MAX_RETRY_READ:I

.field private SF_SHARE_DIR:Ljava/lang/String;

.field private SF_SHARE_PKG:Ljava/lang/String;

.field private cleanPersonaId:I

.field private contentObserver:Landroid/database/ContentObserver;

.field private currentHidden:Z

.field private currentLayoutType:Z

.field private currentRot:I

.field private currentWindowState:I

.field private currentbadgeId:I

.field private disableNonCoreServices:Z

.field private emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isEasyMode:Z

.field private isFotaUpgradeVersionChanged:Z

.field private isKnoxBadgeShown:Z

.field private lastTimeToBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private final mBaseUserPath:Ljava/io/File;

.field private mBootCompleted:Z

.field private mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

.field private final mContext:Landroid/content/Context;

.field private mDeviceEmergencyModeLock:Ljava/lang/Object;

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

.field private mFSHandler:Lcom/android/server/KnoxFileHandler;

.field private final mFileLock:Ljava/lang/Object;

.field private mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mFocusLauncherLock:Ljava/lang/Object;

.field private final mFocusLock:Ljava/lang/Object;

.field private mFocusedLauncherId:I

.field private mFocusedUserId:I

.field private mFotaMyKnoxUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIrisReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDeviceEmergencyModeEnabled:Z

.field private mIsFOTAUpgrade:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowingState:Ljava/util/HashMap;
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

.field private mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

.field mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPersonaCacheFile:Ljava/io/File;

.field private final mPersonaCacheLock:Ljava/lang/Object;

.field private final mPersonaCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonaDbLock:Ljava/lang/Object;

.field private mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field private mPersonaIds:[I

.field private mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

.field private mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field private final mPersonas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mSecureFolderId:I

.field private mShowWhenLocked:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

.field private mToken:Landroid/os/IBinder;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersWithPersonaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private final mWakeLockRequestsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private naviHeight:I

.field private naviHeightChanged:Z

.field private personaBadge:Landroid/widget/ImageView;

.field private personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private userManager:Landroid/os/UserManager;

.field private xmlnotParsedforFOTA:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxTimeoutHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardScrimView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateCustomResourcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAProfileOwnerPrime()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/pm/PersonaManagerService;ZIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->installAppForFota(Lcom/samsung/android/knox/SemPersonaInfo;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->killKnoxLauncher(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->recorverNotificationSound()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/pm/PersonaManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setNaviBarWindowState(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Lcom/samsung/android/knox/SemPersonaInfo;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/PersonaManagerService;Z)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->backupOwnerSettings()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge(ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTADisallowedPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/container/"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.osp.app.signin"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.billing"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.app.samsungapps"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.knox.bnr"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/PersonaManagerService;->FOTA_DEBUG_TIME:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.sec.knox.bluetooth"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.knox.appsupdateagent"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.samsung.knox.rcp.components"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.bbc.fileprovider"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .registers 10

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .registers 22

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFotaMyKnoxUsers:Ljava/util/List;

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->MAX_RETRY_READ:I

    const v11, 0x927c0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->KNOX_SECURITY_TIMEOUT_DEFAULT:I

    const-string/jumbo v11, "com.sec.knox.containeragent.klms.licensekey.check"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->INTENT_CONTAINERAGENT_FROM_KLMS_LICENSEKEY_CHECK:Ljava/lang/String;

    const-string/jumbo v11, "container_id"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->KLMS_CONTAINER_ID:Ljava/lang/String;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/android/server/KnoxFileHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->disableNonCoreServices:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    const-string/jumbo v11, "com.sec.knox.bluetooth"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->KnoxBTPkgName:Ljava/lang/String;

    new-instance v11, Landroid/os/Binder;

    invoke-direct {v11}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->cleanPersonaId:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    const-string/jumbo v11, "/data/enc_user/0/com.samsung.android.knox.containeragent/"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_DIR:Ljava/lang/String;

    const-string/jumbo v11, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_PKG:Ljava/lang/String;

    const-string/jumbo v11, "/data/enc_user/0/com.samsung.knox.securefolder/"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_DIR:Ljava/lang/String;

    const-string/jumbo v11, "com.samsung.knox.securefolder"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_PKG:Ljava/lang/String;

    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->userManager:Landroid/os/UserManager;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->currentbadgeId:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->currentLayoutType:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->currentRot:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->isEasyMode:Z

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->currentWindowState:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->currentHidden:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$3;

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mIrisReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v11, Lcom/android/server/KnoxFileHandler;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/android/server/KnoxFileHandler;

    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_210
    new-instance v11, Ljava/io/File;

    sget-object v13, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-direct {v11, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v14, "userwithpersonalist.xml"

    invoke-direct {v11, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_246

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v13, "No need to create user persona list file from Knox 3.0"

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_246
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->readUserList()V

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v13, "Pruning of unwanted persona has started..."

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Pruning mPersonas\'s size is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_2f1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaInfo;

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Pruning info is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v7, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " and remove "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v7, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/16 v13, 0x96

    if-lt v11, v13, :cond_2c4

    iget v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/16 v13, 0xa0

    if-gt v11, v13, :cond_2c4

    iget v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    :cond_2c4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2ee

    iget-object v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v11, :cond_2d6

    iget-object v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2dd

    :cond_2d6
    iget v11, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V

    :cond_2dd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v7, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2ee

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    :cond_2ee
    add-int/lit8 v5, v5, 0x1

    goto :goto_275

    :cond_2f1
    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v13, "<init> adding PersonaPolicyManagerService"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/pm/PersonaPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/server/pm/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "persona_policy"

    invoke-static {v11, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v11, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string/jumbo v13, "persona_policy"

    invoke-interface {v11, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v13, "PersonaManagerService"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    new-instance v11, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-static {}, Lcom/android/server/EnterprisePartitionManager;->isEPMSupported()Z
    :try_end_33c
    .catchall {:try_start_210 .. :try_end_33c} :catchall_3da

    move-result v11

    if-eqz v11, :cond_35d

    const/4 v10, 0x3

    :goto_340
    :try_start_340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->preMountPartition()Z

    move-result v11

    if-nez v11, :cond_35d

    if-lez v10, :cond_35d

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v13, "Error Pre-mount!!!! Try again.."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x15e

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_356} :catch_359
    .catchall {:try_start_340 .. :try_end_356} :catchall_3da

    add-int/lit8 v10, v10, -0x1

    goto :goto_340

    :catch_359
    move-exception v4

    :try_start_35a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35d
    .catchall {:try_start_35a .. :try_end_35d} :catchall_3da

    :cond_35d
    monitor-exit v12

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v13, "persona_cache.xml"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_38b

    :try_start_378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-eqz v11, :cond_3dd

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "PMS cache file created "

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38b
    .catch Ljava/io/IOException; {:try_start_378 .. :try_end_38b} :catch_3e7

    :cond_38b
    :goto_38b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V
    :try_end_393
    .catchall {:try_start_390 .. :try_end_393} :catchall_3ec

    monitor-exit v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string/jumbo v11, "knoxid.reset_on_reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3ef

    const/4 v2, -0x1

    :goto_3a4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_3d9

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Reset-On-Reboot for container Id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/pm/PersonaManagerService;->cleanSettingsProvider(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->cleanSettingsProvider(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->restoreOwnerSettings()V

    :cond_3d9
    return-void

    :catchall_3da
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3dd
    :try_start_3dd
    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "Error Creating PMS cache file!!!! "

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e6
    .catch Ljava/io/IOException; {:try_start_3dd .. :try_end_3e6} :catch_3e7

    goto :goto_38b

    :catch_3e7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38b

    :catchall_3ec
    move-exception v12

    monitor-exit v11

    throw v12

    :cond_3ef
    const-string/jumbo v11, "knoxid.reset_on_reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3a4
.end method

.method private addOneWakeLockRequest(I)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getWakeLockRequests(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_19

    monitor-exit v3

    return-void

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .registers 6

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_32
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private backupOwnerSettings()V
    .registers 10

    const-string/jumbo v7, "PersonaManagerService"

    const-string/jumbo v8, "backupOwnerSettings is called. "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_system.xml"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_system.xml_for_com"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_22
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_secure.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_secure.xml_for_com"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_3b
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_global.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_global.xml_for_com"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private blockStatusbar(IZLjava/lang/String;)V
    .registers 11

    const-string/jumbo v5, "container_adminlock"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    if-eqz p2, :cond_34

    const/high16 v1, 0x3bf0000

    :goto_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_5c

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v1, v5, p3, v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_30} :catch_63
    .catchall {:try_start_11 .. :try_end_30} :catchall_72

    :cond_30
    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_33
    return-void

    :cond_34
    const/4 v1, 0x0

    goto :goto_d

    :cond_36
    const-string/jumbo v5, "container_keyguard"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    if-eqz p2, :cond_4c

    const/high16 v1, 0x10000

    goto :goto_d

    :cond_4c
    const/4 v1, 0x0

    goto :goto_d

    :cond_4e
    if-eqz p2, :cond_53

    const/high16 v1, 0x1010000

    goto :goto_d

    :cond_53
    const/4 v1, 0x0

    goto :goto_d

    :cond_55
    if-eqz p2, :cond_5a

    const/high16 v1, 0x1210000

    goto :goto_d

    :cond_5a
    const/4 v1, 0x0

    goto :goto_d

    :cond_5c
    :try_start_5c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, p3, v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_62} :catch_63
    .catchall {:try_start_5c .. :try_end_62} :catchall_72

    goto :goto_30

    :catch_63
    move-exception v0

    :try_start_64
    const-string/jumbo v5, "PersonaManagerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_72

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_72
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private changePermission(Ljava/lang/String;III)Z
    .registers 12

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_2e
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/EnterprisePartitionManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v2

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changePermission of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5a

    const/4 v3, 0x0

    :cond_5a
    return v3
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v1, "PersonaManagerService"

    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

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

    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_64
    throw v0

    :cond_65
    return v5
.end method

.method private checkForKnoxSettingsIconAfterFOTA(II)V
    .registers 26

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v10, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    const/4 v13, 0x0

    if-nez v10, :cond_127

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.samsung.android.knox.containeragent"

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_cb

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v19, "KNOX"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_128

    new-instance v13, Landroid/content/ComponentName;

    const-string/jumbo v19, "com.samsung.android.knox.containeragent"

    const-string/jumbo v20, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "security_home_icon_security_color_1"

    const-string/jumbo v20, "drawable"

    const-string/jumbo v21, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_a0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    :cond_a0
    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "applyPackagePolicies : changeApplicationIcon drawableIcon1-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v12

    if-eqz v5, :cond_11c

    array-length v0, v5

    move/from16 v19, v0

    if-lez v19, :cond_11c

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v19

    const-string/jumbo v20, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v16

    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "applyPackagePolicies : changeApplicationIcon status2-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v13, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_127
    :goto_127
    return-void

    :cond_128
    new-instance v13, Landroid/content/ComponentName;

    const-string/jumbo v19, "com.samsung.android.knox.containeragent"

    const-string/jumbo v20, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity2"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "security_home_icon_security_color_2"

    const-string/jumbo v20, "drawable"

    const-string/jumbo v21, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_160

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    :cond_160
    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "applyPackagePolicies : changeApplicationIcon drawableIcon2-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18b} :catch_18d

    goto/16 :goto_cb

    :catch_18d
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_127
.end method

.method private cleanPartition(I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->resetKnoxUserData(I)Z

    move-result v0

    :cond_b
    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " cleanPartition: ret value of UMS resetKnoxUserData(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private cleanProviders(I)V
    .registers 8

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reset persona clipboard : removing files for pkgDir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getClipboardExService()Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v3

    if-eqz v3, :cond_53

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getClipboardExService()Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/clipboardex/ClipboardExService;->removeAll()Z

    :cond_53
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.knox.clipboard.sync"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "resetOnReoot"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_6c
    return-void

    :cond_6d
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " resetPersonaClipboard data file doesn\'t exist for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method private cleanSettingsProvider(I)V
    .registers 11

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cleanSettingsProvider is called for personaId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/settings_system.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/settings_secure.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/settings_global.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/appwidgets.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_156

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_156} :catch_157

    :cond_156
    :goto_156
    return-void

    :catch_157
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_156
.end method

.method private clearHomeCrossProfileFilter(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_a
    invoke-interface {v1, v4, p1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_12
    .catchall {:try_start_a .. :try_end_d} :catchall_31

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    :catch_12
    move-exception v0

    :try_start_13
    const-string/jumbo v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearCrossProfileIntentFilters Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_31
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearPackagesFromExternalStorageWhiteList(II)Z
    .registers 11

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    const-string/jumbo v5, "clearPackagesFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_11
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v3

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearPackagesFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KnoxExternalStorageWhitelist"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_96

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearPackagesFromExternalStorageWhiteList for admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "has got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " results"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KnoxExternalStorageWhitelist"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_8b

    move-result v4

    if-lez v4, :cond_96

    const/4 v4, 0x1

    return v4

    :catch_8b
    move-exception v2

    const-string/jumbo v4, "PersonaManagerService:FOTA"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return v7
.end method

.method private collectInstalledPackages(ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-nez v3, :cond_e

    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v4, "mContext is null inside collectInstalledPackages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageInfoList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for id -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_47

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non system Installed package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_88
    return-void
.end method

.method private convertToGreyIcon([B)[B
    .registers 7

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable;

    invoke-direct {v0, v1}, Lcom/android/server/pm/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/FastBitmapDrawable;->setState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 13

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3d

    :cond_9
    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_b
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_31

    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_42

    :try_start_19
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_45

    if-eqz v10, :cond_2b

    :try_start_28
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_2b
    if-eqz v7, :cond_30

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_30
    :goto_30
    return-void

    :catchall_31
    move-exception v2

    :goto_32
    if-eqz v9, :cond_37

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_37
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_3c
    throw v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :catchall_42
    move-exception v2

    move-object v9, v10

    goto :goto_32

    :catchall_45
    move-exception v2

    move-object v6, v7

    move-object v9, v10

    goto :goto_32
.end method

.method private copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)Z"
        }
    .end annotation

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "start migrateKnoxAppsData: from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2e
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9e

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " not exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_9e
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v7, v0, v2, v1}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v6

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copy file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d9

    const/4 v9, 0x0

    :cond_d9
    const/4 v10, -0x1

    move/from16 v0, p6

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v10}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v10

    if-nez v10, :cond_2e

    const/4 v9, 0x0

    goto/16 :goto_2e

    :cond_e7
    return v9
.end method

.method private copySystemData()Z
    .registers 11

    const/4 v9, -0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/databases/sharefile.db"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/databases/sharefile.db"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/databases/sharefile.db-journal"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/databases/sharefile.db-journal"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/shared_prefs/SwitchKnox_shared_prefs.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/SwitchKnox_shared_prefs.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/shared_prefs/knoxusage.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/knoxusage.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/databases/knoxusage.db"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/databases/knoxusage.db"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.switcher/databases/knoxusage.db-journal"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/databases/knoxusage.db-journal"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_69

    return v4

    :cond_69
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v2, "/data/user/"

    const-string/jumbo v3, "/data/user/"

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;->copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v8

    const-string/jumbo v0, "/data/user/0/com.samsung.android.knox.containeragent/"

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_93

    :goto_80
    const-string/jumbo v0, "/data/user/0/com.samsung.android.knox.containeragent/databases/"

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_95

    :goto_89
    const-string/jumbo v0, "/data/user/0/com.samsung.android.knox.containeragent/shared_prefs/"

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_97

    :goto_92
    return v8

    :cond_93
    const/4 v8, 0x0

    goto :goto_80

    :cond_95
    const/4 v8, 0x0

    goto :goto_89

    :cond_97
    const/4 v8, 0x0

    goto :goto_92
.end method

.method private copyUserData(I)Z
    .registers 12

    const/4 v9, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.containeragent2/shared_prefs/com.sec.knox.containeragent2_preferences.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/com.samsung.android.knox.containeragent_preferences.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.containeragent2/shared_prefs/EXISTING_LOCK_TYPE.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/EXISTING_LOCK_TYPE.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.containeragent2/shared_prefs/EXISTING_QUICK_ACCESS_SETTING.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/EXISTING_QUICK_ACCESS_SETTING.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.containeragent2/shared_prefs/STYLE_CHANGING_FLAG.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/STYLE_CHANGING_FLAG.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.sec.knox.containeragent2/files/launcher"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/files/launcher"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "/com.samsung.knox.knoxtrustagent/shared_prefs/com.samsung.knox.knoxtrustagent_preferences.xml"

    const-string/jumbo v3, "/com.samsung.android.knox.containeragent/shared_prefs/TRUST_AGENT_preferences.xml"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_69

    const/4 v0, 0x0

    return v0

    :cond_69
    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v2, "/data/user/"

    const-string/jumbo v3, "/data/user/"

    move-object v0, p0

    move v4, p1

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;->copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/user/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_106

    :goto_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/user/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/shared_prefs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_108

    :goto_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/user/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/files"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_10a

    :goto_105
    return v8

    :cond_106
    const/4 v8, 0x0

    goto :goto_a7

    :cond_108
    const/4 v8, 0x0

    goto :goto_d6

    :cond_10a
    const/4 v8, 0x0

    goto :goto_105
.end method

.method private createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, p3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_47

    :cond_1a
    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to look up the service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_47
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only allow to bind service in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_89

    const-string/jumbo v1, "android.permission.BIND_DEVICE_ADMIN"

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_89

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Service must be protected by BIND_DEVICE_ADMIN permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_89
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method private createSFNameBitmap(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 26

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v14, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v18, 0x42680000    # 58.0f

    mul-float v18, v18, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v10, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v10, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v4, 0x0

    const/high16 v18, 0x41b00000    # 22.0f

    mul-float v18, v18, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v5, v0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    add-int/lit8 v17, v18, 0x0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v18

    add-int/lit8 v11, v18, 0x0

    const-string/jumbo v18, "com.samsung.knox.securefolder:drawable/sf_app_icon_11"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_79

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v11, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v9, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_79
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    sget-object v18, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    new-instance v12, Landroid/text/TextPaint;

    invoke-direct {v12}, Landroid/text/TextPaint;-><init>()V

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v18, -0xafafb0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/high16 v18, 0x42040000    # 33.0f

    mul-float v18, v18, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_f3

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f3

    const/high16 v18, 0x41e00000    # 28.0f

    mul-float v18, v18, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_f3
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2, v13}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    div-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v20

    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v21

    add-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v8
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_21

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "directory not exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_32

    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "files is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/4 v2, 0x0

    :goto_33
    array-length v4, v1

    if-ge v2, v4, :cond_68

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteDirectory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_68
    return-void
.end method

.method private deletePkg(ILjava/lang/String;)Z
    .registers 9

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deletePkg request for personaId -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and pkg-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x2

    invoke-virtual {v3, p2, v2, p1, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_74

    :goto_31
    :try_start_31
    iget-boolean v3, v2, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_71

    if-nez v3, :cond_92

    :try_start_35
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Waiting in while loop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->wait()V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_54} :catch_55
    .catchall {:try_start_35 .. :try_end_54} :catchall_71

    goto :goto_31

    :catch_55
    move-exception v1

    :try_start_56
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deletePkg: InterruptedException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_71

    goto :goto_31

    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2

    throw v3
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_74} :catch_74

    :catch_74
    move-exception v0

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deletePkg exception -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    iget-boolean v3, v2, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    return v3

    :cond_92
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_93} :catch_74

    goto :goto_8f
.end method

.method private drawKnoxbadge()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "draw Knoxbadge addView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method private drawKnoxbadge(ILandroid/content/ComponentName;Z)V
    .registers 32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserManager;

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v17, 0x0

    if-eqz p2, :cond_74

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.knox.containeragent.switcher.folderlauncher2.FolderContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.knox.containeragent.switcher.folderlauncher2.FolderContainerLauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder.foldercontainer.FolderContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder.foldercontainer.FolderContainerLauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder.foldercontainer.AddFilesCategoryChooserActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.packageinstaller.UninstallerActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_6d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    return-void

    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v23

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_d6

    const/16 v22, 0x1

    :goto_90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d9

    const/16 v20, 0x1

    :goto_a4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->isEasyMode:Z

    move/from16 v0, v20

    if-eq v3, v0, :cond_b7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService;->isEasyMode:Z

    :cond_b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    if-eqz v3, :cond_cb

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PersonaManagerService;->currentbadgeId:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_dc

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    :cond_cb
    :goto_cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_108

    return-void

    :cond_d6
    const/16 v22, 0x0

    goto :goto_90

    :cond_d9
    const/16 v20, 0x0

    goto :goto_a4

    :cond_dc
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->currentLayoutType:Z

    move/from16 v0, p3

    if-eq v0, v3, :cond_eb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    goto :goto_cb

    :cond_eb
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PersonaManagerService;->currentRot:I

    move/from16 v0, v23

    if-eq v3, v0, :cond_fa

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    goto :goto_cb

    :cond_fa
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    if-eqz v3, :cond_107

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge(Z)V

    goto :goto_cb

    :cond_107
    return-void

    :cond_108
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxBadge(I)[B

    move-result-object v18

    if-nez v18, :cond_126

    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v4, "KnoxService: KnoxBadge ID is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_126
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v14, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v14, :cond_28e

    if-eqz v22, :cond_16f

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v14, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_16f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    if-eqz p3, :cond_298

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x96b

    const v12, 0x40138

    const/4 v13, -0x3

    move v10, v9

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    :goto_18c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eqz v22, :cond_2aa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x53

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1a1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    if-eqz v3, :cond_1b1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeightChanged:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    :cond_1b1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    if-nez v3, :cond_1ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    :cond_1ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_keyboard"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2b4

    const/16 v24, 0x1

    :goto_1ee
    if-eqz v16, :cond_20c

    xor-int/lit8 v3, v24, 0x1

    if-eqz v3, :cond_20c

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2b8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_20c
    :goto_20c
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "draw Knoxbadge currentHidden = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->currentHidden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isKnoxBadgeShown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->currentHidden:Z

    if-nez v3, :cond_27b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_27b

    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v4, "draw Knoxbadge addView."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v3, :cond_267

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    :cond_267
    :try_start_267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_27b} :catch_2e7

    :cond_27b
    :goto_27b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PersonaManagerService;->currentbadgeId:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService;->currentLayoutType:Z

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PersonaManagerService;->currentRot:I

    return-void

    :cond_28e
    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v4, "KnoxBadge Image is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_298
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x8e1

    const v12, 0x40138

    const/4 v13, -0x3

    move v10, v9

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    goto/16 :goto_18c

    :cond_2aa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x55

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_1a1

    :cond_2b4
    const/16 v24, 0x0

    goto/16 :goto_1ee

    :cond_2b8
    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_2d2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_20c

    :cond_2d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PersonaManagerService;->naviHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_20c

    :catch_2e7
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27b
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_d

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_1f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_31
    if-gtz v3, :cond_34

    move v3, v4

    :cond_34
    if-gtz v2, :cond_37

    move v2, v4

    :cond_37
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_51
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_1f

    :cond_56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_31
.end method

.method private enableLauncher(ILjava/lang/String;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2, p1, v3, v3}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v6

    if-eq v6, v2, :cond_3a

    const-string/jumbo v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\tret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void

    :cond_3a
    const-string/jumbo v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "install launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_60
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const-string/jumbo v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private enableLauncherFromFolderContainer(I)Z
    .registers 12

    const/16 v9, 0x3e8

    const/4 v8, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isLightWeightContainer()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7f

    const-string/jumbo v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enable launcher for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "com.samsung.android.knox.containeragent"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_43

    const/4 v5, 0x0

    return v5

    :cond_43
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/user/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/files/launcher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v9, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v3

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->enableLauncher(ILjava/lang/String;)V

    invoke-direct {p0, v2, v1, v1, v8}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_7f
    :goto_7f
    return v3

    :cond_80
    const/4 v3, 0x0

    goto :goto_7f
.end method

.method private enableOwnerLaunchersForCOM(I)Z
    .registers 24

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " enableOwnerLaunchersForCOM is called for user -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "com_default_owner_launcher"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_57

    const-string/jumbo v3, "-"

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :goto_43
    const/16 v21, 0x0

    if-eqz v14, :cond_4d

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_4d
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, " enableOwnerLaunchersForCOM disabledpackages is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_57
    const/4 v9, 0x0

    goto :goto_43

    :cond_59
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-array v8, v3, [Landroid/content/ComponentName;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    const/4 v10, 0x0

    const/16 v16, 0x0

    :try_start_66
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6a
    :goto_6a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v3, "-"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " enableOwnerLaunchersForCOM package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and Activity name -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v20, v3

    const/4 v4, 0x1

    aget-object v4, v20, v4

    invoke-direct {v13, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_6a

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " enableOwnerLaunchersForCOM is successfull for package-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", name -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and user 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v13, v8, v16

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6a

    :cond_113
    if-eqz v9, :cond_12d

    array-length v3, v9

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12d

    new-instance v11, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x1

    aget-object v4, v9, v4

    invoke-direct {v11, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_124} :catch_141

    :try_start_124
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/pm/PersonaManagerService;->setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_129} :catch_148

    const/16 v21, 0x1

    move-object v10, v11

    :goto_12c
    return v21

    :cond_12d
    :try_start_12d
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, " default launcher info not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, " defaultComponent is null, so return false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13f} :catch_141

    const/4 v3, 0x0

    return v3

    :catch_141
    move-exception v15

    :goto_142
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v21, 0x0

    goto :goto_12c

    :catch_148
    move-exception v15

    move-object v10, v11

    goto :goto_142
.end method

.method private enablePackage(Ljava/lang/String;ZI)V
    .registers 11

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p2, :cond_16

    const/4 v2, 0x1

    :goto_e
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p3

    :try_start_12
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_18

    :goto_15
    return-void

    :cond_16
    const/4 v2, 0x2

    goto :goto_e

    :catch_18
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method private enableSamsunAppsForLWC(I)Z
    .registers 7

    const-string/jumbo v0, "com.sec.android.app.samsungapps"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2f

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to install "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x1

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "install launcher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 10

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    if-nez v5, :cond_c

    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->parseEnterprisedataXml()V

    :cond_c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2a

    return-object v2

    :cond_3d
    const-string/jumbo v5, "PersonaManagerService"

    const-string/jumbo v6, "filterTypeByContainerId mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-object v7
.end method

.method private getAdminNameFromEnterpriseDB(I)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_3
    const-string/jumbo v1, "/data/system/enterprise.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "ADMIN_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "adminName"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "adminUid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_57

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_57

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4b} :catch_62
    .catchall {:try_start_3 .. :try_end_4b} :catchall_71

    move-result-object v1

    if-eqz v9, :cond_51

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_51
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_56
    return-object v1

    :cond_57
    if-eqz v9, :cond_5c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_61
    return-object v11

    :catch_62
    move-exception v8

    :try_start_63
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_71

    if-eqz v9, :cond_6b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6b
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_70
    return-object v11

    :catchall_71
    move-exception v1

    if-eqz v9, :cond_77

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_77
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7c
    throw v1
.end method

.method private getAdminPackageName(I)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    return-object v2
.end method

.method private getAdminUid(I)I
    .registers 9

    const/4 v6, -0x1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_22

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No Admin Found for User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_22
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    move-result v3

    return v3

    :catch_31
    move-exception v2

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error fetching admin uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private getAdminUidFromEnterpriseDB(I)I
    .registers 14

    const/4 v11, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_3
    const-string/jumbo v1, "/data/system/enterprise.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "MUMCONTAINER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "containerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_57

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_57

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4b} :catch_62
    .catchall {:try_start_3 .. :try_end_4b} :catchall_71

    move-result v1

    if-eqz v10, :cond_51

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_51
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_56
    return v1

    :cond_57
    if-eqz v10, :cond_5c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_61
    return v11

    :catch_62
    move-exception v8

    :try_start_63
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_71

    if-eqz v10, :cond_6b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6b
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_70
    return v11

    :catchall_71
    move-exception v1

    if-eqz v10, :cond_77

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_77
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7c
    throw v1
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getClipboardExService()Lcom/android/server/clipboardex/ClipboardExService;
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

    return-object v1

    :cond_7
    const-string/jumbo v1, "semclipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboardex/ClipboardExService;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mClipboardExService:Lcom/android/server/clipboardex/ClipboardExService;

    return-object v1
.end method

.method public static getContainerCriticalApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "getContainerCriticalApps"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    return-object v0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v1

    :cond_7
    const-string/jumbo v1, "ro.build.PDA"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getECName(I)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_2c

    :try_start_7
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_36

    move-result-object v1

    :cond_11
    :goto_11
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getECName name - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2c
    :try_start_2c
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, "Configuration type is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_11

    :catch_36
    move-exception v0

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception in getECName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getExternalStorageWhitelistedPackages(I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string/jumbo v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStorageWhitelistedPackages personaId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v11, "packageName"

    const/4 v12, 0x0

    aput-object v11, v2, v12

    const-string/jumbo v11, "signatures"

    const/4 v12, 0x1

    aput-object v11, v2, v12

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v11

    const-string/jumbo v12, "KnoxExternalStorageWhitelist"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_f6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_f6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_60
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v11, "packageName"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "signatures"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStorageWhitelistedPackages Pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v11, :cond_b2

    const-string/jumbo v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStorageWhitelistedPackages signatures "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    new-instance v11, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v11, v5, v7}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_ba} :catch_bb

    goto :goto_60

    :catch_bb
    move-exception v4

    const-string/jumbo v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStorageWhitelistedPackages exception - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d6
    return-object v10

    :cond_d7
    :try_start_d7
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->clearPackagesFromExternalStorageWhiteList(II)Z

    move-result v1

    const-string/jumbo v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStorageWhitelistedPackages clean whitelist table status - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    :cond_f6
    const-string/jumbo v11, "PersonaManagerService:FOTA"

    const-string/jumbo v12, "getExternalStorageWhitelistedPackages providerList is empty"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_ff} :catch_bb

    goto :goto_d6
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    const-string/jumbo v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-class v0, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v0

    :try_start_9
    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKnoxContainerVersion()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, "N/A"

    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v1

    :goto_b
    return-object v1

    :catch_c
    move-exception v0

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "getKnoxContainerVersion() - Unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .registers 2

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    if-nez v0, :cond_f

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    return-object v0
.end method

.method private getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B
    .registers 24

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v8

    :try_start_16
    const-string/jumbo v19, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_159

    const-string/jumbo v14, "com.samsung.android.contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Is Phone Package Installed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_11d

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.DIAL"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_7a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_9a

    :cond_7a
    const-string/jumbo v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    :cond_9a
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Phone PackageName List = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9e

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    :cond_e8
    :goto_e8
    if-eqz v6, :cond_275

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v6, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    return-object v19

    :cond_11d
    const-string/jumbo v14, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":drawable/ic_phone"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_e8

    :cond_159
    const-string/jumbo v19, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e8

    const-string/jumbo v14, "com.samsung.android.messaging"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Is SMS Package Installed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_21b

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "android.intent.category.INFO"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_1d0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_203

    :cond_1d0
    const-string/jumbo v19, "android.intent.category.INFO"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    :cond_203
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    goto/16 :goto_e8

    :cond_21b
    const-string/jumbo v14, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":drawable/ic_message"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_255
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_255} :catch_258

    move-result v6

    goto/16 :goto_e8

    :catch_258
    move-exception v7

    const-string/jumbo v19, "PersonaManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to load icon from default resource: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_275
    const/16 v19, 0x0

    return-object v19
.end method

.method private getKnoxSettingsIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v4, "custom-container-icon"

    invoke-static {p3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v0, "drawable/security_home_icon_security_color_1"

    :cond_1f
    :goto_1f
    if-eqz v0, :cond_3a

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    return-object v4

    :cond_26
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v0, "drawable/security_home_icon_security_color_2"

    goto :goto_1f

    :cond_30
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v0, "drawable/security_home_icon_security_color_1"

    goto :goto_1f

    :cond_3a
    return-object v5
.end method

.method private getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 18

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_a5

    const/16 v10, -0x2710

    move/from16 v0, p3

    if-eq v0, v10, :cond_a5

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    const-string/jumbo v10, "custom-container-icon"

    move/from16 v0, p3

    invoke-static {v0, v10}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_72

    if-eqz v6, :cond_72

    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v10

    if-eqz v10, :cond_4c

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4c

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x1

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4c
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-lez v10, :cond_81

    const/4 v3, 0x1

    :goto_5f
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v10

    if-eqz v10, :cond_87

    if-eqz v3, :cond_83

    const-string/jumbo v1, "drawable/knox_icon"

    :goto_6a
    const-string/jumbo v10, "com.samsung.android.knox.containeragent"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v1, v11}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    :cond_72
    :goto_72
    if-eqz v6, :cond_80

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_80

    if-eqz v2, :cond_80

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->convertToGreyIcon([B)[B

    move-result-object v2

    :cond_80
    return-object v2

    :cond_81
    const/4 v3, 0x0

    goto :goto_5f

    :cond_83
    const-string/jumbo v1, "drawable/security_home_icon"

    goto :goto_6a

    :cond_87
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v10

    if-eqz v10, :cond_91

    const-string/jumbo v1, "drawable/knox_icon_2"

    goto :goto_6a

    :cond_91
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v10

    if-eqz v10, :cond_a1

    if-eqz v3, :cond_9d

    const-string/jumbo v1, "drawable/knox_icon_3"

    goto :goto_6a

    :cond_9d
    const-string/jumbo v1, "drawable/security_home_icon2"

    goto :goto_6a

    :cond_a1
    const-string/jumbo v1, "drawable/knox_icon"

    goto :goto_6a

    :cond_a5
    const/4 v9, 0x0

    const-string/jumbo v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string/jumbo v10, "com.android.internal.app.ForwardIntentToManagedProfile1"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_134

    :cond_bc
    const/high16 v9, 0x100000

    :goto_be
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v10, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v10, v9

    if-ne v10, v9, :cond_c6

    move-object v6, v4

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v11, "custom-container-icon"

    invoke-static {v10, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_72

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v10

    if-eqz v10, :cond_10c

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_10c

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x1

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_10c
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_icon_upgraded"

    iget v12, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-lez v10, :cond_174

    const/4 v3, 0x1

    :goto_11f
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v10

    if-eqz v10, :cond_17a

    if-eqz v3, :cond_176

    const-string/jumbo v1, "drawable/knox_icon"

    :goto_12a
    const-string/jumbo v10, "com.samsung.android.knox.containeragent"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v1, v11}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    goto/16 :goto_72

    :cond_134
    const-string/jumbo v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14a

    const-string/jumbo v10, "com.android.internal.app.ForwardIntentToManagedProfile2"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e

    :cond_14a
    const/high16 v9, 0x200000

    goto/16 :goto_be

    :cond_14e
    const-string/jumbo v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_164

    const-string/jumbo v10, "com.android.internal.app.ForwardIntentToManagedProfile3"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_168

    :cond_164
    const/high16 v9, 0x800000

    goto/16 :goto_be

    :cond_168
    const-string/jumbo v10, "com.samsung.android.knox.containeragent"

    const-string/jumbo v11, "drawable/knox_icon"

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    return-object v2

    :cond_174
    const/4 v3, 0x0

    goto :goto_11f

    :cond_176
    const-string/jumbo v1, "drawable/security_home_icon"

    goto :goto_12a

    :cond_17a
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v10

    if-eqz v10, :cond_184

    const-string/jumbo v1, "drawable/knox_icon_2"

    goto :goto_12a

    :cond_184
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v10

    if-eqz v10, :cond_194

    if-eqz v3, :cond_190

    const-string/jumbo v1, "drawable/knox_icon_3"

    goto :goto_12a

    :cond_190
    const-string/jumbo v1, "drawable/security_home_icon2"

    goto :goto_12a

    :cond_194
    const-string/jumbo v1, "drawable/knox_icon"

    goto :goto_12a
.end method

.method private getLaunchPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string/jumbo v3, "com.sec.android.app.launcher"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_18

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "getLaunchPkgName launch file not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_e9
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_ac
    .catchall {:try_start_19 .. :try_end_23} :catchall_127

    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_80

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName - Package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", Class name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    aget-object v8, v2, v8
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_5e} :catch_14d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5e} :catch_150
    .catchall {:try_start_23 .. :try_end_5e} :catchall_14a

    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    :cond_63
    :goto_63
    return-object v8

    :catch_64
    move-exception v5

    const-string/jumbo v9, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_80
    :try_start_80
    const-string/jumbo v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "getLaunchPkgName launch file is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_89} :catch_14d
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_89} :catch_150
    .catchall {:try_start_80 .. :try_end_89} :catchall_14a

    if-eqz v1, :cond_8e

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_90

    :cond_8e
    :goto_8e
    move-object v0, v1

    :cond_8f
    :goto_8f
    return-object v3

    :catch_90
    move-exception v5

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :catch_ac
    move-exception v5

    :goto_ad
    :try_start_ad
    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName IOException\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_ad .. :try_end_c7} :catchall_127

    if-eqz v0, :cond_8f

    :try_start_c9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_8f

    :catch_cd
    move-exception v5

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catch_e9
    move-exception v4

    :goto_ea
    :try_start_ea
    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName FileNotFoundException\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catchall {:try_start_ea .. :try_end_104} :catchall_127

    if-eqz v0, :cond_8f

    :try_start_106
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_8f

    :catch_10a
    move-exception v5

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f

    :catchall_127
    move-exception v8

    :goto_128
    if-eqz v0, :cond_12d

    :try_start_12a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12e

    :cond_12d
    :goto_12d
    throw v8

    :catch_12e
    move-exception v5

    const-string/jumbo v9, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    :catchall_14a
    move-exception v8

    move-object v0, v1

    goto :goto_128

    :catch_14d
    move-exception v4

    move-object v0, v1

    goto :goto_ea

    :catch_150
    move-exception v5

    move-object v0, v1

    goto/16 :goto_ad
.end method

.method private getPOPrimeOwner(I)Ljava/lang/String;
    .registers 16

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "getPOPrimeOwner is called..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v6, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "profile_owner.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    if-nez v6, :cond_22

    return-object v11

    :cond_22
    :try_start_22
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_2e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v12, :cond_36

    if-ne v7, v13, :cond_2e

    :cond_36
    if-eq v7, v12, :cond_4c

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "Unable to read profileOwnerFile"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_44} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_44} :catch_93
    .catchall {:try_start_22 .. :try_end_44} :catchall_b1

    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-object v11

    :catch_4a
    move-exception v0

    goto :goto_49

    :cond_4c
    :try_start_4c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v13, :cond_8b

    if-ne v7, v12, :cond_4c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "profile-owner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    const-string/jumbo v8, "package"

    const/4 v9, 0x0

    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string/jumbo v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readGooglePOOwner entry - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_8b} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_8b} :catch_93
    .catchall {:try_start_4c .. :try_end_8b} :catchall_b1

    :cond_8b
    if-eqz v1, :cond_90

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    return-object v3

    :catch_91
    move-exception v0

    goto :goto_90

    :catch_93
    move-exception v5

    :try_start_94
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_b1

    if-eqz v1, :cond_90

    :try_start_9c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_90

    :catch_a0
    move-exception v0

    goto :goto_90

    :catch_a2
    move-exception v2

    :try_start_a3
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_b1

    if-eqz v1, :cond_90

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_90

    :catch_af
    move-exception v0

    goto :goto_90

    :catchall_b1
    move-exception v8

    if-eqz v1, :cond_b7

    :try_start_b4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    :cond_b7
    :goto_b7
    throw v8

    :catch_b8
    move-exception v0

    goto :goto_b7
.end method

.method private getPersonaInfoLocked(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v0, :cond_34

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v1, :cond_34

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->cleanPersonaId:I

    if-eq p1, v1, :cond_34

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_34
    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPersonas(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v3, v2, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v3, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    if-eqz p1, :cond_2e

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    :cond_2e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    goto :goto_1d

    :catchall_32
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_35
    monitor-exit v4

    return-object v1
.end method

.method private getSEAMSService()Lcom/android/server/SEAMService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    return-object v0
.end method

.method private getSecureFolderIcon()[B
    .registers 15

    const/16 v13, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v5

    const/4 v7, 0x0

    :try_start_1c
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.knox.securefolder"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_28} :catch_77

    move-result-object v7

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "secure_folder_image_name"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Settings.Secure.SECURE_FOLDER_IMAGE_NAME : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_b4

    if-eqz v6, :cond_b4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_83

    invoke-direct {p0, v7, v6, v5}, Lcom/android/server/pm/PersonaManagerService;->createSFNameBitmap(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v9, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    :catch_77
    move-exception v4

    const-string/jumbo v9, "PersonaManagerService"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "com.samsung.knox.securefolder:drawable/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_9b
    if-eqz v0, :cond_bc

    invoke-virtual {v7, v0, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v9, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    :cond_b4
    const-string/jumbo v9, "com.samsung.knox.securefolder:drawable/sf_app_icon_00"

    invoke-virtual {v7, v9, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_9b

    :cond_bc
    return-object v12
.end method

.method private getShownKeyguardOwner()I
    .registers 7

    const/16 v3, -0x515

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v3, v2

    :cond_35
    return v3
.end method

.method private declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1f

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1f

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    if-nez v0, :cond_12

    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "getUninstallablePackagesForRemovePersona : is called for"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    if-nez v18, :cond_43

    const-string/jumbo v25, "PersonaManagerService"

    const-string/jumbo v26, "getUninstallablePackagesForRemovePersona no personaInfo for this persona"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    return-object v25

    :cond_43
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v17, v0

    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "getUninstallablePackagesForRemovePersona : parentUserId "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_82
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    if-eq v0, v1, :cond_c8

    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Collect packages started for  : personaid "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v15}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    goto :goto_82

    :cond_c8
    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Collect packages igonored for  : personaid "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_e9
    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Collect packages started for removing : personaId "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z

    move-result v25

    if-eqz v25, :cond_132

    const-string/jumbo v25, "com.sec.knox.bluetooth"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v25, "com.sec.knox.bluetooth"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_132
    const-string/jumbo v25, "com.sec.knox.packageverifier"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v25, "com.sec.knox.packageverifier"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :try_start_14e
    const-string/jumbo v25, "com.sec.knox.knoxlauncher"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v25, "com.sec.knox.knoxlauncher"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_16a} :catch_20a

    :goto_16a
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v25

    if-eqz v25, :cond_18c

    const-string/jumbo v25, "com.samsung.android.bbc.fileprovider"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v25, "com.samsung.android.bbc.fileprovider"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_18c
    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "otherUsersPackages size -"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "personaPackages size -"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x80

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1f4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_1f4

    const-string/jumbo v25, "PersonaManagerService"

    const-string/jumbo v26, "Removing packages added to Owner user during boot."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1f4
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1f8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_216

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    :catch_20a
    move-exception v6

    const-string/jumbo v25, "PersonaManagerService"

    const-string/jumbo v26, "not exist card type launcher"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16a

    :cond_216
    :try_start_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v11

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v5

    if-eqz v5, :cond_25c

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_25c} :catch_2a7

    :cond_25c
    :goto_25c
    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "packagesToBeUnInstall size -"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2ac

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v25, "PersonaManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pkg to be uninstalled is -"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27e

    :catch_2a7
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25c

    :cond_2ac
    return-object v16
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->userManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->userManager:Landroid/os/UserManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->userManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private getWakeLockRequests(I)I
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2d

    move-result v2

    if-nez v2, :cond_13

    monitor-exit v3

    return v4

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2b

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit v3

    return v0

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleFOTADisallowedPackages()V
    .registers 14

    const/4 v12, 0x0

    const-string/jumbo v9, "PersonaManagerService:FOTA"

    const-string/jumbo v10, "handleFOTADisallowedPackages() called."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    if-eqz v5, :cond_c1

    invoke-virtual {v5, v12}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18
    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v9

    if-nez v9, :cond_36

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v9

    if-eqz v9, :cond_60

    :cond_36
    const-string/jumbo v9, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleFOTADisallowedPackages() user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v9, "com.sec.sprextension.phoneinfo"

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v1}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    :cond_60
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_18

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v9, "com.samsung.android.fmm"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "com.felicanetworks.mfm"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_95

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_95

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, v12, v9}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V

    goto :goto_83

    :cond_95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b4

    const-string/jumbo v9, "com.samsung.android.samsungpass"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "com.samsung.android.samsungpassautofill"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b4
    const-string/jumbo v9, "com.samsung.android.bluelightfilter"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v0}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    goto/16 :goto_18

    :cond_c1
    return-void
.end method

.method private handleFOTAProfileOwnerPrime()V
    .registers 28

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() update UserInfo.attribute for PO -> PO\' FOTA case from 2.9 -> 3.0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v22

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2d
    :goto_2d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_49

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v23

    if-eqz v23, :cond_41

    const/4 v11, 0x1

    goto :goto_2d

    :cond_41
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v23

    if-eqz v23, :cond_2d

    const/4 v12, 0x1

    goto :goto_2d

    :cond_49
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v23, "com.sec.android.app.samsungapps"

    const-string/jumbo v24, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_69
    :goto_69
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3a1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() get user: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    if-eqz v23, :cond_14a

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v16

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v14

    if-eqz v14, :cond_f3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_f3

    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationComponentState(Landroid/content/ComponentName;Z)Z

    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v23

    const-string/jumbo v24, "com.knox.vpn.proxyhandler"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    :cond_f3
    if-eqz v14, :cond_10e

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v23

    if-eqz v23, :cond_10e

    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationComponentState(Landroid/content/ComponentName;Z)Z

    :cond_10e
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const-string/jumbo v24, "com.android.server.telecom"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    :try_start_120
    new-instance v15, Landroid/content/ComponentName;

    const-string/jumbo v23, "com.samsung.android.contacts"

    const-string/jumbo v24, "com.android.contacts.NonPhoneActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_14a} :catch_39b

    :cond_14a
    :goto_14a
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v23

    if-eqz v23, :cond_69

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_69

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_69

    :try_start_160
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/high16 v13, 0x10000000

    const/4 v5, 0x0

    const v13, 0x10000010

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() PO\' is always the third container migrated "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v23, 0x800000

    or-int v13, v13, v23

    const-string/jumbo v23, "flags"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v23, "attributes"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/os/UserManager;->updateUserInfo(ILandroid/os/Bundle;)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() update attribute for AFW ManagedProfile: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() migrating Settings.System.KNOX_SETTINGS_KNOX_STYLE as FOLDER"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "KNOX_SETTINGS_KNOX_STYLE"

    const-string/jumbo v25, "FOLDER"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() migrating  Settings.System.IS_SHOWN_FOLDER_HELP "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "IS_SHOWN_FOLDER_HELP"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() migrating Settings.System.IS_SHOWN_LAUNCHER_HELP "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "IS_SHOWN_LAUNCHER_HELP"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() set default Settings.System.KNOX_SCREEN_OFF_TIMEOUT "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "knox_screen_off_timeout"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() set default caller_id_to_show_ "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "caller_id_to_show_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "handleFOTAProfileOwnerPrime() Adding Google PO owner uid in enterprise DB"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPOPrimeOwner(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() ownerPackage: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", uid - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v23

    if-eqz v23, :cond_350

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v23

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v19

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() addMUMContainer result: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_350
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->installKnoxApps(I)Z

    move-result v4

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() agentInstallStatus : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37a
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_37a} :catch_37c

    goto/16 :goto_69

    :catch_37c
    move-exception v8

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleFOTAProfileOwnerPrime() exception : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    :catch_39b
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14a

    :cond_3a1
    return-void
.end method

.method private handleFOTATima30ToFips30Upgrade(Lcom/samsung/android/knox/SemPersonaInfo;)Z
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/TimaHelper;->migrateToFips30(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private handleFOTATimaUpgrade(Lcom/samsung/android/knox/SemPersonaInfo;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v2, :cond_f

    const-string/jumbo v2, "PersonaManagerService.Tima"

    const-string/jumbo v3, "handleFOTATimaUpgrade() - Tima Helper not initialized..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PersonaManagerService.Tima"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleFOTATimaUpgrade() - ### TIMA STATE ### persona -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_45
    :goto_45
    return v0

    :cond_46
    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string/jumbo v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "FIPS3.0"

    iget-object v3, p1, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->handleFOTATima30ToFips30Upgrade(Lcom/samsung/android/knox/SemPersonaInfo;)Z

    move-result v0

    goto :goto_45
.end method

.method private handleFOTAUpgrade(Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    const-string/jumbo v1, "PersonaManagerService:FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFOTAUpgrade -  knoxConatainerVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxContainerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", persona Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fotaUpgradeVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->handleFOTATimaUpgrade(Lcom/samsung/android/knox/SemPersonaInfo;)Z

    iget v7, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    const/16 v2, 0x9

    if-le v2, v1, :cond_5c

    const-string/jumbo v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "handleFOTAUpgrade() is called  for (2.9->3.0)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgradeToO(Lcom/samsung/android/knox/SemPersonaInfo;)V

    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    const/16 v1, 0x104

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    iget-boolean v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "handleFOTAUpgrade() KEA so not installing/disabling Admin inside Container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string/jumbo v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "handleFOTAUpgrade() MY KNOX so not installing/disabling Admin inside Container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_91
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    if-eq v1, v2, :cond_db

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v1, "PersonaManagerService:FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFOTAUpgrade() isInstalled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7e

    iget v1, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_7e

    :cond_db
    const-string/jumbo v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "handleFOTAUpgrade() BYOD so not installing/disabling Admin inside Container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method private handleFOTAUpgradeToO(Lcom/samsung/android/knox/SemPersonaInfo;)V
    .registers 19

    if-eqz p1, :cond_461

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO is called for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v7

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v14, v7, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v4, v13, v14}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v6

    if-eqz v6, :cond_70

    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.knox.containeragent"

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.knox.containercore"

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    :cond_70
    const/16 v12, 0x10

    and-int/lit16 v13, v5, 0x2000

    const/16 v14, 0x2000

    if-ne v13, v14, :cond_85

    const/high16 v13, 0x20000

    or-int/lit8 v12, v13, 0x10

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating secure folder flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-eqz v13, :cond_97

    const/high16 v13, 0x2000000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating user owned flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v13, :cond_a9

    const/high16 v13, 0x1000000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating light weight flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v13, :cond_bb

    const/high16 v13, 0x8000000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating kiosk mode flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v13, :cond_cd

    const/high16 v13, 0x4000000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating bbc container flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-eqz v13, :cond_101

    const/high16 v13, 0x20000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating secure folder flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_101

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "samsungaccount"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_101
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-nez v13, :cond_117

    const/high16 v13, 0x400000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating CL Container flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_117
    if-eqz v11, :cond_3cd

    const-string/jumbo v13, "KNOX"

    iget-object v14, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3cd

    const/high16 v13, 0x100000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating first container flags"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_130
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFileSystem()Z

    move-result v13

    if-eqz v13, :cond_142

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating eCryptfs flag"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_142
    if-eqz v12, :cond_153

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO adding flags in bundle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "flags"

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_153
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v13, :cond_174

    const/16 v1, 0x40

    const-string/jumbo v13, "knoxid.reset_on_reboot"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/PersonaManagerService;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating reset on reboot attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    if-eqz v13, :cond_40a

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    :goto_17e
    if-eqz v9, :cond_412

    move-object v13, v9

    :goto_181
    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v8

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO persona state - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v8, v13, :cond_417

    or-int/lit8 v1, v1, 0x8

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating admin lock attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ae
    :goto_1ae
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    if-eqz v13, :cond_1bf

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    const-string/jumbo v14, "PASSWORD_CHANGE_REQUEST"

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    :cond_1bf
    sget-object v13, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-eq v8, v13, :cond_1cf

    const/high16 v13, 0x10000000

    or-int/2addr v1, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating premium container attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cf
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getIsQuickAccessUIEnabled()Z

    move-result v13

    if-eqz v13, :cond_1e0

    or-int/lit16 v1, v1, 0x100

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating trust agent UI enabled attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e0
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v13, :cond_1f1

    or-int/lit16 v1, v1, 0x80

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating external sdcard attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f1
    if-eqz v1, :cond_202

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO adding attributes in bundle"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "attributes"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_202
    const/high16 v13, 0x10000

    and-int/2addr v13, v5

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_23b

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_221

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_221

    const-string/jumbo v13, "name"

    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_221
    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO ecName - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23b
    const-string/jumbo v13, "fotaUpgradeVersion"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO fotaUpgradeVersion : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    if-eqz v13, :cond_27e

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO calling usermanager to migrate persona information "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v13, v14, v2}, Landroid/os/UserManager;->updateUserInfo(ILandroid/os/Bundle;)Z

    move-result v10

    :cond_27e
    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO updateUserInfo status - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating  Settings.System.IS_SHOWN_FOLDER_HELP "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "IS_SHOWN_FOLDER_HELP"

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    if-eqz v13, :cond_439

    const/4 v13, 0x1

    :goto_2b3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating Settings.System.IS_SHOWN_LAUNCHER_HELP "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "IS_SHOWN_LAUNCHER_HELP"

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    if-eqz v13, :cond_43c

    const/4 v13, 0x1

    :goto_2d9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v13, :cond_43f

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating Settings.System.KNOX_SETTINGS_KNOX_STYLE as FOLDER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "KNOX_SETTINGS_KNOX_STYLE"

    const-string/jumbo v15, "FOLDER"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_30a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "knox_screen_off_timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getKnoxSecurityTimeoutValue()I

    move-result v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v13, :cond_33e

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const-string/jumbo v14, "ExternalStorage"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/pm/PersonaManagerService;->setFeatureAccessPermission(ILjava/lang/String;Z)Z

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating external sdcard usage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33e
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    if-eqz v13, :cond_35a

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const-string/jumbo v14, "Bluetooth"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/pm/PersonaManagerService;->setFeatureAccessPermission(ILjava/lang/String;Z)Z

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating bluetooth usage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35a
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/PersonaManagerService;->migratePersonaPoliciesToMdmDb(I)Z

    move-result v10

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO migratePersonaPoliciesToMdmDb status - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v13, :cond_3a8

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/PersonaManagerService;->enableOwnerLaunchersForCOM(I)Z

    move-result v10

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO enableOwnerLaunchersForCOM status - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a8
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/PersonaManagerService;->migrateKnoxAppsData(I)Z

    move-result v10

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO migrateKnoxAppsData status - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3cc
    return-void

    :cond_3cd
    if-eqz v11, :cond_3e8

    const-string/jumbo v13, "KNOX II"

    iget-object v14, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e8

    const/high16 v13, 0x200000

    or-int/2addr v12, v13

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating second container flags"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    :cond_3e8
    const-string/jumbo v14, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleFOTAUpgradeToO neither first nor second container for user: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_407

    const/4 v13, 0x0

    :goto_402
    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    :cond_407
    iget-object v13, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_402

    :cond_40a
    sget-object v13, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v13}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_17e

    :cond_412
    const-string/jumbo v13, "INVALID"

    goto/16 :goto_181

    :cond_417
    sget-object v13, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v8, v13, :cond_428

    or-int/lit8 v1, v1, 0x10

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating license lock attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    :cond_428
    sget-object v13, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v8, v13, :cond_1ae

    or-int/lit8 v1, v1, 0x4

    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating device compromised attribute"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    :cond_439
    const/4 v13, 0x0

    goto/16 :goto_2b3

    :cond_43c
    const/4 v13, 0x0

    goto/16 :goto_2d9

    :cond_43f
    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO migrating Settings.System.KNOX_SETTINGS_KNOX_STYLE as LAUNCHER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "KNOX_SETTINGS_KNOX_STYLE"

    const-string/jumbo v15, "LAUNCHER"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_30a

    :cond_461
    const-string/jumbo v13, "PersonaManagerService:FOTA"

    const-string/jumbo v14, "handleFOTAUpgradeToO pInfo is null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3cc
.end method

.method private handleNotifyActivityDrawn(Landroid/os/Bundle;)V
    .registers 16

    :try_start_0
    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    const-string/jumbo v11, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v5

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleNotifyActivityDrawn for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", showwhenlocked : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", keyguardOwner : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_f9

    const/16 v11, -0x515

    if-eq v5, v11, :cond_f9

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v11

    if-eqz v11, :cond_a9

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v11

    if-eqz v11, :cond_a9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "KnoxKeyguardEventFlag"

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "forceHide"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.knox.securefolder"

    const-string/jumbo v13, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "return code : 0, id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    return-void

    :cond_a9
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "KnoxKeyguardEventFlag"

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "forceHide"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.knox.containeragent"

    const-string/jumbo v13, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "return code : 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_d9

    goto :goto_a8

    :catch_d9
    move-exception v1

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleNotifyActivityDrawn: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    :goto_f8
    return-void

    :cond_f9
    :try_start_f9
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-nez v11, :cond_109

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "return code : 2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_109
    if-nez v7, :cond_128

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v11}, Lcom/android/server/pm/PersonaManagerService;->shouldSuperLock(I)Z

    move-result v11

    if-eqz v11, :cond_128

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "return code : 3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_128
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_13c

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "return code : 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13c
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_15c

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v11, :cond_15c

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v11

    if-eqz v11, :cond_15c

    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "skip showing K in UltraPowerSavingMode"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15c
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v11

    if-eqz v11, :cond_f8

    const/16 v11, -0x515

    if-ne v5, v11, :cond_f8

    xor-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_f8

    const-string/jumbo v11, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    const-string/jumbo v11, "android.intent.extra.INTENT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    const-string/jumbo v11, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->createConfirmProfileCredentialIntent(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v8, :cond_193

    const-string/jumbo v11, "android.intent.extra.INTENT"

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_193
    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "MultiwindowRecord : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_1ad} :catch_d9

    :try_start_1ad
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1ef

    if-eqz v4, :cond_1bf

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f8

    :cond_1bf
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v2, v12}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startConfirmDeviceCredentialIntent for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1e1} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1e1} :catch_d9

    goto/16 :goto_f8

    :catch_1e3
    move-exception v0

    :try_start_1e4
    const-string/jumbo v11, "PersonaManagerService"

    const-string/jumbo v12, "Failed to start KnoxKeyguard"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1ed} :catch_d9

    goto/16 :goto_f8

    :cond_1ef
    :try_start_1ef
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v2, v12}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startConfirmDeviceCredentialIntent for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10}, Lcom/android/server/pm/PersonaManagerService;->hideMultiWindows(I)V
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_1ef .. :try_end_214} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_214} :catch_d9

    goto/16 :goto_f8
.end method

.method private handleWakeLockChange(ZIII)V
    .registers 11

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const v2, 0xffff

    and-int/2addr v2, p2

    sparse-switch v2, :sswitch_data_b2

    :cond_e
    :goto_e
    return-void

    :sswitch_f
    return-void

    :sswitch_10
    if-eqz v0, :cond_e

    if-eqz p1, :cond_62

    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->addOneWakeLockRequest(I)V

    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->getWakeLockRequests(I)I

    move-result v1

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakeLockRequestsNum in acquire : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, p4, v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->setWakeLockAcquired(IZ)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v2, p4}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutCancel(I)V

    goto :goto_e

    :cond_62
    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->removeOneWakeLockRequest(I)V

    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->getWakeLockRequests(I)I

    move-result v1

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakeLockRequestsNum in release : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v2, p4, v5}, Lcom/android/server/pm/KnoxTimeoutHandler;->setWakeLockAcquired(IZ)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v2, p4}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutReset(I)V

    goto/16 :goto_e

    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_10
        0xa -> :sswitch_10
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
    .end sparse-switch
.end method

.method private hideKeyguard(IZ)V
    .registers 8

    const/4 v4, 0x2

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hide knox keyguard, because owner\'s activity launched. keyguardOwner = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " forceHide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "forceHide"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_55
    :goto_55
    return-void

    :cond_56
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "forceHide"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    const-string/jumbo v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_55
.end method

.method private installAppForFota(Lcom/samsung/android/knox/SemPersonaInfo;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.providers.settings"

    aput-object v3, v1, v4

    const-string/jumbo v3, "com.google.android.partnersetup"

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string/jumbo v3, "com.android.settings"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string/jumbo v3, "com.android.chrome"

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const-string/jumbo v3, "com.android.defcontainer"

    const/4 v5, 0x4

    aput-object v3, v1, v5

    const/4 v0, 0x0

    array-length v5, v1

    move v3, v4

    :goto_24
    if-ge v3, v5, :cond_3a

    aget-object v2, v1, v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v6, v2, v4, v7}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_37

    iget v6, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method

.method private installContainerAgent3(I)Z
    .registers 22

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    const-string/jumbo v3, "install ContainerAgent3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "com.samsung.android.knox.containeragent"

    const/16 v4, 0x40

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    if-eqz v15, :cond_38

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ContainerAgent3 has been installed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_38
    const-wide/16 v10, 0x2710

    const-wide/16 v12, 0x64

    const-string/jumbo v8, "/system/priv-app/ContainerAgent3/ContainerAgent3.apk"

    const-string/jumbo v9, "com.samsung.android.knox.containeragent"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v3

    :goto_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    iget-boolean v2, v2, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->finished:Z
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_cf

    if-nez v2, :cond_da

    :try_start_7a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v16

    const-wide/16 v18, 0x2710

    cmp-long v2, v6, v18

    if-ltz v2, :cond_d2

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installContainerAgent3 havn\'t finished after waiting "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->finished:Z
    :try_end_ae
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_ae} :catch_af
    .catchall {:try_start_7a .. :try_end_ae} :catchall_cf

    goto :goto_72

    :catch_af
    move-exception v14

    :try_start_b0
    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installPackageAsUser:Excp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b0 .. :try_end_ce} :catchall_cf

    goto :goto_72

    :catchall_cf
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->wait(J)V
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_d2 .. :try_end_d9} :catch_af
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_cf

    goto :goto_72

    :cond_da
    monitor-exit v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    iget v2, v2, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_116

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installContainerAgent3 App : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is installed inside userid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    iget v2, v2, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13e

    const/4 v2, 0x1

    :goto_115
    return v2

    :cond_116
    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installContainerAgent3 App : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not installed inside userid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    :cond_13e
    const/4 v2, 0x0

    goto :goto_115
.end method

.method private installContainerCore(I)Z
    .registers 8

    const/16 v5, 0x40

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, "install ContainerCore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "com.samsung.android.knox.containercore"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ContainerCore has been installed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "com.samsung.android.knox.containercore"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_66

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ContainerCore has been installed for user0. so install existing package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "com.samsung.android.knox.containercore"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_64

    :goto_63
    return v1

    :cond_64
    move v1, v2

    goto :goto_63

    :cond_66
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    iget v3, v3, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;->result:I

    if-ne v3, v1, :cond_6d

    :goto_6c
    return v1

    :cond_6d
    move v1, v2

    goto :goto_6c
.end method

.method private installExistingPackageForPersona(ILjava/lang/String;)I
    .registers 8

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "packageAlreadyInstalled is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " installExistingPackageForPersona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_66

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Failure to install package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " package manager result code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_66
    const/4 v1, 0x0

    return v1

    :cond_68
    return v4
.end method

.method private installKnoxApps(I)Z
    .registers 8

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installKnoxApps is called for userid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-string/jumbo v0, "com.sec.android.app.launcher"

    :try_start_1e
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->enableLauncher(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->installContainerAgent3(I)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_26

    const/4 v2, 0x1

    :goto_25
    return v2

    :catch_26
    move-exception v1

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installKnoxApps() exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private isBiometricsEnabledAfterFota(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dedicated_biometrics"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isDesktopMode(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDesktopModeEnabled:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_11

    if-ne v3, v1, :cond_f

    :goto_e
    return v1

    :cond_f
    move v1, v2

    goto :goto_e

    :catch_11
    move-exception v0

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v3, "isDesktopMode check failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isKnoxBluetoothSupported()Z
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    return v0
.end method

.method private isMultifactorAuthenticationEnforced(II)Z
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "propertyValue"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "cid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "propertyName"

    const-string/jumbo v7, "MultifactorAuthentication"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v6, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v6, :cond_5c

    const-string/jumbo v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " EnforceAuthForContainer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c7

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v9, "propertyValue"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "propertyValue"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c7

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "CONTAINER_POLICY"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_c7

    const-string/jumbo v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "isMultifactorAuthenticationEnforced : cleaned entry from container policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c7} :catch_c8

    :cond_c7
    :goto_c7
    return v5

    :catch_c8
    move-exception v2

    const-string/jumbo v6, "PersonaManagerService:FOTA"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method

.method private isMyKnoxContainer(I)Z
    .registers 7

    const-string/jumbo v0, "com.samsung.knoxpb.mdm"

    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knoxpb.mdm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_28
    const/4 v4, 0x1

    return v4

    :cond_2a
    const/4 v4, 0x0

    return v4
.end method

.method private isOneLockOngoing(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enable_one_lock_ongoing"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isPwdChangeRequested(I)Z
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    move-result v2

    if-lez v2, :cond_18

    const/4 v2, 0x1

    return v2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    return v3
.end method

.method private isSecureFolderSupported()Z
    .registers 3

    const-string/jumbo v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isShareClipboardDataToOwnerAllowed(II)Z
    .registers 16

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isShareClipboardDataToOwnerAllowed is called for personaId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v2, v11

    const-string/jumbo v10, "propertyValue"

    const/4 v11, 0x1

    aput-object v10, v2, v11

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "name"

    const-string/jumbo v11, "Clipboard"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "propertyName"

    const-string/jumbo v11, "knox-export-data"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    const-string/jumbo v11, "RCP_DATA"

    invoke-virtual {v10, v11, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_110

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_110

    const/4 v10, -0x1

    if-eq p1, v10, :cond_110

    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isShareClipboardDataToOwnerAllowed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v10, "adminUid"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_7a

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_9a
    if-eqz v7, :cond_110

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "name"

    const-string/jumbo v11, "Clipboard"

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "propertyName"

    const-string/jumbo v11, "knox-export-data"

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    const-string/jumbo v11, "RCP_DATA"

    invoke-virtual {v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_110

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removing clipboard export entry for admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "has got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " results"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    const-string/jumbo v11, "RCP_DATA"

    invoke-virtual {v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    if-lez v10, :cond_110

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    const-string/jumbo v11, "Clipboard entry is successfully removed..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    const-string/jumbo v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isShareClipboardDataToOwnerAllowed: status "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private isUserBeingRemoved(I)Z
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_d

    const/4 v3, 0x0

    return v3

    :cond_1f
    return v4
.end method

.method private killKnoxLauncher(I)V
    .registers 10

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v2, v7, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_1d

    return-void

    :cond_1d
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-string/jumbo v6, "com.sec.knox.home.crossprofilefilter"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v1

    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "killKnoxLauncher Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method private loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 14

    const/4 v9, 0x0

    :try_start_1
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading default resources - packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", defaultIconRes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_69} :catch_6b

    move-result-object v6

    return-object v6

    :catch_6b
    move-exception v2

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to load icon from default resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return-object v9
.end method

.method private makeShareDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p2, v4}, Lcom/android/server/pm/PackageManagerService;->createEncAppData(Ljava/lang/String;I)Z

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "set directory to share"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "set policy to share"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method private mayResetOnRebootforCOM(I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserReset(I)V

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " startResetPersona - account has been reset for user -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->triggerAppUninstallationonReset(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaDataPartition(I)Z

    move-result v1

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetPersonaDataPartition for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValue(I)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->recorverNotificationSound()V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v5, 0x9

    invoke-static {v4, p1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    return-void
.end method

.method private migrateAndCleanupSharedPreferences(I)V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateAndCleanupSharedPreferences id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AllowedInstallerListForUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_ac

    const/4 v0, 0x0

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fota update: ime list from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    :cond_6d
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_ad

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fota update: install whitelist from SP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    :goto_a1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_ac
    return-void

    :cond_ad
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_a1
.end method

.method private migrateKnoxAppsData(I)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->uninstallKnoxCoreInsideContainer(I)Z

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->installContainerCore(I)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->installContainerAgent3(I)Z

    move-result v2

    if-eqz v2, :cond_37

    :goto_15
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->copyUserData(I)Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_1b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->copySystemData()Z

    move-result v2

    if-eqz v2, :cond_3b

    :goto_21
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableLauncherFromFolderContainer(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    :goto_27
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableSamsunAppsForLWC(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_2d
    :goto_2d
    const-string/jumbo v2, "com.sec.knox.home.crossprofilefilter"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_43

    move-result v2

    if-eqz v2, :cond_41

    :goto_36
    return v1

    :cond_37
    const/4 v1, 0x0

    goto :goto_15

    :cond_39
    const/4 v1, 0x0

    goto :goto_1b

    :cond_3b
    const/4 v1, 0x0

    goto :goto_21

    :cond_3d
    const/4 v1, 0x0

    goto :goto_27

    :cond_3f
    const/4 v1, 0x0

    goto :goto_2d

    :cond_41
    const/4 v1, 0x0

    goto :goto_36

    :catch_43
    move-exception v0

    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateKnoxAppsData Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private migratePersonaPoliciesToMdmDb(I)Z
    .registers 29

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migratePersonaPoliciesToMdmDb personaId - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, p1

    invoke-direct {v8, v4, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/16 v20, 0x1

    :try_start_33
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb Installer whitelist MIGRATION started...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/knox/AppIdentity;

    const-string/jumbo v25, ".*"

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v8, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    sget-object v23, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_282

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_282

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_71
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_28b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_8f

    const-string/jumbo v23, "com.sec.knox.containeragent2"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8f

    const-string/jumbo v16, "com.samsung.android.knox.containeragent"

    :cond_8f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/knox/AppIdentity;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v8, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v23

    if-nez v23, :cond_27e

    const/16 v19, 0x1

    :goto_b0
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migratePersonaPoliciesToMdmDb install whitelist package migrate result - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " for package - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_dd} :catch_de

    goto :goto_71

    :catch_de
    move-exception v9

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migrateXmlToMdmDb Installer whitelist exception - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    :goto_100
    :try_start_100
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb External Storage whitelist MIGRATION started...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getExternalStorageWhitelistedPackages(I)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_29a

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_29a

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migratePersonaPoliciesToMdmDb External Storage whiteistedApps size "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_137
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v23

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v8, v1, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v23

    if-nez v23, :cond_296

    const/16 v19, 0x1

    :goto_155
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migratePersonaPoliciesToMdmDb external storage package migrate result - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " for package - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_182} :catch_183

    goto :goto_137

    :catch_183
    move-exception v10

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migrateXmlToMdmDb External Storage whitelist exception - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    :goto_1a5
    :try_start_1a5
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb Blacklist all apps inside container for External storage started"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/knox/AppIdentity;

    const-string/jumbo v25, ".*"

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v8, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb Blacklist all apps inside container for External storage ended"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1d0} :catch_2ae

    :goto_1d0
    :try_start_1d0
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb External MultifactorAuthentication MIGRATION started...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PersonaManagerService;->isMultifactorAuthenticationEnforced(II)Z

    move-result v14

    if-eqz v14, :cond_2d2

    const-string/jumbo v23, "password_policy"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v18, :cond_216

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v19

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migratePersonaPoliciesToMdmDb MultifactorAuthentication result - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    :goto_216
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb MultifactorAuthentication MIGRATION ended...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_21f} :catch_2dd

    :goto_21f
    :try_start_21f
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb CLIPBAORD data sharing MIGRATION started...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PersonaManagerService;->isShareClipboardDataToOwnerAllowed(II)Z

    move-result v5

    const-string/jumbo v23, "user"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    check-cast v21, Landroid/os/IUserManager;

    const-string/jumbo v23, "no_cross_profile_copy_paste"

    xor-int/lit8 v24, v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, " migratePersonaPoliciesToMdmDb setUserRestriction:value = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " personaId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb CLIPBAORD data sharing MIGRATION ended...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_27d} :catch_301

    :goto_27d
    return v20

    :cond_27e
    const/16 v19, 0x0

    goto/16 :goto_b0

    :cond_282
    :try_start_282
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb Installer whitelist is empty..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28b
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb Installer whitelist MIGRATION ended...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_294} :catch_de

    goto/16 :goto_100

    :cond_296
    const/16 v19, 0x0

    goto/16 :goto_155

    :cond_29a
    :try_start_29a
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb external storage db is empty..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a3
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb External Storage whitelist MIGRATION ended...."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2ac} :catch_183

    goto/16 :goto_1a5

    :catch_2ae
    move-exception v11

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migrateXmlToMdmDb External Storage blacklist exception - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    goto/16 :goto_1d0

    :cond_2d2
    :try_start_2d2
    const-string/jumbo v23, "PersonaManagerService:FOTA"

    const-string/jumbo v24, "migratePersonaPoliciesToMdmDb MultifactorAuthentication is disabled. No migration needed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2db} :catch_2dd

    goto/16 :goto_216

    :catch_2dd
    move-exception v12

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migrateXmlToMdmDb MultifactorAuthenticationt exception - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    goto/16 :goto_21f

    :catch_301
    move-exception v13

    const-string/jumbo v23, "PersonaManagerService:FOTA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "migrateXmlToMdmDb CLIPBAORD data sharing exception - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    goto/16 :goto_27d
.end method

.method private parseEnterprisedataXml()V
    .registers 10

    iget-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    if-eqz v6, :cond_53

    const/4 v3, 0x0

    :try_start_5
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_54

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_5e
    .catchall {:try_start_5 .. :try_end_34} :catchall_86

    :try_start_34
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4d} :catch_92
    .catchall {:try_start_34 .. :try_end_4d} :catchall_8f

    move-object v3, v4

    :goto_4e
    if-eqz v3, :cond_53

    :try_start_50
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_84

    :cond_53
    :goto_53
    return-void

    :cond_54
    :try_start_54
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e
    .catchall {:try_start_54 .. :try_end_5d} :catchall_86

    goto :goto_4e

    :catch_5e
    move-exception v0

    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_86

    if-eqz v3, :cond_53

    :try_start_7e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_53

    :catch_82
    move-exception v0

    goto :goto_53

    :catch_84
    move-exception v0

    goto :goto_53

    :catchall_86
    move-exception v6

    :goto_87
    if-eqz v3, :cond_8c

    :try_start_89
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    :cond_8c
    :goto_8c
    throw v6

    :catch_8d
    move-exception v0

    goto :goto_8c

    :catchall_8f
    move-exception v6

    move-object v3, v4

    goto :goto_87

    :catch_92
    move-exception v0

    move-object v3, v4

    goto :goto_5f
.end method

.method private preMountPartition()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/android/server/KnoxFileHandler;

    invoke-virtual {v2}, Lcom/android/server/KnoxFileHandler;->preMount()Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "Failed to Pre-mount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return v1

    :cond_13
    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "Success to Pre-mount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_12

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private printLastTimeToBackground()V
    .registers 6

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "print lastTimeToBackground size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lastTimeToBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_62
    return-void
.end method

.method private readAppTypeList(ILjava/lang/String;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_44

    const/4 v15, 0x0

    return-object v15

    :cond_44
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_47
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_4c} :catch_cc
    .catchall {:try_start_47 .. :try_end_4c} :catchall_ee

    :try_start_4c
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const/4 v15, 0x0

    invoke-interface {v8, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_58
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_62

    const/4 v15, 0x1

    if-ne v14, v15, :cond_58

    :cond_62
    const/4 v15, 0x2

    if-eq v14, v15, :cond_73

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_6a} :catch_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_6a} :catch_105
    .catchall {:try_start_4c .. :try_end_6a} :catchall_f7

    const/4 v15, 0x0

    if-eqz v5, :cond_70

    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    :cond_70
    :goto_70
    return-object v15

    :catch_71
    move-exception v3

    goto :goto_70

    :cond_73
    const/4 v7, 0x0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_91

    :try_start_77
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_91

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "appType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_91

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_91
    if-eqz v7, :cond_c3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_c3

    const-string/jumbo v15, ","

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_ab} :catch_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_ab} :catch_105
    .catchall {:try_start_77 .. :try_end_ab} :catchall_f7

    const/4 v15, 0x2

    :try_start_ac
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-string/jumbo v16, ""

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_c2} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_c2} :catch_108
    .catchall {:try_start_ac .. :try_end_c2} :catchall_fa

    move-object v12, v13

    :cond_c3
    if-eqz v5, :cond_c8

    :try_start_c5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_ca

    :cond_c8
    :goto_c8
    move-object v1, v2

    :cond_c9
    :goto_c9
    return-object v12

    :catch_ca
    move-exception v3

    goto :goto_c8

    :catch_cc
    move-exception v10

    :goto_cd
    :try_start_cd
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_ee

    if-eqz v5, :cond_c9

    :try_start_d7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_c9

    :catch_db
    move-exception v3

    goto :goto_c9

    :catch_dd
    move-exception v6

    :goto_de
    :try_start_de
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_ee

    if-eqz v5, :cond_c9

    :try_start_e8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_c9

    :catch_ec
    move-exception v3

    goto :goto_c9

    :catchall_ee
    move-exception v15

    :goto_ef
    if-eqz v5, :cond_f4

    :try_start_f1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5

    :cond_f4
    :goto_f4
    throw v15

    :catch_f5
    move-exception v3

    goto :goto_f4

    :catchall_f7
    move-exception v15

    move-object v1, v2

    goto :goto_ef

    :catchall_fa
    move-exception v15

    move-object v1, v2

    move-object v12, v13

    goto :goto_ef

    :catch_fe
    move-exception v6

    move-object v1, v2

    goto :goto_de

    :catch_101
    move-exception v6

    move-object v1, v2

    move-object v12, v13

    goto :goto_de

    :catch_105
    move-exception v10

    move-object v1, v2

    goto :goto_cd

    :catch_108
    move-exception v10

    move-object v1, v2

    move-object v12, v13

    goto :goto_cd
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    return v2

    :catch_d
    move-exception v0

    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 10

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    :catch_d
    move-exception v0

    return-wide p3
.end method

.method private readPersonaCacheLocked()V
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x2

    const-string/jumbo v9, "PersonaManagerService"

    const-string/jumbo v10, "readPersonaCacheLocked is called..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v6, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v6, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_13
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v12, :cond_27

    if-ne v7, v13, :cond_1f

    :cond_27
    if-eq v7, v12, :cond_3d

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo v9, "PersonaManagerService"

    const-string/jumbo v10, "Unable to read persona cache"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_35} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_35} :catch_a2
    .catchall {:try_start_13 .. :try_end_35} :catchall_b3

    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    goto :goto_3a

    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v13, :cond_9a

    if-ne v7, v12, :cond_3d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "cache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PersonaCache entry - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_8c} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_8c} :catch_a2
    .catchall {:try_start_3d .. :try_end_8c} :catchall_b3

    goto :goto_3d

    :catch_8d
    move-exception v2

    :try_start_8e
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_b3

    if-eqz v1, :cond_99

    :try_start_96
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_b1

    :cond_99
    :goto_99
    return-void

    :cond_9a
    if-eqz v1, :cond_99

    :try_start_9c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_99

    :catch_a0
    move-exception v0

    goto :goto_99

    :catch_a2
    move-exception v5

    :try_start_a3
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_b3

    if-eqz v1, :cond_99

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_99

    :catch_af
    move-exception v0

    goto :goto_99

    :catch_b1
    move-exception v0

    goto :goto_99

    :catchall_b3
    move-exception v9

    if-eqz v1, :cond_b9

    :try_start_b6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    :cond_b9
    :goto_b9
    throw v9

    :catch_ba
    move-exception v0

    goto :goto_b9
.end method

.method private readUser(II)Lcom/samsung/android/knox/SemPersonaInfo;
    .registers 109

    const/16 v76, 0x0

    const/16 v99, 0x0

    const/16 v23, 0x0

    move-object/from16 v100, v99

    move/from16 v77, v76

    :goto_a
    add-int/lit8 v76, v77, 0x1

    const/16 v102, 0x3

    move/from16 v0, v77

    move/from16 v1, v102

    if-ge v0, v1, :cond_9f3

    const/16 v88, 0x0

    const/16 v69, 0x0

    const/16 v24, 0x0

    const/16 v16, -0x1

    const/16 v96, 0x0

    const/16 v92, -0x1

    const/16 v94, -0x1

    const/16 v95, -0x1

    const/16 v93, -0x1

    const-wide/16 v60, 0x0

    const/16 v19, 0x0

    const/16 v78, 0x0

    const/16 v62, 0x0

    const/16 v71, 0x0

    const/16 v83, 0x1

    const/16 v54, 0x0

    const/16 v37, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v50, 0x0

    const/16 v46, 0x0

    const/16 v74, 0x0

    const/16 v45, 0x0

    const/16 v49, 0x0

    const/16 v35, 0x0

    const/16 v52, 0x0

    const-string/jumbo v11, ""

    const/16 v44, 0x0

    const-string/jumbo v85, ""

    const-string/jumbo v7, ""

    const/4 v9, -0x1

    const-string/jumbo v66, "default"

    const/16 v32, 0x0

    const/16 v29, 0x0

    const/16 v64, 0x0

    const/16 v27, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v81, 0x0

    const/16 v79, 0x0

    const/16 v39, 0x1

    const v58, 0x927c0

    const-string/jumbo v57, ""

    const/16 v87, 0x0

    const/16 v86, 0x0

    const/16 v41, 0x0

    const/16 v48, 0x0

    const/16 v42, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    if-eqz v23, :cond_84

    :try_start_7f
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_12c

    const/16 v23, 0x0

    :cond_84
    :goto_84
    const/16 v43, 0x0

    :try_start_86
    new-instance v99, Landroid/util/AtomicFile;

    new-instance v102, Ljava/io/File;

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v104, v0

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v103

    sget-object v104, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v104

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    new-instance v104, Ljava/lang/StringBuilder;

    invoke-direct/range {v104 .. v104}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string/jumbo v105, ".xml"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v104 .. v104}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v104

    invoke-direct/range {v102 .. v104}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v99

    move-object/from16 v1, v102

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_cd} :catch_9f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_cd} :catch_9d4
    .catchall {:try_start_86 .. :try_end_cd} :catchall_9e8

    :try_start_cd
    invoke-virtual/range {v99 .. v99}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v23

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v59

    const/16 v102, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v23

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_e0
    invoke-interface/range {v59 .. v59}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v97

    const/16 v102, 0x2

    move/from16 v0, v97

    move/from16 v1, v102

    if-eq v0, v1, :cond_f4

    const/16 v102, 0x1

    move/from16 v0, v97

    move/from16 v1, v102

    if-ne v0, v1, :cond_e0

    :cond_f4
    const/16 v102, 0x2

    move/from16 v0, v97

    move/from16 v1, v102

    if-eq v0, v1, :cond_134

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "Trying from backup file. Unable to read user "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_121} :catch_9b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_121} :catch_9fc
    .catchall {:try_start_cd .. :try_end_121} :catchall_9f6

    if-eqz v23, :cond_126

    :try_start_123
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_132

    :cond_126
    :goto_126
    move-object/from16 v100, v99

    move/from16 v77, v76

    goto/16 :goto_a

    :catch_12c
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_84

    :catch_132
    move-exception v18

    goto :goto_126

    :cond_134
    const/16 v102, 0x2

    move/from16 v0, v97

    move/from16 v1, v102

    if-ne v0, v1, :cond_771

    :try_start_13c
    invoke-interface/range {v59 .. v59}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v102

    if-eqz v102, :cond_771

    invoke-interface/range {v59 .. v59}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v102

    const-string/jumbo v103, "user"

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_771

    const-string/jumbo v102, "id"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v90

    move/from16 v0, v90

    move/from16 v1, p1

    if-eq v0, v1, :cond_183

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo v102, "PersonaManagerService"

    const-string/jumbo v103, "Trying from backup file. User id does not match the file name"

    invoke-static/range {v102 .. v103}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_176} :catch_9b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13c .. :try_end_176} :catch_9fc
    .catchall {:try_start_13c .. :try_end_176} :catchall_9f6

    if-eqz v23, :cond_17b

    :try_start_178
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_181

    :cond_17b
    :goto_17b
    move-object/from16 v100, v99

    move/from16 v77, v76

    goto/16 :goto_a

    :catch_181
    move-exception v18

    goto :goto_17b

    :cond_183
    :try_start_183
    const-string/jumbo v102, "fwversion"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_197

    const-string/jumbo v29, ""

    :cond_197
    const-string/jumbo v102, "authenticationType"

    const/16 v103, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v102, "personaFwkVersion"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v64

    const-string/jumbo v102, "fotaupgradeversion"

    const/16 v103, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    const/16 v102, 0x9

    move/from16 v0, v27

    move/from16 v1, v102

    if-eq v0, v1, :cond_1da

    const/16 v102, 0x1

    move/from16 v0, v102

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    :cond_1da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "readUser : fwversion = "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, "; fotaupgradeversion = "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, "; devFwVersion = "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, "; personaFwkVersion = "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, " ; isFotaUpgradeVersionChanged = "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    move/from16 v104, v0

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v102, "flags"

    const/16 v103, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    const-string/jumbo v102, "lastLoggedOut"

    const-wide/16 v104, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move-wide/from16 v3, v104

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v60

    const-string/jumbo v102, "encryptedId"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v102, "samsungAccount"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    const-string/jumbo v102, "partial"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    const-string/jumbo v102, "removePersona"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    const-string/jumbo v102, "setupComplete"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    const-string/jumbo v102, "isUserManaged"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string/jumbo v102, "isEnabledFingerprintIndex"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v102, "isSdpMinor"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string/jumbo v102, "isLightWeightContainer"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string/jumbo v102, "resetPassword"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    const-string/jumbo v102, "kioskModeEnabled"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v102, "resetPersonaOnReboot"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    const-string/jumbo v102, "isBBCContainer"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v102, "isSecureFolder"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v102, "true"

    const-string/jumbo v103, "canUseExtSdcard"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v17, :cond_372

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    xor-int/lit8 v102, v102, 0x1

    if-eqz v102, :cond_372

    const/16 v43, 0x1

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "isFotaUpdate "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_372
    const-string/jumbo v102, "oldState"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_822

    :goto_383
    invoke-static/range {v70 .. v70}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v69

    const-string/jumbo v102, "personastate"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    if-eqz v89, :cond_827

    :goto_398
    invoke-static/range {v89 .. v89}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v88

    const-string/jumbo v102, "containerAttributes"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v102, "fsMounted"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v102, "personatype"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    const-string/jumbo v102, "sdpEnabled"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    const-string/jumbo v102, "sdpActive"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    const-string/jumbo v102, "isEncoding"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v102, "cmkFormat"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v102, "setupapklocation"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    const-string/jumbo v102, "adminpackagename"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v102, "adminuid"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "adminPackageName "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v43, :cond_517

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidFromEnterpriseDB(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/pm/PersonaManagerService;->getAdminNameFromEnterpriseDB(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_82c

    const/4 v8, 0x0

    :goto_461
    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "adminNameInDB "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "adminPkgInDB "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_517

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    xor-int/lit8 v102, v102, 0x1

    if-eqz v102, :cond_517

    move-object v7, v8

    move v9, v10

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "adminPackageName is replaced by adminPkgInDB: "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, "<-"

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "adminUid is replaced by adminUidInDB: "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v103

    const-string/jumbo v104, "<-"

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mFotaMyKnoxUsers:Ljava/util/List;

    move-object/from16 v102, v0

    if-nez v102, :cond_50a

    new-instance v102, Ljava/util/ArrayList;

    invoke-direct/range {v102 .. v102}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v102

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mFotaMyKnoxUsers:Ljava/util/List;

    :cond_50a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mFotaMyKnoxUsers:Ljava/util/List;

    move-object/from16 v102, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v103

    invoke-interface/range {v102 .. v103}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_517
    const-string/jumbo v102, "timaVersion"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    const-string/jumbo v102, "timaEcrytfsIndex"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v92

    const-string/jumbo v102, "timaPasswordIndex"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v94

    const-string/jumbo v102, "timaPwdResetTokenIndex"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v95

    const-string/jumbo v102, "timaPasswordHintIndex"

    const/16 v103, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v93

    const-string/jumbo v102, "creatorUid"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v102, "installedPkgList"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v102, "true"

    const-string/jumbo v103, "canUseBluetooth"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string/jumbo v102, "securityTimeout"

    const/high16 v103, -0x10000

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v102

    move/from16 v3, v103

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v58

    sget-object v102, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v103

    invoke-interface/range {v102 .. v103}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v102

    if-nez v102, :cond_5df

    sget-object v103, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v104

    const/high16 v102, -0x10000

    move/from16 v0, v58

    move/from16 v1, v102

    if-eq v0, v1, :cond_841

    sget-object v102, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5cb
    move-object/from16 v0, v103

    move-object/from16 v1, v104

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v102, -0x10000

    move/from16 v0, v58

    move/from16 v1, v102

    if-ne v0, v1, :cond_5df

    const v58, 0x927c0

    :cond_5df
    const-string/jumbo v102, "CreationElapsedTime"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_5fd

    const/16 v62, 0x1

    :cond_5fd
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_60c

    const/16 v71, 0x1

    :cond_60c
    const-string/jumbo v102, "false"

    move-object/from16 v0, v102

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_61b

    const/16 v83, 0x0

    :cond_61b
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_62a

    const/16 v54, 0x1

    :cond_62a
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_639

    const/16 v37, 0x1

    :cond_639
    const-string/jumbo v102, "fingerprintIndex"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v102, "fingerprintHash"

    const/16 v103, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v103

    move-object/from16 v2, v102

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_666

    const/16 v50, 0x1

    :cond_666
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_675

    const/16 v46, 0x1

    :cond_675
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_684

    const/16 v74, 0x1

    :cond_684
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_693

    const/16 v44, 0x1

    :cond_693
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6a2

    const/16 v45, 0x1

    :cond_6a2
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6b1

    const/16 v49, 0x1

    :cond_6b1
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6c0

    const/16 v81, 0x1

    :cond_6c0
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6cf

    const/16 v79, 0x1

    :cond_6cf
    const-string/jumbo v102, "false"

    move-object/from16 v0, v102

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6de

    const/16 v39, 0x0

    :cond_6de
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6ed

    const/16 v35, 0x1

    :cond_6ed
    const-string/jumbo v102, "true"

    move-object/from16 v0, v102

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v102

    if-eqz v102, :cond_6fc

    const/16 v52, 0x1

    :cond_6fc
    if-eqz v98, :cond_700

    move-object/from16 v66, v98

    :cond_700
    if-nez v96, :cond_705

    const-string/jumbo v96, "0.0"

    :cond_705
    const-string/jumbo v102, "true"

    const-string/jumbo v103, "shownLauncherHelp"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    const-string/jumbo v102, "true"

    const-string/jumbo v103, "shownFolderHelp"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v86

    const-string/jumbo v102, "true"

    const-string/jumbo v103, "isEulaShown"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    const-string/jumbo v102, "true"

    const-string/jumbo v103, "isQuickAccessUIEnabled"

    const/16 v104, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v104

    move-object/from16 v2, v103

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    :cond_75d
    invoke-interface/range {v59 .. v59}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v97

    const/16 v102, 0x2

    move/from16 v0, v97

    move/from16 v1, v102

    if-eq v0, v1, :cond_771

    const/16 v102, 0x1

    move/from16 v0, v97

    move/from16 v1, v102

    if-ne v0, v1, :cond_75d

    :cond_771
    new-instance v65, Lcom/samsung/android/knox/SemPersonaInfo;

    move-object/from16 v0, v65

    move/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, p2

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/SemPersonaInfo;-><init>(IIII)V

    move-wide/from16 v0, v60

    move-object/from16 v2, v65

    iput-wide v0, v2, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    move-object/from16 v0, v19

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    move/from16 v0, v62

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    move/from16 v0, v71

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    move/from16 v0, v83

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    move-object/from16 v0, v66

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    move-object/from16 v0, v65

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    move-object/from16 v0, v65

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/SemPersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    move-object/from16 v0, v65

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/SemPersonaInfo;->setAdminUid(I)V

    move-object/from16 v0, v96

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    move-object/from16 v0, v65

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setTimaEcrytfsIndex(I)V

    move-object/from16 v0, v65

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setTimaPasswordIndex(I)V

    move-object/from16 v0, v65

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setTimaPwdResetTokenIndex(I)V

    move-object/from16 v0, v65

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setTimaPasswordHintIndex(I)V

    move-object/from16 v0, v65

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    move/from16 v0, v54

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    move/from16 v0, v37

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    if-eqz v22, :cond_84c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v102

    xor-int/lit8 v102, v102, 0x1

    if-eqz v102, :cond_84c

    const-string/jumbo v102, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v102, v0

    move/from16 v0, v102

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/16 v31, 0x0

    :goto_80c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v102, v0

    move/from16 v0, v31

    move/from16 v1, v102

    if-ge v0, v1, :cond_845

    aget-object v102, v20, v31

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v102

    aput v102, v33, v31

    add-int/lit8 v31, v31, 0x1

    goto :goto_80c

    :cond_822
    const-string/jumbo v70, "INVALID"

    goto/16 :goto_383

    :cond_827
    const-string/jumbo v89, "INVALID"

    goto/16 :goto_398

    :cond_82c
    const-string/jumbo v102, "/"

    move-object/from16 v0, v102

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v102

    const/16 v103, 0x0

    move/from16 v0, v103

    move/from16 v1, v102

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_461

    :cond_841
    sget-object v102, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_5cb

    :cond_845
    move-object/from16 v0, v65

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setFingerprintIndexList([I)V

    :cond_84c
    if-eqz v21, :cond_895

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v102

    xor-int/lit8 v102, v102, 0x1

    if-eqz v102, :cond_895

    const-string/jumbo v102, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    new-instance v30, Ljava/util/ArrayList;

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v102

    move-object/from16 v0, v30

    move-object/from16 v1, v102

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v102, 0x2

    move/from16 v0, v102

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v102, v0

    const/16 v103, 0x0

    const/16 v104, 0x0

    aput-object v103, v102, v104

    const-string/jumbo v103, ""

    const/16 v104, 0x1

    aput-object v103, v102, v104

    invoke-static/range {v102 .. v102}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v102

    move-object/from16 v0, v30

    move-object/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v65

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setFingerprintHashList(Ljava/util/List;)V

    :cond_895
    move/from16 v0, v50

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move-object/from16 v0, v65

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/SemPersonaInfo;->setAuthenticationType(I)V

    move/from16 v0, v46

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    move/from16 v0, v74

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    move/from16 v0, v45

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    move/from16 v0, v49

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    move/from16 v0, v35

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    move/from16 v0, v52

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    move/from16 v0, v44

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    move-object/from16 v0, v29

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move/from16 v0, v64

    move-object/from16 v1, v65

    iput v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    move/from16 v0, v27

    move-object/from16 v1, v65

    iput v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    move-object/from16 v0, v65

    iput-boolean v14, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    move-object/from16 v0, v65

    iput-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    move/from16 v0, v81

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move-object/from16 v0, v65

    iput v15, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    move/from16 v0, v79

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    move-object/from16 v0, v65

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setEncodingRequired(Z)V

    move-object/from16 v0, v65

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setKnoxSecurityTimeoutValue(I)V

    if-eqz v32, :cond_969

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v102

    xor-int/lit8 v102, v102, 0x1

    if-eqz v102, :cond_969

    const-string/jumbo v102, "PersonaManagerService"

    new-instance v103, Ljava/lang/StringBuilder;

    invoke-direct/range {v103 .. v103}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v104, "readUser: Installed pkg list: "

    invoke-virtual/range {v103 .. v104}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    move-object/from16 v0, v103

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    invoke-static/range {v102 .. v103}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v102, ","

    move-object/from16 v0, v32

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v67

    new-instance v68, Ljava/util/ArrayList;

    invoke-static/range {v67 .. v67}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v102

    move-object/from16 v0, v68

    move-object/from16 v1, v102

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v102, 0x2

    move/from16 v0, v102

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v102, v0

    const/16 v103, 0x0

    const/16 v104, 0x0

    aput-object v103, v102, v104

    const-string/jumbo v103, ""

    const/16 v104, 0x1

    aput-object v103, v102, v104

    invoke-static/range {v102 .. v102}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v102

    move-object/from16 v0, v68

    move-object/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v65

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    :cond_969
    move/from16 v0, v87

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    move/from16 v0, v86

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    move/from16 v0, v41

    move-object/from16 v1, v65

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    move-object/from16 v0, v65

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaInfo;->setIsQuickAccessUIEnabled(Z)V

    invoke-virtual/range {v88 .. v88}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v102

    move-object/from16 v0, v102

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    if-eqz v11, :cond_9cc

    new-instance v102, Ljava/util/ArrayList;

    invoke-direct/range {v102 .. v102}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v102

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    new-instance v91, Ljava/util/StringTokenizer;

    const-string/jumbo v102, ":"

    move-object/from16 v0, v91

    move-object/from16 v1, v102

    invoke-direct {v0, v11, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a5
    invoke-virtual/range {v91 .. v91}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v102

    if-eqz v102, :cond_9cc

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    move-object/from16 v102, v0

    invoke-virtual/range {v91 .. v91}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v103

    invoke-interface/range {v102 .. v103}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b8
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_9b8} :catch_9b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_183 .. :try_end_9b8} :catch_9fc
    .catchall {:try_start_183 .. :try_end_9b8} :catchall_9f6

    goto :goto_9a5

    :catch_9b9
    move-exception v34

    :goto_9ba
    :try_start_9ba
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    :try_end_9c1
    .catchall {:try_start_9ba .. :try_end_9c1} :catchall_9f6

    if-eqz v23, :cond_9c6

    :try_start_9c3
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_9c6
    .catch Ljava/io/IOException; {:try_start_9c3 .. :try_end_9c6} :catch_9e6

    :cond_9c6
    :goto_9c6
    move-object/from16 v100, v99

    move/from16 v77, v76

    goto/16 :goto_a

    :cond_9cc
    if-eqz v23, :cond_9d1

    :try_start_9ce
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_9d1
    .catch Ljava/io/IOException; {:try_start_9ce .. :try_end_9d1} :catch_9d2

    :cond_9d1
    :goto_9d1
    return-object v65

    :catch_9d2
    move-exception v18

    goto :goto_9d1

    :catch_9d4
    move-exception v63

    move-object/from16 v99, v100

    :goto_9d7
    :try_start_9d7
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    :try_end_9de
    .catchall {:try_start_9d7 .. :try_end_9de} :catchall_9f6

    if-eqz v23, :cond_9c6

    :try_start_9e0
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_9e3
    .catch Ljava/io/IOException; {:try_start_9e0 .. :try_end_9e3} :catch_9e4

    goto :goto_9c6

    :catch_9e4
    move-exception v18

    goto :goto_9c6

    :catch_9e6
    move-exception v18

    goto :goto_9c6

    :catchall_9e8
    move-exception v102

    move-object/from16 v99, v100

    :goto_9eb
    if-eqz v23, :cond_9f0

    :try_start_9ed
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_9f0
    .catch Ljava/io/IOException; {:try_start_9ed .. :try_end_9f0} :catch_9f1

    :cond_9f0
    :goto_9f0
    throw v102

    :catch_9f1
    move-exception v18

    goto :goto_9f0

    :cond_9f3
    const/16 v102, 0x0

    return-object v102

    :catchall_9f6
    move-exception v102

    goto :goto_9eb

    :catch_9f8
    move-exception v34

    move-object/from16 v99, v100

    goto :goto_9ba

    :catch_9fc
    move-exception v63

    goto :goto_9d7
.end method

.method private readUserList()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readUserListLocked(I)V
    .registers 15

    const-string/jumbo v10, "PersonaManagerService"

    const-string/jumbo v11, "readUserListLocked"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "personalist.xml"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_8e

    sget-boolean v10, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v10, :cond_5e

    const-string/jumbo v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "File does not exists, creating it "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :try_start_5e
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_8e

    sget-boolean v10, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v10, :cond_8e

    const-string/jumbo v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_8e} :catch_bc

    :cond_8e
    :goto_8e
    const/4 v2, 0x0

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_94
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v5, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_a0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_aa

    const/4 v10, 0x1

    if-ne v8, v10, :cond_a0

    :cond_aa
    const/4 v10, 0x2

    if-eq v8, v10, :cond_e9

    const-string/jumbo v10, "PersonaManagerService"

    const-string/jumbo v11, "Unable to read persona list"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b6} :catch_120
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_b6} :catch_13b
    .catchall {:try_start_94 .. :try_end_b6} :catchall_14c

    if-eqz v2, :cond_bb

    :try_start_b8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_e7

    :cond_bb
    :goto_bb
    return-void

    :catch_bc
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :catch_e7
    move-exception v1

    goto :goto_bb

    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_12d

    const/4 v10, 0x2

    if-ne v8, v10, :cond_e9

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e9

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    const-string/jumbo v10, "id"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/android/server/pm/PersonaManagerService;->readUser(II)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v9

    if-eqz v9, :cond_e9

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v11, v9, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_11f} :catch_120
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e9 .. :try_end_11f} :catch_13b
    .catchall {:try_start_e9 .. :try_end_11f} :catchall_14c

    goto :goto_e9

    :catch_120
    move-exception v4

    :try_start_121
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_127
    .catchall {:try_start_121 .. :try_end_127} :catchall_14c

    if-eqz v2, :cond_12c

    :try_start_129
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_14a

    :cond_12c
    :goto_12c
    return-void

    :cond_12d
    :try_start_12d
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_133} :catch_120
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12d .. :try_end_133} :catch_13b
    .catchall {:try_start_12d .. :try_end_133} :catchall_14c

    if-eqz v2, :cond_12c

    :try_start_135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_12c

    :catch_139
    move-exception v1

    goto :goto_12c

    :catch_13b
    move-exception v6

    :try_start_13c
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_142
    .catchall {:try_start_13c .. :try_end_142} :catchall_14c

    if-eqz v2, :cond_12c

    :try_start_144
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_12c

    :catch_148
    move-exception v1

    goto :goto_12c

    :catch_14a
    move-exception v1

    goto :goto_12c

    :catchall_14c
    move-exception v10

    if-eqz v2, :cond_152

    :try_start_14f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    :cond_152
    :goto_152
    throw v10

    :catch_153
    move-exception v1

    goto :goto_152
.end method

.method private readUsersWithPersonaLocked()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x2

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_11

    :cond_10
    return-void

    :cond_11
    const/4 v1, 0x0

    new-instance v8, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_19
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_25
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_2d

    if-ne v6, v12, :cond_25

    :cond_2d
    if-eq v6, v11, :cond_43

    invoke-direct {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo v9, "PersonaManagerService"

    const-string/jumbo v10, "Unable to read user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3b} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_3b} :catch_8e
    .catchall {:try_start_19 .. :try_end_3b} :catchall_9f

    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v12, :cond_86

    if-ne v6, v11, :cond_43

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_43

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    const-string/jumbo v9, "id"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_78} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_78} :catch_8e
    .catchall {:try_start_43 .. :try_end_78} :catchall_9f

    goto :goto_43

    :catch_79
    move-exception v3

    :try_start_7a
    invoke-direct {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_9f

    if-eqz v1, :cond_85

    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_9d

    :cond_85
    :goto_85
    return-void

    :cond_86
    if-eqz v1, :cond_85

    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_85

    :catch_8c
    move-exception v0

    goto :goto_85

    :catch_8e
    move-exception v5

    :try_start_8f
    invoke-direct {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_9f

    if-eqz v1, :cond_85

    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_85

    :catch_9b
    move-exception v0

    goto :goto_85

    :catch_9d
    move-exception v0

    goto :goto_85

    :catchall_9f
    move-exception v9

    if-eqz v1, :cond_a5

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    :cond_a5
    :goto_a5
    throw v9

    :catch_a6
    move-exception v0

    goto :goto_a5
.end method

.method private recorverNotificationSound()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_sound"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_sound_2"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_sound"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_sound_2"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "registerContentObserver - 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_density_forced"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_size_forced"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V
    .registers 11

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/android/server/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/android/server/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " removing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_4e
    return-void
.end method

.method private removeKnoxBadge(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    if-eqz v1, :cond_41

    :try_start_5
    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "remove Knoxbadge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    if-eqz v1, :cond_36

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "remove Knoxbadge removeView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->isKnoxBadgeShown:Z

    :cond_36
    if-nez p1, :cond_41

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->currentbadgeId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->currentRot:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v0

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private removeOneWakeLockRequest(I)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getWakeLockRequests(I)I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRequestsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    monitor-exit v3

    return-void

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removePackageDirectory(ILjava/lang/String;)I
    .registers 5

    const/4 v1, -0x1

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_6

    return v1

    :cond_6
    return v1
.end method

.method private removeThirdPartyApksOnReset(ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez v3, :cond_15

    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "removePersonaHelper : packagesToBeUninstall is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p2, :cond_19

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_4b

    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, " uninstalling pkgs from finalpackagesToBeUnInstall"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    const/4 v5, 0x2

    invoke-direct {v4, p0, p1, v0, v5}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    :cond_4b
    return-void
.end method

.method private resetPersonaDataPartition(I)Z
    .registers 4

    const-string/jumbo v1, "resetPersonaDataPartition"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->cleanProviders(I)V

    :cond_f
    return v0
.end method

.method public static resolveHomeIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v6, "RESOLVE_HOME_INTENT"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p0, :cond_1d

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1d
    const-string/jumbo v3, "resolvedType"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "knox.container.proxy.EXTRA_RESOLVE_INFO"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_31

    const-string/jumbo v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v3, "knox.container.proxy.COMMAND_RESOLVE_HOME_INTENT"

    invoke-static {v3, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_6b

    const-string/jumbo v3, "knox.container.proxy.EXTRA_RESOLVE_INFO"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_6b

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " RESOLVE_HOME_INTENT: returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6b
    return-object v7
.end method

.method private restoreOwnerSettings()V
    .registers 10

    const-string/jumbo v7, "PersonaManagerService"

    const-string/jumbo v8, "restoreOwnerSettings is called. "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_system.xml"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_system.xml_for_com"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_22
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_secure.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_secure.xml_for_com"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-static {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_3b
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_global.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/data/system/users/0/settings_global.xml_for_com"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-static {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    const-string/jumbo v1, "PersonaManagerService.KeyMgnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveCMK() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cmkFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ContainerMasterK"

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDefaultSMSApplication()V
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.android.mms"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    const-string/jumbo v4, "com.android.mms"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_28
    return-void

    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_28

    :catch_37
    move-exception v0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    const-string/jumbo v4, "com.android.mms"

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_28
.end method

.method private setDefaultSettingsValue(I)V
    .registers 13

    const v10, 0x927c0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "knox_screen_off_timeout"

    invoke-static {v1, v5, v10, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_110

    :cond_2c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "caller_id_to_show_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_4b
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "knox_name"

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_f2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSMSApplication()V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->setNotificationPanelApps()V

    const-string/jumbo v5, "knox.power_button_instantly_locks"

    invoke-static {v1, v5, v9, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "mobile_data_question"

    invoke-static {v1, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "mobile_data"

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v1, v5, v9, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "do_not_show_help_popup_traybar"

    invoke-static {v1, v5, v9, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "air_button_onoff"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_detachment_option"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "user_dependent_mobile_settings"

    invoke-static {v1, v5, v9, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "kiosk_enabled"

    invoke-static {v1, v5, v9, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "air_cmd_use_minimized"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_information_preview"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_icon_label"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_list_scroll"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_link_preview"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_detachment_option"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "lock_to_app_exit_locked"

    invoke-static {v1, v5, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "edge_enable"

    invoke-static {v1, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "knox_screen_off_timeout"

    invoke-static {v1, v5, v10, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "KNOX_SETTINGS_KNOX_STYLE"

    const-string/jumbo v6, "LAUNCHER"

    invoke-static {v1, v5, v6, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_f2
    :try_start_f2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.samsungpass"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_10f

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsungpass_exists_in_owner"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_10f} :catch_131

    :cond_10f
    :goto_10f
    return-void

    :cond_110
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "caller_id_to_show_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_4b

    :catch_131
    move-exception v0

    const-string/jumbo v5, "PersonaManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f
.end method

.method private setFeatureAccessPermission(ILjava/lang/String;Z)Z
    .registers 14

    const/4 v9, 0x0

    const-string/jumbo v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureAccessPermission personaId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "featureType"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KnoxFeatureAccess"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_bc

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "featureValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KnoxFeatureAccess"

    invoke-virtual {v6, v7, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    :goto_74
    const-string/jumbo v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureAccessPermission is called for personaId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",enable - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",combinedUid - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_e2

    const-string/jumbo v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "setFeatureAccessPermission policy passed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_bc
    const-string/jumbo v6, "featureValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KnoxFeatureAccess"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    goto :goto_74

    :cond_e2
    const-string/jumbo v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "setFeatureAccessPermission policy failed..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private setKnoxExists([IZ)V
    .registers 11

    const/4 v5, 0x0

    if-eqz p1, :cond_43

    array-length v6, p1

    if-lez v6, :cond_43

    const-string/jumbo v0, "5"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, ":"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_31

    const-string/jumbo v6, "5"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    array-length v6, p1

    :goto_1d
    if-ge v5, v6, :cond_38

    aget v3, p1, v5

    const-string/jumbo v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_31
    const-string/jumbo v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_38
    const-string/jumbo v5, "sys.knox.exists"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-void

    :cond_43
    const-string/jumbo v5, "sys.knox.exists"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private setNaviBarWindowState(I)V
    .registers 6

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->currentWindowState:I

    if-eq v2, p1, :cond_2c

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->currentWindowState:I

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->currentWindowState:I

    if-nez v2, :cond_32

    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->currentHidden:Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2c

    const/4 v1, 0x0

    :try_start_16
    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "setKnoxWindowState showing badge"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    :cond_32
    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->currentWindowState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->currentHidden:Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->personaBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2c

    const/4 v1, 0x0

    :try_start_43
    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "setKnoxWindowState hiding badge"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0x34

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_59} :catch_5a

    goto :goto_2c

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method private setNotificationPanelApps()V
    .registers 13

    const/16 v11, 0xa

    const/4 v6, 0x0

    const-string/jumbo v5, "Wifi;MultiWindow;Location;SilentMode;AutoRotate;Bluetooth;NetworkBooster;MobileData;AirplaneMode;Nfc;SmartStay;PowerSaving;TorchLight;WiFiHotspot;"

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c5

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_qs_tiles"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c5

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_number_of_apps"

    invoke-static {v7, v8, v11, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    move v7, v6

    :goto_47
    if-ge v7, v8, :cond_6f

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_6f
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_rollback"

    invoke-static {v7, v8, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list"

    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_number_of_apps_rollback"

    invoke-static {v7, v8, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_number_of_apps"

    invoke-static {v7, v8, v11, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset_rollback"

    invoke-static {v7, v8, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset"

    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_c4
    return-void

    :cond_c5
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_147

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_qs_tiles"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_147

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    move v7, v6

    :goto_f9
    if-ge v7, v8, :cond_121

    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_11e
    add-int/lit8 v7, v7, 0x1

    goto :goto_f9

    :cond_121
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset_rollback"

    invoke-static {v7, v8, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list_for_reset"

    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "notification_panel_active_app_list"

    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_c4

    :cond_147
    :try_start_147
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getDefaultQuickSettings()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter"

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_156
    if-ge v6, v7, :cond_17e

    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_17b
    add-int/lit8 v6, v6, 0x1

    goto :goto_156

    :cond_17e
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sysui_qs_tiles"

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sysui_qs_tiles_rollback"

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_panel_active_number_of_apps"

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_panel_active_number_of_apps_rollback"

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_panel_active_number_of_apps"

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1ca} :catch_1cc

    goto/16 :goto_c4

    :catch_1cc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c4
.end method

.method private setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 10

    :try_start_0
    const-string/jumbo v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " setupDefaultOwnerLauncher is called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    :goto_3a
    return-void

    :catch_3b
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private shouldSuperLock(I)Z
    .registers 9

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    return v3

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(I)I

    move-result v0

    if-ne v0, v6, :cond_17

    return v3

    :cond_17
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-eqz v4, :cond_54

    const/4 v1, 0x1

    :cond_3f
    :goto_3f
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_53

    if-eqz v1, :cond_53

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v4

    if-eq v4, v6, :cond_53

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    :cond_53
    return v3

    :cond_54
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-nez v4, :cond_3f

    const/4 v1, 0x1

    goto :goto_3f
.end method

.method private triggerAppUninstallationonReset(I)V
    .registers 12

    const/4 v6, 0x0

    const-string/jumbo v7, "PersonaManagerService"

    const-string/jumbo v8, " Collecting restricted apps list "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :try_start_f
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    array-length v7, v4

    :goto_2f
    if-ge v6, v7, :cond_3d

    aget-object v3, v4, v6

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_39

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Collecting restricted apps "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApksOnReset(ILjava/util/Set;)V

    return-void
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x5f

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    move-object v0, p1

    goto :goto_34
.end method

.method private unInstallSystemApplications(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v4, "unInstallSystemApplications"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v2, -0x1

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " in PMS, calling PkgMgr uninstall system apps  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/pm/PackageManagerService;->unInstallSystemApplicationsForPersona(ILjava/io/File;Ljava/util/List;)I

    move-result v2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " removing files for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->removePackageDirectory(ILjava/lang/String;)I

    move-result v4

    if-gez v4, :cond_36

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " failed removing files for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_7d
    return v2
.end method

.method private uninstallKnoxCoreInsideContainer(I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    const/4 v0, 0x1

    :cond_16
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private updateCurrentUserPolicy(I)V
    .registers 5

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateCurrentUserPolicy(I)V

    :cond_12
    return-void
.end method

.method private updateCustomResourcePermission()Z
    .registers 11

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    const-string/jumbo v8, "updateCustomResourcePermission is called...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "/data/container2.0/icon"

    const/16 v0, 0x1fd

    const/4 v6, 0x0

    :try_start_f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_95

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_95

    const/4 v4, 0x0

    :goto_1d
    array-length v7, v3

    if-ge v4, v7, :cond_95

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_77

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " processing file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    const/16 v9, 0x3e8

    invoke-direct {p0, v7, v8, v9, v0}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v6

    aget-object v7, v3, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCustomResourcePermission status - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_77} :catch_7a

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :catch_7a
    move-exception v2

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in updateCustomResourcePermission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    return v6
.end method

.method private updateUserIdsLocked()V
    .registers 15

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_3a

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v12, v12, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v12, :cond_1b

    add-int/lit8 v10, v10, 0x1

    :cond_1b
    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v12, v12, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v12, :cond_37

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v12, v12, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_37

    add-int/lit8 v0, v0, 0x1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3a
    new-array v9, v10, [I

    new-array v1, v0, [I

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_41
    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_90

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-boolean v12, v11, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v12, :cond_60

    add-int/lit8 v8, v7, 0x1

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    aput v12, v9, v7

    move v7, v8

    :cond_60
    iget-boolean v12, v11, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v12, :cond_8d

    iget-boolean v12, v11, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8d

    iget-boolean v12, v11, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    or-int/2addr v4, v12

    add-int/lit8 v6, v5, 0x1

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    aput v12, v1, v5

    iget-boolean v12, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v12, :cond_ad

    const-string/jumbo v12, "sys.knox.bbcid"

    iget-object v13, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move v5, v6

    :cond_8d
    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_90
    iput-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    if-nez v5, :cond_a9

    const-string/jumbo v12, "sys.knox.exists"

    const-string/jumbo v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9d
    if-nez v2, :cond_a8

    const-string/jumbo v12, "sys.knox.bbcid"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    return-void

    :cond_a9
    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/PersonaManagerService;->setKnoxExists([IZ)V

    goto :goto_9d

    :cond_ad
    move v5, v6

    goto :goto_8d
.end method

.method private upgradeContainer(Lcom/samsung/android/knox/SemPersonaInfo;)V
    .registers 26

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upgradeContainer for ContainerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_238

    if-nez v15, :cond_38

    monitor-exit v4

    return-void

    :cond_38
    const/4 v3, 0x1

    :try_start_39
    iput-boolean v3, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upgradeContainer: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; info.upgradeInProgress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v5, v15, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_39 .. :try_end_6f} :catchall_238

    monitor-exit v4

    const/16 v22, -0x1

    :try_start_72
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    const-string/jumbo v4, "no_outgoing_beam"

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-eqz v3, :cond_23b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_98
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-nez v3, :cond_be

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_be

    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.knox.containeragent"

    const-string/jumbo v4, "com.samsung.android.knox.containeragent.switcher.SwitchMainActivity"

    invoke-direct {v11, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v5, v6, v4}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    :cond_be
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderSupported()Z

    move-result v3

    if-eqz v3, :cond_e4

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_c8} :catch_203
    .catchall {:try_start_72 .. :try_end_c8} :catchall_254

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e4

    :try_start_cc
    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.securefolder"

    const-string/jumbo v4, "com.samsung.knox.securefolder.containeragent.ui.settings.KnoxSettingsActivity3"

    invoke-direct {v10, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v10, v5, v6, v4}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cc .. :try_end_e4} :catch_26c
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e4} :catch_203
    .catchall {:try_start_cc .. :try_end_e4} :catchall_254

    :cond_e4
    :goto_e4
    :try_start_e4
    const-string/jumbo v3, "com.sec.knox.packageverifier"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z

    move-result v3

    if-eqz v3, :cond_109

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_109

    const-string/jumbo v3, "com.sec.knox.bluetooth"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V

    :cond_109
    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, "DELETE knox 3.0 unused application start ......"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.knox.switcher"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.sec.knox.shortcutsms"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.sec.knox.containeragent2"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.knox.knoxtrustagent"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.knox.kss"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.sec.knox.knoxecswitcher"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v16

    const-string/jumbo v3, "application_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v9, :cond_272

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.knox.containeragent"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v0, v16

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_17a
    :goto_17a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v21, v0

    const-string/jumbo v3, "com.sec.knox.knoxecswitcher"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v4, 0x40

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1a8

    const/16 v21, 0x0

    :cond_1a8
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upgradeContainer: uninstall updateagent   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17a

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error! (FOTA) Failed to DELETE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_201} :catch_203
    .catchall {:try_start_e4 .. :try_end_201} :catchall_254

    goto/16 :goto_17a

    :catch_203
    move-exception v12

    :try_start_204
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in upgradeContainer API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_221
    .catchall {:try_start_204 .. :try_end_221} :catchall_254

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_234
    .catchall {:try_start_226 .. :try_end_234} :catchall_42b

    if-nez v15, :cond_3d8

    monitor-exit v4

    return-void

    :catchall_238
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_23b
    :try_start_23b
    const-string/jumbo v3, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V

    const-string/jumbo v3, "com.samsung.android.knox.containeragent"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_252} :catch_203
    .catchall {:try_start_23b .. :try_end_252} :catchall_254

    goto/16 :goto_98

    :catchall_254
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_25a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_268
    .catchall {:try_start_25a .. :try_end_268} :catchall_481

    if-nez v15, :cond_42e

    monitor-exit v4

    return-void

    :catch_26c
    move-exception v13

    :try_start_26d
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_e4

    :cond_272
    const-string/jumbo v3, "PersonaManagerService"

    const-string/jumbo v4, "upgradeContainer: ApplicationPolicy obj null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27b
    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mKnoxSecurityTimeMigrationMap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_screen_off_timeout"

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/high16 v6, -0x10000

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/high16 v4, -0x10000

    if-eq v3, v4, :cond_34f

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34f

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_screen_off_timeout"

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const v6, 0x927c0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current securityTimeoutValue is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", stored in personaInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_screen_off_timeout"

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/high16 v6, -0x10000

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_34f
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->removeKnoxAppsinFota(I)V
    :try_end_358
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_358} :catch_203
    .catchall {:try_start_26d .. :try_end_358} :catchall_254

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_35d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_36b
    .catchall {:try_start_35d .. :try_end_36b} :catchall_3d5

    if-nez v15, :cond_36f

    monitor-exit v4

    return-void

    :cond_36f
    const/4 v3, 0x0

    :try_start_370
    iput-boolean v3, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upgradeContainer: resetting upgradeInProgress for ContainerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; info.upgradeInProgress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v5, v15, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3a6
    .catchall {:try_start_370 .. :try_end_3a6} :catchall_3d5

    monitor-exit v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidFromEnterpriseDB(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->checkForKnoxSettingsIconAfterFOTA(II)V

    return-void

    :catchall_3d5
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3d8
    const/4 v3, 0x0

    :try_start_3d9
    iput-boolean v3, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upgradeContainer: resetting upgradeInProgress for ContainerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; info.upgradeInProgress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v5, v15, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_40f
    .catchall {:try_start_3d9 .. :try_end_40f} :catchall_42b

    monitor-exit v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c1

    :catchall_42b
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_42e
    const/4 v5, 0x0

    :try_start_42f
    iput-boolean v5, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "upgradeContainer: resetting upgradeInProgress for ContainerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; info.upgradeInProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v15, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v6, v15, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_465
    .catchall {:try_start_42f .. :try_end_465} :catchall_481

    monitor-exit v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->COMMON_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->SF_SHARE_PKG:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->makeShareDir(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :catchall_481
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_62

    if-eqz p3, :cond_48

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_52

    :cond_48
    const-string/jumbo v12, "PersonaManagerService"

    const-string/jumbo v13, "Empty list passed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_52
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v12

    if-nez v12, :cond_62

    const-string/jumbo v12, "PersonaManagerService"

    const-string/jumbo v13, "Error creating app type file."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_62
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_67} :catch_103

    :try_start_67
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v12, "utf-8"

    invoke-interface {v11, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    if-eqz p3, :cond_fb

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_fb

    const-string/jumbo v12, "appType"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ea

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_ba} :catch_bb

    goto :goto_a5

    :catch_bb
    move-exception v6

    move-object v1, v2

    :goto_bd
    const-string/jumbo v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error writing app type list info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_e9

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_e9
    :goto_e9
    return-void

    :cond_ea
    :try_start_ea
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v11, v13, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "appType"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_fb
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_101} :catch_bb

    move-object v1, v2

    goto :goto_e9

    :catch_103
    move-exception v6

    goto :goto_bd
.end method

.method private writePersonaCacheLocked()V
    .registers 12

    const/4 v4, 0x0

    const-string/jumbo v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUsersWithPersona() is called..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v6, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_11
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v9, "utf-8"

    invoke-interface {v7, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v9, "personacache"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "volatile."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_46

    const-string/jumbo v9, "cache"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "cache"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_79} :catch_7a

    goto :goto_46

    :catch_7a
    move-exception v1

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v9, "PersonaManagerService"

    const-string/jumbo v10, "writePersonaCacheLocked() Error writing persona cache list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return-void

    :cond_88
    :try_start_88
    const-string/jumbo v9, "personacache"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_95} :catch_7a

    goto :goto_87
.end method

.method private zeroOut([B)V
    .registers 4

    const/4 v1, 0x0

    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p1, 0x0

    return-void
.end method


# virtual methods
.method public addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v1, "addAppListForPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez p2, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_23
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .registers 26

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_4c
    .catchall {:try_start_8 .. :try_end_11} :catchall_52

    move-result-object v14

    if-nez v14, :cond_19

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_19
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v12, p7

    invoke-interface/range {v4 .. v12}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_42} :catch_4c
    .catchall {:try_start_19 .. :try_end_42} :catchall_52

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    :goto_46
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_4a
    const/4 v4, 0x0

    goto :goto_46

    :catch_4c
    move-exception v13

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4

    :catchall_52
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .registers 8

    const-string/jumbo v2, "broadcastIntentThroughPersona"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_a
    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastIntentThroughPersona Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2a

    if-nez p1, :cond_56

    :cond_2a
    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastIntentThroughPersona is canceled by mContext = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " or intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_a .. :try_end_51} :catchall_65

    const/4 v2, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_65

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    return v2

    :catchall_65
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearAttributes(II)Z
    .registers 7

    const-string/jumbo v1, "clearAttributes"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2a
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/UserManagerInternal;->clearAttributes(II)Z

    move-result v1

    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_44

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Permission Denial: can\'t dump SemPersonaManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " without permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_50
    const-string/jumbo v9, "Personas:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v9, "  Max support personas: 2"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_5d
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_346

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaInfo;

    if-nez v4, :cond_72

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_72
    const-string/jumbo v9, "  "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8f

    const-string/jumbo v9, " <removing> "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8f
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v9, :cond_99

    const-string/jumbo v9, " <partial>"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_99
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v9, "    Created: "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Flags: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getFlags()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Type: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v9, :cond_e9

    const-string/jumbo v9, "    Partial persona: true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e9
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v9, :cond_f3

    const-string/jumbo v9, "    Remove persona: true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f3
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    if-nez v9, :cond_fd

    const-string/jumbo v9, "    Setup complete: false"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fd
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_107

    const-string/jumbo v9, "    User managed:  true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_107
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v9, :cond_111

    const-string/jumbo v9, "    Sdp minor:  true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_111
    iget v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    if-lez v9, :cond_12e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Authentication Type: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v4, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12e
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v9, :cond_138

    const-string/jumbo v9, "    Light wieght container: true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_138
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    if-eqz v9, :cond_142

    const-string/jumbo v9, "    Reset password: true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_142
    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v9, :cond_14c

    const-string/jumbo v9, "    SDP Enabled: true"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_14c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Can use ext sdcard: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Can use bluetooth : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Security Timeout : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getKnoxSecurityTimeoutValue()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Firmware version: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v9, :cond_310

    const-string/jumbo v9, ""

    :goto_1ac
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Persona Framework version: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v4, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Fota Upgrade version: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v4, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    isFsMounted: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    if-eqz v9, :cond_314

    const-string/jumbo v9, "true"

    :goto_204
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    isKioskModeEnabled: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v9, :cond_319

    const-string/jumbo v9, "true"

    :goto_222
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    resetPersonaOnReboot: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v9, :cond_31e

    const-string/jumbo v9, "true"

    :goto_240
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    SetupWizardApkLocation: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    AdminPackageName: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    AdminUid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    CreatorUid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2e0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    SamsungAccount: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2e0
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_33e

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_33e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_323

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30c
    .catchall {:try_start_50 .. :try_end_30c} :catchall_30d

    goto :goto_2f7

    :catchall_30d
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_310
    :try_start_310
    iget-object v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    goto/16 :goto_1ac

    :cond_314
    const-string/jumbo v9, "false"

    goto/16 :goto_204

    :cond_319
    const-string/jumbo v9, "false"

    goto/16 :goto_222

    :cond_31e
    const-string/jumbo v9, "false"

    goto/16 :goto_240

    :cond_323
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Installed packages list: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_33e
    const-string/jumbo v9, "\n"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_344
    .catchall {:try_start_310 .. :try_end_344} :catchall_30d

    goto/16 :goto_6f

    :cond_346
    monitor-exit v10

    return-void
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 8

    const-string/jumbo v5, "getAdminComponentName"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    move v3, v2

    if-nez v2, :cond_19

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_2d

    move-result v3

    :cond_19
    :goto_19
    if-nez v2, :cond_1d

    if-eqz v3, :cond_32

    :cond_1d
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v5

    return-object v5

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    :cond_32
    const/4 v5, 0x0

    return-object v5
.end method

.method public getAttributes(I)I
    .registers 3

    const-string/jumbo v0, "getAttributes"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getAttributes(I)I

    move-result v0

    return v0
.end method

.method public getContainerAppIcon(I)[B
    .registers 15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v9, -0x1

    if-eq p1, v9, :cond_8

    if-nez p1, :cond_9

    :cond_8
    return-object v1

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v7, 0x0

    :try_start_e
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.android.knox.containeragent"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1a} :catch_87

    move-result-object v7

    iget v9, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    if-ne p1, v9, :cond_83

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "secure_folder_image_name"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Settings.Secure.SECURE_FOLDER_IMAGE_NAME : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_8f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "com.samsung.knox.securefolder:drawable/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_69
    if-eqz v0, :cond_83

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v2, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :cond_83
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_8f
    const-string/jumbo v9, "com.samsung.knox.securefolder:drawable/sf_app_icon"

    invoke-virtual {v7, v9, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69
.end method

.method public getContainerName(I)Ljava/lang/String;
    .registers 15

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    if-eq p1, v10, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v11

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    if-eqz v8, :cond_9d

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v10

    if-eqz v10, :cond_b7

    if-nez v1, :cond_5c

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "secure_folder_name"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Settings.Secure.SECURE_FOLDER_NAME : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5c

    move-object v9, v3

    :cond_5c
    if-nez v9, :cond_99

    const/4 v7, 0x0

    :try_start_5f
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.knox.securefolder"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v10, "com.samsung.knox.securefolder:string/sf_half_app_name"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "securefolder "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_98} :catch_a1

    move-result-object v9

    :cond_99
    :goto_99
    if-nez v9, :cond_9d

    iget-object v9, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :cond_9d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :catch_a1
    move-exception v2

    const-string/jumbo v10, "PersonaManagerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "PersonaManagerService"

    const-string/jumbo v11, "exception returning null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_99

    :cond_b7
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c8

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_99

    :cond_c8
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v10

    if-eqz v10, :cond_d2

    const-string/jumbo v9, "Workspace"

    goto :goto_99

    :cond_d2
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v10

    if-eqz v10, :cond_dc

    const-string/jumbo v9, "Workspace II"

    goto :goto_99

    :cond_dc
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v10

    if-eqz v10, :cond_99

    const-string/jumbo v9, "Workspace"

    goto :goto_99
.end method

.method public getContainerOrder(I)I
    .registers 10

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_23

    const/4 v2, 0x0

    const-string/jumbo v6, "KNOX"

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_27

    const/4 v3, 0x1

    :cond_23
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_27
    const/4 v3, 0x2

    goto :goto_23
.end method

.method public getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultQuickSettings()Ljava/lang/String;
    .registers 12

    :try_start_0
    const-string/jumbo v0, "com.android.systemui"

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.android.systemui"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v8, "quick_settings_tiles_default"

    const-string/jumbo v9, "string"

    const-string/jumbo v10, "com.android.systemui"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    const-string/jumbo v8, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    :cond_31
    const-string/jumbo v2, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,WifiCalling,Dnd,AirplaneMode,Flashlight,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Sync,SFinder,UltraPowerSaving"

    :cond_34
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v7, v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6d

    const-string/jumbo v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loaded tile specs from csc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    :cond_6d
    const-string/jumbo v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Loaded tile specs from config: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_88

    return-object v7

    :catch_88
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v8, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,WifiCalling,Dnd,AirplaneMode,Flashlight,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Sync,SFinder,UltraPowerSaving"

    return-object v8
.end method

.method public getFidoRpContext(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getFidoRpContext"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedLauncherId()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getFocusedUser()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_18

    monitor-exit v0

    return v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getForegroundUser()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getForegroundUser()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getFotaVersion()I
    .registers 6

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "getFotaVersion is called..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string/jumbo v4, "fotaversion"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_40

    move-result v1

    :cond_24
    monitor-exit v3

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "version - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_40
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getKeyguardShowState(I)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyguardShowState of user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    if-ne p1, v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    return v8

    :cond_52
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "getKeyguardShowState() does not exist any showing SecureFolder keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5c
    const/4 v4, -0x1

    if-ne p1, v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_69

    return v8

    :cond_92
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "getKeyguardShowState() does not exist any showing knox keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9c
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    :cond_b9
    return v7
.end method

.method public getKnoxBadge(I)[B
    .registers 16

    const-string/jumbo v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getKnoxBadge userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "custom-badge-icon"

    invoke-static {p1, v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_46

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_2d
    if-eqz v4, :cond_cb

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v1, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11

    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_4a
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080411

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_bd
    .catchall {:try_start_4a .. :try_end_60} :catchall_c6

    move-result-object v4

    :cond_61
    :goto_61
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    :cond_65
    :try_start_65
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x108040c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_61

    :cond_77
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v11

    if-eqz v11, :cond_89

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x108040f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_61

    :cond_89
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v11

    if-eqz v11, :cond_61

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    const/4 v8, 0x0

    const-string/jumbo v11, "ic_sf_badge_bottom"

    const-string/jumbo v12, "drawable"

    invoke-virtual {v5, v11, v12, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_af

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_61

    :cond_af
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10804e7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_bb} :catch_bd
    .catchall {:try_start_65 .. :try_end_bb} :catchall_c6

    move-result-object v4

    goto :goto_61

    :catch_bd
    move-exception v3

    :try_start_be
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c6

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2d

    :catchall_c6
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :cond_cb
    const/4 v11, 0x0

    return-object v11
.end method

.method public getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 14

    const/4 v9, 0x0

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKnoxIcon packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", className = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v3, 0x0

    if-eqz p2, :cond_4e

    :try_start_3b
    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v2, 0x2

    :cond_4e
    :goto_4e
    const-string/jumbo v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    if-ne v2, v6, :cond_aa

    :cond_5a
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconI"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconII"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconIII"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    :cond_7e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSettingsIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    :try_end_81
    .catchall {:try_start_3b .. :try_end_81} :catchall_c2

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_86
    const/4 v2, 0x1

    goto :goto_4e

    :cond_88
    :try_start_88
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    :cond_9a
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B
    :try_end_9d
    .catchall {:try_start_88 .. :try_end_9d} :catchall_c2

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_a2
    :try_start_a2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_c2

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_aa
    :try_start_aa
    const-string/jumbo v6, "com.samsung.knox.securefolder"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b6

    const/4 v6, 0x2

    if-ne v2, v6, :cond_be

    :cond_b6
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_c2

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_be
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :catchall_c2
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getKnoxSettingsCustomName(I)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.knox.containeragent"

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v6, "app_name_settings"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.samsung.android.knox.containeragent"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_58

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_59

    move-result-object v1

    :cond_58
    :goto_58
    return-object v1

    :catch_59
    move-exception v3

    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Exception while accessing custom settings name"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method public getMoveToKnoxMenuList(I)Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const-string/jumbo v17, "PersonaManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getMoveToKnoxMenuList:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0xe6

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v17

    if-nez v17, :cond_2d

    return-object v15

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "emergency_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_49

    return-object v15

    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_5b

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_5c

    :cond_5b
    return-object v15

    :cond_5c
    const/4 v10, 0x0

    if-nez p1, :cond_1c8

    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_61
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_219

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v17

    if-eqz v17, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v17, "com.samsung.knox.securefolder"

    const-string/jumbo v18, "com.samsung.knox.securefolder.switcher.SwitchSfActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a9

    invoke-virtual {v14, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v17

    if-nez v17, :cond_102

    :cond_a9
    const-string/jumbo v17, "PersonaManagerService"

    const-string/jumbo v18, "is secure folder"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "com.sec.knox.moveto.name"

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "com.sec.knox.moveto.containerType"

    const/16 v18, 0x3ea

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v18, "com.sec.knox.moveto.containerId"

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "true"

    :goto_f1
    if-eqz v11, :cond_fe

    const-string/jumbo v17, "com.sec.knox.moveto.isSupportMoveTo"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    :goto_fe
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_61

    :cond_102
    const/4 v11, 0x0

    goto :goto_f1

    :cond_104
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v17

    if-eqz v17, :cond_11e

    const-string/jumbo v17, "PersonaManagerService"

    const-string/jumbo v18, "is BBCContainer"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :cond_11e
    const-string/jumbo v17, "PersonaManagerService"

    const-string/jumbo v18, "is knox"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_144} :catch_275

    move-result-object v16

    :goto_145
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v10, :cond_1c5

    if-eqz v16, :cond_1c5

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v17

    if-eqz v17, :cond_1c5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "move-file-to-container"

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1b3

    const-string/jumbo v7, "true"

    :goto_179
    if-nez v12, :cond_1b7

    const-string/jumbo v18, "com.sec.knox.moveto.name"

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_197
    const-string/jumbo v17, "com.sec.knox.moveto.containerType"

    const/16 v18, 0x3e9

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v17, "com.sec.knox.moveto.containerId"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f1

    :cond_1b3
    const-string/jumbo v7, "false"

    goto :goto_179

    :cond_1b7
    const-string/jumbo v17, "com.sec.knox.moveto.name"

    const-string/jumbo v18, "Workspace"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_197

    :cond_1c5
    const/4 v11, 0x0

    goto/16 :goto_f1

    :cond_1c8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-eqz v17, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_219

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v17

    if-eqz v17, :cond_21a

    const-string/jumbo v17, "com.sec.knox.moveto.name"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "com.sec.knox.moveto.containerType"

    const/16 v18, 0x3eb

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "true"

    :goto_202
    const-string/jumbo v17, "com.sec.knox.moveto.containerId"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v17, "com.sec.knox.moveto.isSupportMoveTo"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_219
    return-object v15

    :cond_21a
    const/16 v16, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22d} :catch_273

    move-result-object v16

    :goto_22e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v17

    if-nez v17, :cond_238

    return-object v15

    :cond_238
    const-string/jumbo v17, "com.sec.knox.moveto.name"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "com.sec.knox.moveto.containerType"

    const/16 v18, 0x3ec

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "move-file-to-owner"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_26f

    const-string/jumbo v7, "true"

    goto :goto_202

    :cond_26f
    const-string/jumbo v7, "false"

    goto :goto_202

    :catch_273
    move-exception v5

    goto :goto_22e

    :catch_275
    move-exception v5

    goto/16 :goto_145
.end method

.method public bridge synthetic getMoveToKnoxMenuList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMoveToKnoxMenuList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMyknoxId()I
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v0, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_37

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_37
    return v5
.end method

.method public getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, "getPersonaCacheValue"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPersonaCacheValue is called for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_34
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_58

    monitor-exit v2

    :cond_3d
    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_58
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-nez v7, :cond_1c

    if-nez p2, :cond_34

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_1c

    :cond_34
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_38

    goto :goto_1c

    :catchall_38
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public getSecureFolderId()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    return v0
.end method

.method public hideMultiWindows(I)V
    .registers 6

    const-string/jumbo v1, "hideMultiWindows"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->hideKnoxMultiwindows(I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_21
    return-void
.end method

.method public hideScrim()V
    .registers 3

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, " hide scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->hideScrim()V

    return-void
.end method

.method public isExternalStorageEnabled(I)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v2, "mum_container_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_18

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_18
    :try_start_18
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_26

    move-result v2

    return v2

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public isFOTAUpgrade()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    return v0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    return v0
.end method

.method public isKnoxWindowExist(III)Z
    .registers 6

    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->isKnoxWindowExist(III)Z

    move-result v1

    return v1
.end method

.method public isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_2c

    move-result v6

    if-nez v6, :cond_2a

    :cond_29
    :goto_29
    return v4

    :cond_2a
    move v4, v5

    goto :goto_29

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public isUserWindowExist(III)Z
    .registers 6

    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->isUserWindowExist(III)Z

    move-result v1

    return v1
.end method

.method public notifyActivityDrawn(IZZLandroid/content/ComponentName;IZ)V
    .registers 17

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput p1, v5, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v5, v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v1, 0x1

    :goto_1f
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6e

    const/4 v3, 0x1

    :goto_36
    if-eqz p5, :cond_3b

    const/4 v6, 0x1

    if-ne p5, v6, :cond_70

    :cond_3b
    if-eqz p2, :cond_6b

    if-eqz v3, :cond_c7

    if-eqz p6, :cond_c7

    if-eqz v1, :cond_91

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_91

    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "remove divider knox badge. Knox is LOCKED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.extra.user_handle"

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_6e
    const/4 v3, 0x0

    goto :goto_36

    :cond_70
    const/4 v6, 0x5

    if-eq p5, v6, :cond_3b

    const/4 v6, 0x3

    if-ne p5, v6, :cond_6b

    if-eqz v3, :cond_fe

    const/4 v4, 0x0

    if-eqz v1, :cond_f2

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    :goto_82
    iput p1, v4, Landroid/os/Message;->arg1:I

    if-eqz p3, :cond_fa

    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->arg2:I

    :goto_89
    iput-object p4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    :cond_91
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send intent to divider knox badge for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "ROTATE_270"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6b

    :cond_c7
    const/4 v4, 0x0

    if-eqz v1, :cond_e6

    iget-boolean v6, p0, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e6

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    :goto_d7
    iput p1, v4, Landroid/os/Message;->arg1:I

    if-eqz p3, :cond_ee

    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->arg2:I

    :goto_de
    iput-object p4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    :cond_e6
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    goto :goto_d7

    :cond_ee
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    goto :goto_de

    :cond_f2
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    goto :goto_82

    :cond_fa
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    goto :goto_89

    :cond_fe
    if-eqz v1, :cond_12a

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_12a

    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "remove divider knox badge. Knox is LOCKED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.extra.user_handle"

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6b

    :cond_12a
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send intent to divider knox badge for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6b
.end method

.method public notifyKeyguardShow(IZ)V
    .registers 10

    const-string/jumbo v4, "notifyKeyguardShow"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyKeyguardShow of user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_73

    const-string/jumbo v4, "container_keyguard"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    :cond_39
    :goto_39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v5, 0xf

    invoke-static {v4, p1, v5, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.keyguard.show"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "isShown"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "personaId"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_73
    if-eqz p2, :cond_7c

    const-string/jumbo v4, "container_kioskmode"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    goto :goto_39

    :cond_7c
    :try_start_7c
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v3

    if-eqz v3, :cond_8a

    invoke-interface {v3, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_94

    :cond_8a
    iget-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    if-nez v4, :cond_94

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isUserBeingRemoved(I)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_94
    const-string/jumbo v4, "container_kioskmode"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_9a} :catch_9b

    goto :goto_39

    :catch_9b
    move-exception v2

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get locked state for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public onDeviceLockedChanged(IZ)V
    .registers 8

    const-string/jumbo v2, "onDeviceLockedChanged"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_5f

    move-result v1

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eq v0, v1, :cond_5e

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "container lock state changed prevLock["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "lockState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_62

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, p1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_55
    :goto_55
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_58
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_8a

    monitor-exit v3

    :cond_5e
    return-void

    :catchall_5f
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_62
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, p1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "container_kioskmode"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    goto :goto_55

    :cond_80
    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "container is unlocked when user is not running. ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catchall_8a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 6

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onfinishedGoingToSleep why = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .registers 5

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewUserCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->onNewUserCreated(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    const-string/jumbo v2, "onWakeLockChange"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "flag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postActiveUserChange(IZZLandroid/content/ComponentName;Landroid/content/IntentSender;ZZ)V
    .registers 22

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput p1, v9, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v9, v12, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz p7, :cond_68

    if-nez p1, :cond_68

    xor-int/lit8 v10, p3, 0x1

    if-eqz v10, :cond_68

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v10

    if-eqz v10, :cond_68

    if-eqz p4, :cond_68

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_68

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.knox.containeragent.switcher.MultiwindowLockActivity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_68

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_68

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v5

    const/16 v10, -0x515

    if-eq v5, v10, :cond_68

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v10

    if-nez v10, :cond_64

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v10

    if-eqz v10, :cond_fb

    :cond_64
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(IZ)V

    :cond_68
    :goto_68
    if-eqz p7, :cond_d5

    if-nez v3, :cond_74

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-nez v10, :cond_74

    if-eqz p3, :cond_d5

    :cond_74
    if-eqz v3, :cond_a5

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v6

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isUserBeingRemoved(I)Z

    move-result v10

    if-nez v10, :cond_a5

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a5

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a5

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a5

    move p1, v6

    :cond_a5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "android.intent.extra.user_handle"

    invoke-virtual {v2, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_c2

    const-string/jumbo v10, "android.intent.extra.INTENT"

    move-object/from16 v0, p5

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c2
    const-string/jumbo v10, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    move/from16 v0, p3

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v10, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    move/from16 v0, p6

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->handleNotifyActivityDrawn(Landroid/os/Bundle;)V

    :cond_d5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_103

    const/4 v4, 0x1

    :goto_dc
    if-nez p6, :cond_fa

    if-eqz p2, :cond_fa

    const/4 v8, 0x0

    if-eqz v4, :cond_105

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    :goto_ea
    iput p1, v8, Landroid/os/Message;->arg1:I

    if-eqz p3, :cond_10d

    const/4 v10, 0x1

    iput v10, v8, Landroid/os/Message;->arg2:I

    :goto_f1
    move-object/from16 v0, p4

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_fa
    return-void

    :cond_fb
    if-nez v3, :cond_68

    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(IZ)V

    goto/16 :goto_68

    :cond_103
    const/4 v4, 0x0

    goto :goto_dc

    :cond_105
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    goto :goto_ea

    :cond_10d
    const/4 v10, 0x0

    iput v10, v8, Landroid/os/Message;->arg2:I

    goto :goto_f1
.end method

.method public refreshLockTimer(I)V
    .registers 3

    const-string/jumbo v0, "refreshLockTimer"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutReset(I)V

    :cond_f
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3

    const-string/jumbo v0, "registerSystemPersonaObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->register(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public removeKnoxAppsinFota(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    :cond_17
    return-void
.end method

.method public resetPersonaPassword(ILjava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string/jumbo v0, "sendProxyMessage"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendProxyMessage() name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_37

    const-string/jumbo v0, "null"

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_37
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public sendRequestKeyStatus(I)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.knox.containeragent.klms.licensekey.check"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.klmsagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setAttributes(II)Z
    .registers 7

    const-string/jumbo v1, "setAttributes"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2a
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/UserManagerInternal;->setAttributes(II)Z

    move-result v1

    return v1
.end method

.method public setFidoRpContext(ILjava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "setFidoRpContext"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/SemPersonaInfo;->setFidoRpContext(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "setFidoRpContext\'s personaInfo == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setFocusedLauncherId(I)V
    .registers 6

    const-string/jumbo v0, "setFocusedLauncherId"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusedUser: Focus changed - current uesr id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_29

    monitor-exit v1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFocusedUser(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current focused persona service handled id set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setKnoxWindowState(II)V
    .registers 6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_13

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 6

    const-string/jumbo v1, "setPackageSettingInstalled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9

    return v4

    :cond_9
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_16

    return v4

    :cond_16
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_28
    const/4 v4, 0x1

    return v4

    :cond_2a
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3b

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing(I)Z

    move-result v4

    return v4

    :cond_3b
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    const-string/jumbo v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DeviceLocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", DeviceSecure : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_73

    :goto_72
    return v2

    :cond_73
    move v2, v4

    goto :goto_72
.end method

.method public showKeyguard(II)V
    .registers 8

    const-string/jumbo v2, "showKeyguard"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showKeyguard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "KnoxKeyguardEventFlag"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.securefolder"

    const-string/jumbo v4, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_51
    :try_start_51
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_59} :catch_69

    :goto_59
    return-void

    :cond_5a
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.knox.containeragent"

    const-string/jumbo v4, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_51

    :catch_69
    move-exception v0

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "Failed to start confirm credential intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method public showScrim(Z)V
    .registers 4

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, " show scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->showScrim(Z)V

    return-void
.end method

.method public showScrimWithoutFreeze(Z)V
    .registers 4

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, " show scrim without freeze screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->showScrimWithoutFreeze(Z)V

    return-void
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "startActivityThroughPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityThroughPersona Intent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_27

    if-nez p1, :cond_28

    :cond_27
    return v4

    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2d} :catch_2f

    const/4 v1, 0x1

    return v1

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v4
.end method

.method public systemReady()V
    .registers 18

    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Lcom/android/server/pm/PersonaServiceProxy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PersonaServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    new-instance v13, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.DEVICE_OWNER_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_f4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    const-class v3, Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_105} :catch_1fe

    :goto_105
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.intent.action.IRIS_RESET"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.IRIS_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mIrisReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/KnoxTimeoutHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mTimeoutHandler:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->registerContentObserver()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "knoxid.reset_on_reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_204

    const/4 v11, -0x1

    :goto_188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19d

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_19d

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/pm/PersonaManagerService;->mayResetOnRebootforCOM(I)V

    :cond_19d
    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardScrimView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1e9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_217

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "Device compromise detected !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "setting compromise attribute failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e9
    :goto_1e9
    const-string/jumbo v1, "com.sec.knox.bluetooth"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    const-string/jumbo v1, "com.samsung.android.bbc.fileprovider"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    return-void

    :catch_1fe
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_105

    :cond_204
    const-string/jumbo v1, "knoxid.reset_on_reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_188

    :cond_217
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-eqz v1, :cond_1e9

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "Device is super locked - start lock screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e9
.end method

.method public updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v1, "updatePersonaCache"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePersonaCache is called for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a2

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_38
    const-string/jumbo v1, "fwversion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string/jumbo v1, "fotaversion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_bd

    move-result v1

    if-eqz v1, :cond_4c

    :cond_4a
    monitor-exit v2

    return v4

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    if-nez p2, :cond_65

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v3, "Remove cache entry request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_65
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    if-eqz p2, :cond_7e

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v3, "Add cache entry request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_7e
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    if-eqz p2, :cond_9c

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v3, "update cache entry request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_9c
    if-eqz v0, :cond_a1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V
    :try_end_a1
    .catchall {:try_start_4c .. :try_end_a1} :catchall_bd

    :cond_a1
    monitor-exit v2

    :cond_a2
    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePersonaCache status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_bd
    move-exception v1

    monitor-exit v2

    throw v1
.end method
